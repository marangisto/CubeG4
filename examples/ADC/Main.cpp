#include <stdlib.h>
#include <usart.h>
#include <redirect.h>
#include <cstring>

using hal::sys_tick;
using namespace hal::gpio;
using namespace hal::usart;

typedef usart_t<2, PA2, PA3> serial;
typedef output_t<PA5> ld4;

void loop();

template<> void handler<interrupt::USART2>()
{
    ld4::toggle();
    serial::isr();
}

extern "C" int ll_main();
extern "C" uint16_t runConversion();

int main()
{
    ld4::setup();
    serial::setup<230400>();
    hal::nvic<interrupt::USART2>::enable();
    interrupt::enable();

    stdio_t::bind<serial>();
    printf("Welcome to the STM32G431!\n");

    ll_main();

    for (;;)
        loop();
}

void loop()
{
    char buf[256];

    printf("> \n");
    if (fgets(buf, sizeof(buf), stdin))
    {
        uint16_t x = runConversion();

        buf[strcspn(buf, "\r\n")] = 0;
        printf("got = '%s' and %d\n", buf, x);
    }
}


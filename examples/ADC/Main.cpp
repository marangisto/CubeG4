#include <stdlib.h>
#include <usart.h>
#include <adc.h>
#include <redirect.h>
#include <cstring>

using hal::sys_tick;
using namespace hal::gpio;
using namespace hal::usart;
using namespace hal::adc;

typedef usart_t<2, PA2, PA3> serial;
typedef output_t<PA5> ld4;
typedef adc_t adc;

void loop();

template<> void handler<interrupt::USART2>()
{
    ld4::toggle();
    serial::isr();
}

extern "C" int ll_main();

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
        adc::start_conversion();
        while (!adc::end_of_conversion());
        uint16_t y = adc::read();

        printf("adc = %d\n", y);
    }
}


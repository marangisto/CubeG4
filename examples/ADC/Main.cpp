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
typedef output_t<PA10> d2;
typedef analog_t<PA0> ain;
typedef adc_t adc;

void loop();

template<> void handler<interrupt::USART2>()
{
    ld4::toggle();
    serial::isr();
}

extern "C" int ll_main();
extern "C" void minimal_init();

int main()
{
    ld4::setup();
    ain::setup();
    d2::setup();
    serial::setup<230400>();
    hal::nvic<interrupt::USART2>::enable();
    interrupt::enable();

    stdio_t::bind<serial>();
    printf("Welcome to the STM32G431!\n");

    adc::setup();
    minimal_init();

    for (;;)
        loop();
}

void loop()
{
    char buf[256];

    printf("> \n");
    if (fgets(buf, sizeof(buf), stdin))
    {
        d2::toggle();
        adc::start_conversion();
        while (!adc::end_of_conversion());
        d2::toggle();
        uint16_t y = adc::read();

        printf("adc = %d\n", y);
    }
}


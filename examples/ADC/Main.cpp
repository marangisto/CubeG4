#include <stdlib.h>
#include <cstring>
#include <usart.h>
#include <redirect.h>
#include <adc.h>

using hal::sys_tick;
using hal::sys_clock;
using namespace hal::gpio;
using namespace hal::usart;
using namespace hal::adc;

typedef usart_t<2, PA2, PA3> serial;
typedef output_t<PA5> ld4;
typedef output_t<PA10> d2;
typedef analog_t<PA0> ain;
typedef adc_t<1> adc;

void loop();

template<> void handler<interrupt::USART2>()
{
    ld4::toggle();
    serial::isr();
}

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

    d2::toggle();
    sys_clock::delay_us(10);
    d2::toggle();
    adc::setup();

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


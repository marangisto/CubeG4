#include <stdlib.h>
#include <usart.h>
#include <dac.h>
#include <redirect.h>
#include <cstring>

using hal::sys_tick;
using hal::sys_clock;
using namespace hal::gpio;
using namespace hal::usart;
using namespace hal::dac;

typedef usart_t<2, PA2, PA3> serial;
typedef output_t<PA5> ld4;
typedef output_t<PA10> d2;
typedef analog_t<PA0> ain;
typedef dac_t dac;

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

    dac::setup();

    for (;;)
        loop();
}

void loop()
{
    char buf[256];
    static uint16_t x = 0;

    printf("> \n");
    if (fgets(buf, sizeof(buf), stdin))
    {
        buf[strcspn(buf, "\r\n")] = 0;

        if (*buf)
            x = atoi(buf);

        printf("dac = %d\n", x);

        d2::toggle();
        dac::write<0>(x);
        sys_clock::delay_us(100);
        d2::toggle();
    }
}


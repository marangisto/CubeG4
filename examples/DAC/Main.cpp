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
typedef output_t<PA10> d2;
typedef dac_t<1> dac;

void loop();

template<> void handler<interrupt::USART2>()
{
    serial::isr();
}

int main()
{
    d2::setup();
    serial::setup<230400>();
    hal::nvic<interrupt::USART2>::enable();
    interrupt::enable();

    stdio_t::bind<serial>();
    printf("Welcome to the STM32G431!\n");

    dac::setup();
    dac::enable<1>();
    dac::enable<2>();

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
        dac::write<1>(x);
        dac::trigger<1>();
        dac::write<2>(4095 - x);
        dac::trigger<2>();
        sys_clock::delay_us(100);
        d2::toggle();
    }
}


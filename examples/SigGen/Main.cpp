#include <stdlib.h>
#include <usart.h>
#include <timer.h>
#include <dac.h>
#include <dma.h>
#include <redirect.h>
#include <cstring>

using hal::sys_tick;
using hal::sys_clock;
using namespace hal::gpio;
using namespace hal::usart;
using namespace hal::timer;
using namespace hal::dac;
using namespace hal::dma;

typedef usart_t<2, PA2, PA3> serial;
typedef output_t<PA5> led;
typedef output_t<PA10> d2;
typedef hal::timer::timer_t<2> tim2;
typedef hal::timer::timer_t<6> tim6;
typedef dac_t<1> dac;
typedef dma_t<1> dma;

extern "C" void aux_main()
{
    sys_clock::copy_system_core_clock();
    serial::setup<230400>();
    stdio_t::bind<serial>();
    hal::nvic<interrupt::USART2>::enable();

    printf("Welcome to the STM32G431!\n");

    led::setup();
    dma::setup();
    dac::setup();
    dac::setup<1, 4, 7>();

    tim2::setup(149, 999);
    tim2::master_mode<tim2::mm_update>();

    tim6::setup(0, 2499);
    tim6::master_mode<tim6::mm_update>();

    // initial operation
 
    dac::setup();
    dac::setup<1, 4, 7>();
    dac::enable_wave<1, 0, 0x444>();
    dac::enable<1>();
}

extern "C" void wave_change(int sine, uint16_t *p, uint16_t nel)
{
    tim2::disable();
    tim6::disable();

    if (sine)
    {
        dac::disable<1>();
        dac::setup();
        dac::enable_trigger<1, 7>();
        dac::enable_dma<1, dma, 1, uint16_t>(p, nel);
    }
    else
    {
        dac::disable_dma<1, dma, 1>();
        dac::setup();
        dac::setup<1, 4, 7>();
        dac::enable_wave<1, 0, 0x444>();
        dac::enable<1>();
    }

    tim2::enable();
    tim6::enable();
}


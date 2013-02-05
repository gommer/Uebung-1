# -*- ruby encoding: utf-8 -*-
#############################################################
# This file was automatically generated on 2013-01-27.      #
#                                                           #
# Bindings Version 2.0.2                                    #
#                                                           #
# If you have a bugfix for this file and want to commit it, #
# please fix the bug in the generator. You can find a link  #
# to the generator git on tinkerforge.com                   #
#############################################################

module Tinkerforge
  # Device for controlling up to 16 general purpose input/output pins
  class BrickletIO16 < Device
    DEVICE_IDENTIFIER = 28 # :nodoc:

    # This callback is triggered whenever a change of the voltage level is detected
    # on pins where the interrupt was activated with BrickletIO16#set_port_interrupt.
    # 
    # The values are the port, a bitmask that specifies which interrupts occurred
    # and the current value bitmask of the port.
    # 
    # For example:
    # 
    # * ("a", 1, 1) means that on port a an interrupt on pin 0 occurred and
    #   currently pin 0 is high and pins 1-7 are low.
    # * ("b", 128, 254) means that on port b interrupts on pins 0 and 7
    #   occurred and currently pin 0 is low and pins 1-7 are high.
    CALLBACK_INTERRUPT = 9

    # This callback is triggered whenever a monoflop timer reaches 0. The
    # parameters contain the port, the involved pins and the current value of
    # the pins (the value after the monoflop).
    # 
    # .. versionadded:: 1.1.2~(Plugin)
    CALLBACK_MONOFLOP_DONE = 12

    FUNCTION_SET_PORT = 1 # :nodoc:
    FUNCTION_GET_PORT = 2 # :nodoc:
    FUNCTION_SET_PORT_CONFIGURATION = 3 # :nodoc:
    FUNCTION_GET_PORT_CONFIGURATION = 4 # :nodoc:
    FUNCTION_SET_DEBOUNCE_PERIOD = 5 # :nodoc:
    FUNCTION_GET_DEBOUNCE_PERIOD = 6 # :nodoc:
    FUNCTION_SET_PORT_INTERRUPT = 7 # :nodoc:
    FUNCTION_GET_PORT_INTERRUPT = 8 # :nodoc:
    FUNCTION_SET_PORT_MONOFLOP = 10 # :nodoc:
    FUNCTION_GET_PORT_MONOFLOP = 11 # :nodoc:
    FUNCTION_SET_SELECTED_VALUES = 13 # :nodoc:
    FUNCTION_GET_IDENTITY = 255 # :nodoc:

    DIRECTION_IN = 'i' # :nodoc:
    DIRECTION_OUT = 'o' # :nodoc:

    # Creates an object with the unique device ID <tt>uid</tt> and adds it to
    # the IP Connection <tt>ipcon</tt>.
    def initialize(uid, ipcon)
      super uid, ipcon

      @api_version = [2, 0, 0]

      @response_expected[FUNCTION_SET_PORT] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_PORT] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_PORT_CONFIGURATION] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_PORT_CONFIGURATION] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_DEBOUNCE_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_DEBOUNCE_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_PORT_INTERRUPT] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_PORT_INTERRUPT] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[CALLBACK_INTERRUPT] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[FUNCTION_SET_PORT_MONOFLOP] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_PORT_MONOFLOP] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[CALLBACK_MONOFLOP_DONE] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[FUNCTION_SET_SELECTED_VALUES] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_IDENTITY] = RESPONSE_EXPECTED_ALWAYS_TRUE

      @callback_formats[CALLBACK_INTERRUPT] = 'k C C'
      @callback_formats[CALLBACK_MONOFLOP_DONE] = 'k C C'
    end

    # Sets the output value (high or low) for a port ("a" or "b") with a bitmask.
    # The bitmask is 8 bit long, *true* refers to high and *false* refers to low.
    # 
    # For example: The value 0b00001111 will turn the pins 0-3 high and the
    # pins 4-7 low for the specified port.
    # 
    # .. note::
    #  This function does nothing for pins that are configured as input.
    #  Pull-up resistors can be switched on with BrickletIO16#set_port_configuration.
    def set_port(port, value_mask)
      send_request(FUNCTION_SET_PORT, [port, value_mask], 'k C', 0, '')
    end

    # Returns a bitmask of the values that are currently measured on the
    # specified port. This function works if the pin is configured to input
    # as well as if it is configured to output.
    def get_port(port)
      send_request(FUNCTION_GET_PORT, [port], 'k', 1, 'C')
    end

    # Configures the value and direction of a specified port. Possible directions
    # are "i" and "o" for input and output.
    # 
    # If the direction is configured as output, the value is either high or low
    # (set as *true* or *false*).
    # 
    # If the direction is configured as input, the value is either pull-up or
    # default (set as *true* or *false*).
    # 
    # For example:
    # 
    # * ("a", 0xFF, 'i', true) will set all pins of port a as input pull-up.
    # * ("a", 128, 'i', false) will set pin 7 of port a as input default (floating if nothing is connected).
    # * ("b", 3, 'o', false) will set pins 0 and 1 of port b as output low.
    # * ("b", 4, 'o', true) will set pin 2 of port b as output high.
    def set_port_configuration(port, selection_mask, direction, value)
      send_request(FUNCTION_SET_PORT_CONFIGURATION, [port, selection_mask, direction, value], 'k C k ?', 0, '')
    end

    # Returns a direction bitmask and a value bitmask for the specified port.
    # 
    # For example: A return value of 0b00001111 and 0b00110011 for
    # direction and value means that:
    # 
    # * pins 0 and 1 are configured as input pull-up,
    # * pins 2 and 3 are configured as input default,
    # * pins 4 and 5 are configured as output high
    # * and pins 6 and 7 are configured as output low.
    def get_port_configuration(port)
      send_request(FUNCTION_GET_PORT_CONFIGURATION, [port], 'k', 2, 'C C')
    end

    # Sets the debounce period of the CALLBACK_INTERRUPT callback in ms.
    # 
    # For example: If you set this value to 100, you will get the interrupt
    # maximal every 100ms. This is necessary if something that bounces is
    # connected to the IO-16 Bricklet, such as a button.
    # 
    # The default value is 100.
    def set_debounce_period(debounce)
      send_request(FUNCTION_SET_DEBOUNCE_PERIOD, [debounce], 'L', 0, '')
    end

    # Returns the debounce period as set by BrickletIO16#set_debounce_period.
    def get_debounce_period
      send_request(FUNCTION_GET_DEBOUNCE_PERIOD, [], '', 4, 'L')
    end

    # Sets the pins on which an interrupt is activated with a bitmask.
    # Interrupts are triggered on changes of the voltage level of the pin,
    # i.e. changes from high to low and low to high.
    # 
    # For example: ('a', 129) will enable the interrupt for pins 0 and 7 of
    # port a.
    # 
    # The interrupt is delivered with the callback CALLBACK_INTERRUPT.
    def set_port_interrupt(port, interrupt_mask)
      send_request(FUNCTION_SET_PORT_INTERRUPT, [port, interrupt_mask], 'k C', 0, '')
    end

    # Returns the interrupt bitmask for the specified port as set by
    # BrickletIO16#set_port_interrupt.
    def get_port_interrupt(port)
      send_request(FUNCTION_GET_PORT_INTERRUPT, [port], 'k', 1, 'C')
    end

    # Configures a monoflop of the pins specified by the second parameter as 8 bit
    # long bitmask. The specified pins must be configured for output. Non-output
    # pins will be ignored.
    # 
    # The third parameter is a bitmask with the desired value of the specified
    # output pins (*true* means high and *false* means low).
    # 
    # The forth parameter indicates the time (in ms) that the pins should hold
    # the value.
    # 
    # If this function is called with the parameters ('a', (1 << 0) | (1 << 3), (1 << 0), 1500):
    # Pin 0 will get high and pin 3 will get low on port 'a'. In 1.5s pin 0 will get
    # low and pin 3 will get high again.
    # 
    # A monoflop can be used as a fail-safe mechanism. For example: Lets assume you
    # have a RS485 bus and an IO-16 Bricklet connected to one of the slave
    # stacks. You can now call this function every second, with a time parameter
    # of two seconds and pin 0 set to high. Pin 0 will be high all the time. If now
    # the RS485 connection is lost, then pin 0 will get low in at most two seconds.
    # 
    # .. versionadded:: 1.1.2~(Plugin)
    def set_port_monoflop(port, selection_mask, value_mask, time)
      send_request(FUNCTION_SET_PORT_MONOFLOP, [port, selection_mask, value_mask, time], 'k C C L', 0, '')
    end

    # Returns (for the given pin) the current value and the time as set by
    # BrickletIO16#set_port_monoflop as well as the remaining time until the value flips.
    # 
    # If the timer is not running currently, the remaining time will be returned
    # as 0.
    # 
    # .. versionadded:: 1.1.2~(Plugin)
    def get_port_monoflop(port, pin)
      send_request(FUNCTION_GET_PORT_MONOFLOP, [port, pin], 'k C', 9, 'C L L')
    end

    # Sets the output value (high or low) for a port ("a" or "b" with a bitmask, 
    # according to the selction mask. The bitmask is 4 bit long, *true* refers 
    # to high and *false* refers to low.
    # 
    # For example: The values 0b11000000, 0b10000000 will turn pin 7 high and
    # pin 6 low, pins 0-6 will remain untouched.
    # 
    # .. note::
    #  This function does nothing for pins that are configured as input.
    #  Pull-up resistors can be switched on with :func:`SetConfiguration`.
    # 
    # .. versionadded:: 2.0.0~(Plugin)
    def set_selected_values(port, selection_mask, value_mask)
      send_request(FUNCTION_SET_SELECTED_VALUES, [port, selection_mask, value_mask], 'k C C', 0, '')
    end

    # Returns the UID, the UID where the Bricklet is connected to, 
    # the position, the hardware and firmware version as well as the
    # device identifier.
    # 
    # The position can be 'a', 'b', 'c' or 'd'.
    # 
    # The device identifiers can be found :ref:`here <device_identifier>`.
    # 
    # .. versionadded:: 2.0.0~(Plugin)
    def get_identity
      send_request(FUNCTION_GET_IDENTITY, [], '', 25, 'Z8 Z8 k C3 C3 S')
    end

    # Registers a callback with ID <tt>id</tt> to the block <tt>block</tt>.
    def register_callback(id, &block)
      callback = block
      @registered_callbacks[id] = callback
    end
  end
end

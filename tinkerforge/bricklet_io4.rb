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
  # Device for controlling up to 4 general purpose input/output pins
  class BrickletIO4 < Device
    DEVICE_IDENTIFIER = 29 # :nodoc:

    # This callback is triggered whenever a change of the voltage level is detected
    # on pins where the interrupt was activated with BrickletIO4#set_interrupt.
    # 
    # The values are a bitmask that specifies which interrupts occurred
    # and the current value bitmask.
    # 
    # For example:
    # 
    # * (1, 1) means that an interrupt on pin 0 occurred and
    #   currently pin 0 is high and pins 1-3 are low.
    # * (9, 14) means that interrupts on pins 0 and 3
    #   occurred and currently pin 0 is low and pins 1-3 are high.
    CALLBACK_INTERRUPT = 9

    # This callback is triggered whenever a monoflop timer reaches 0. The
    # parameters contain the involved pins and the current value of the pins
    # (the value after the monoflop).
    # 
    # .. versionadded:: 1.1.1~(Plugin)
    CALLBACK_MONOFLOP_DONE = 12

    FUNCTION_SET_VALUE = 1 # :nodoc:
    FUNCTION_GET_VALUE = 2 # :nodoc:
    FUNCTION_SET_CONFIGURATION = 3 # :nodoc:
    FUNCTION_GET_CONFIGURATION = 4 # :nodoc:
    FUNCTION_SET_DEBOUNCE_PERIOD = 5 # :nodoc:
    FUNCTION_GET_DEBOUNCE_PERIOD = 6 # :nodoc:
    FUNCTION_SET_INTERRUPT = 7 # :nodoc:
    FUNCTION_GET_INTERRUPT = 8 # :nodoc:
    FUNCTION_SET_MONOFLOP = 10 # :nodoc:
    FUNCTION_GET_MONOFLOP = 11 # :nodoc:
    FUNCTION_SET_SELECTED_VALUES = 13 # :nodoc:
    FUNCTION_GET_IDENTITY = 255 # :nodoc:

    DIRECTION_IN = 'i' # :nodoc:
    DIRECTION_OUT = 'o' # :nodoc:

    # Creates an object with the unique device ID <tt>uid</tt> and adds it to
    # the IP Connection <tt>ipcon</tt>.
    def initialize(uid, ipcon)
      super uid, ipcon

      @api_version = [2, 0, 0]

      @response_expected[FUNCTION_SET_VALUE] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_VALUE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_CONFIGURATION] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_CONFIGURATION] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_DEBOUNCE_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_DEBOUNCE_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_INTERRUPT] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_INTERRUPT] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[CALLBACK_INTERRUPT] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[FUNCTION_SET_MONOFLOP] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_MONOFLOP] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[CALLBACK_MONOFLOP_DONE] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[FUNCTION_SET_SELECTED_VALUES] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_IDENTITY] = RESPONSE_EXPECTED_ALWAYS_TRUE

      @callback_formats[CALLBACK_INTERRUPT] = 'C C'
      @callback_formats[CALLBACK_MONOFLOP_DONE] = 'C C'
    end

    # Sets the output value (high or low) with a bitmask. The bitmask
    # is 4 bit long, *true* refers to high and *false* refers to low.
    # 
    # For example: The value 0b0011 will turn the pins 0-1 high and the
    # pins 2-3 low.
    # 
    # .. note::
    #  This function does nothing for pins that are configured as input.
    #  Pull-up resistors can be switched on with BrickletIO4#set_configuration.
    def set_value(value_mask)
      send_request(FUNCTION_SET_VALUE, [value_mask], 'C', 0, '')
    end

    # Returns a bitmask of the values that are currently measured.
    # This function works if the pin is configured to input
    # as well as if it is configured to output.
    def get_value
      send_request(FUNCTION_GET_VALUE, [], '', 1, 'C')
    end

    # Configures the value and direction of the specified pins. Possible directions
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
    # * (15, 'i', true) will set all pins of as input pull-up.
    # * (8, 'i', false) will set pin 3 of as input default (floating if nothing is connected).
    # * (3, 'o', false) will set pins 0 and 1 as output low.
    # * (4, 'o', true) will set pin 2 of as output high.
    def set_configuration(selection_mask, direction, value)
      send_request(FUNCTION_SET_CONFIGURATION, [selection_mask, direction, value], 'C k ?', 0, '')
    end

    # Returns a value bitmask and a direction bitmask.
    # 
    # For example: A return value of 0b0011 and 0b0101 for
    # direction and value means that:
    # 
    # * pin 0 is configured as input pull-up,
    # * pin 1 is configured as input default,
    # * pin 2 is configured as output high
    # * and pin 3 is are configured as output low.
    def get_configuration
      send_request(FUNCTION_GET_CONFIGURATION, [], '', 2, 'C C')
    end

    # Sets the debounce period of the CALLBACK_INTERRUPT callback in ms.
    # 
    # For example: If you set this value to 100, you will get the interrupt
    # maximal every 100ms. This is necessary if something that bounces is
    # connected to the IO-4 Bricklet, such as a button.
    # 
    # The default value is 100.
    def set_debounce_period(debounce)
      send_request(FUNCTION_SET_DEBOUNCE_PERIOD, [debounce], 'L', 0, '')
    end

    # Returns the debounce period as set by BrickletIO4#set_debounce_period.
    def get_debounce_period
      send_request(FUNCTION_GET_DEBOUNCE_PERIOD, [], '', 4, 'L')
    end

    # Sets the pins on which an interrupt is activated with a bitmask.
    # Interrupts are triggered on changes of the voltage level of the pin,
    # i.e. changes from high to low and low to high.
    # 
    # For example: An interrupt bitmask of 9 will enable the interrupt for
    # pins 0 and 3.
    # 
    # The interrupt is delivered with the callback CALLBACK_INTERRUPT.
    def set_interrupt(interrupt_mask)
      send_request(FUNCTION_SET_INTERRUPT, [interrupt_mask], 'C', 0, '')
    end

    # Returns the interrupt bitmask as set by BrickletIO4#set_interrupt.
    def get_interrupt
      send_request(FUNCTION_GET_INTERRUPT, [], '', 1, 'C')
    end

    # Configures a monoflop of the pins specified by the first parameter as 4 bit
    # long bitmask. The specified pins must be configured for output. Non-output
    # pins will be ignored.
    # 
    # The second parameter is a bitmask with the desired value of the specified
    # output pins (*true* means high and *false* means low).
    # 
    # The third parameter indicates the time (in ms) that the pins should hold
    # the value.
    # 
    # If this function is called with the parameters ((1 << 0) | (1 << 3), (1 << 0), 1500):
    # Pin 0 will get high and pin 3 will get low. In 1.5s pin 0 will get low and pin
    # 3 will get high again.
    # 
    # A monoflop can be used as a fail-safe mechanism. For example: Lets assume you
    # have a RS485 bus and an IO-4 Bricklet connected to one of the slave
    # stacks. You can now call this function every second, with a time parameter
    # of two seconds and pin 0 set to high. Pin 0 will be high all the time. If now
    # the RS485 connection is lost, then pin 0 will get low in at most two seconds.
    # 
    # .. versionadded:: 1.1.1~(Plugin)
    def set_monoflop(selection_mask, value_mask, time)
      send_request(FUNCTION_SET_MONOFLOP, [selection_mask, value_mask, time], 'C C L', 0, '')
    end

    # Returns (for the given pin) the current value and the time as set by
    # BrickletIO4#set_monoflop as well as the remaining time until the value flips.
    # 
    # If the timer is not running currently, the remaining time will be returned
    # as 0.
    # 
    # .. versionadded:: 1.1.1~(Plugin)
    def get_monoflop(pin)
      send_request(FUNCTION_GET_MONOFLOP, [pin], 'C', 9, 'C L L')
    end

    # Sets the output value (high or low) with a bitmask, according to
    # the selction mask. The bitmask is 4 bit long, *true* refers to high 
    # and *false* refers to low.
    # 
    # For example: The values 0b0110, 0b0011 will turn pin 2 high and
    # pin 1 low, pin 0 and 3 will remain untouched.
    # 
    # .. note::
    #  This function does nothing for pins that are configured as input.
    #  Pull-up resistors can be switched on with BrickletIO4#set_configuration.
    # 
    # .. versionadded:: 2.0.0~(Plugin)
    def set_selected_values(selection_mask, value_mask)
      send_request(FUNCTION_SET_SELECTED_VALUES, [selection_mask, value_mask], 'C C', 0, '')
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

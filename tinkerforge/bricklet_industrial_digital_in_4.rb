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
  # Device for controlling up to 4 optically coupled digital inputs
  class BrickletIndustrialDigitalIn4 < Device
    DEVICE_IDENTIFIER = 223 # :nodoc:

    # This callback is triggered whenever a change of the voltage level is detected
    # on pins where the interrupt was activated with BrickletIndustrialDigitalIn4#set_interrupt.
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

    FUNCTION_GET_VALUE = 1 # :nodoc:
    FUNCTION_SET_GROUP = 2 # :nodoc:
    FUNCTION_GET_GROUP = 3 # :nodoc:
    FUNCTION_GET_AVAILABLE_FOR_GROUP = 4 # :nodoc:
    FUNCTION_SET_DEBOUNCE_PERIOD = 5 # :nodoc:
    FUNCTION_GET_DEBOUNCE_PERIOD = 6 # :nodoc:
    FUNCTION_SET_INTERRUPT = 7 # :nodoc:
    FUNCTION_GET_INTERRUPT = 8 # :nodoc:
    FUNCTION_GET_IDENTITY = 255 # :nodoc:


    # Creates an object with the unique device ID <tt>uid</tt> and adds it to
    # the IP Connection <tt>ipcon</tt>.
    def initialize(uid, ipcon)
      super uid, ipcon

      @api_version = [2, 0, 0]

      @response_expected[FUNCTION_GET_VALUE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_GROUP] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_GROUP] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_AVAILABLE_FOR_GROUP] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_DEBOUNCE_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_DEBOUNCE_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_INTERRUPT] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_INTERRUPT] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[CALLBACK_INTERRUPT] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[FUNCTION_GET_IDENTITY] = RESPONSE_EXPECTED_ALWAYS_TRUE

      @callback_formats[CALLBACK_INTERRUPT] = 'S S'
    end

    # Returns the input value with a bitmask. The bitmask
    # is 16 bit long, *true* refers to high and *false* refers to 
    # low.
    # 
    # For example: The value 0b0000000000000011 means that pins 0-1 
    # are high and the other pins are low.
    # 
    # If no groups are used (see BrickletIndustrialDigitalIn4#set_group), the pins correspond to the
    # markings on the Digital In 4 Bricklet.
    # 
    # If groups are used, the pins correspond to the element in the group.
    # Element 1 in the group will get pins 0-3, element 2 pins 4-7, element 3
    # pins 8-11 and element 4 pins 12-15.
    def get_value
      send_request(FUNCTION_GET_VALUE, [], '', 2, 'S')
    end

    # Sets a group of Digital In 4 Bricklets that should work together. You can
    # find Bricklets that can be grouped together with BrickletIndustrialDigitalIn4#get_available_for_group.
    # 
    # The group consists of 4 elements. Element 1 in the group will get pins 0-3,
    # element 2 pins 4-7, element 3 pins 8-11 and element 4 pins 12-15.
    # 
    # Each element can either be one of the ports ('a' to 'd') or 'n' if it should
    # not be used.
    # 
    # For example: If you have two Digital In 4 Bricklets connected to port A and
    # port B respectively, you could call with "['a', 'b', 'n', 'n']".
    # 
    # Now the pins on the Digital In 4 on port A are assigned to 0-3 and the
    # pins on the Digital In 4 on port B are assigned to 4-7. It is now possible
    # to call BrickletIndustrialDigitalIn4#get_value and read out two Bricklets at the same time.
    def set_group(group)
      send_request(FUNCTION_SET_GROUP, [group], 'k4', 0, '')
    end

    # Returns the group as set by BrickletIndustrialDigitalIn4#set_group
    def get_group
      send_request(FUNCTION_GET_GROUP, [], '', 4, 'k4')
    end

    # Returns a bitmask of ports that are available for grouping. For example the
    # value 0b0101 means: Port *A* and Port *C* are connected to Bricklets that
    # can be grouped together.
    def get_available_for_group
      send_request(FUNCTION_GET_AVAILABLE_FOR_GROUP, [], '', 1, 'C')
    end

    # Sets the debounce period of the CALLBACK_INTERRUPT callback in ms.
    # 
    # For example: If you set this value to 100, you will get the interrupt
    # maximal every 100ms. This is necessary if something that bounces is
    # connected to the Digital In 4 Bricklet, such as a button.
    # 
    # The default value is 100.
    def set_debounce_period(debounce)
      send_request(FUNCTION_SET_DEBOUNCE_PERIOD, [debounce], 'L', 0, '')
    end

    # Returns the debounce period as set by BrickletIndustrialDigitalIn4#set_debounce_period.
    def get_debounce_period
      send_request(FUNCTION_GET_DEBOUNCE_PERIOD, [], '', 4, 'L')
    end

    # Sets the pins on which an interrupt is activated with a bitmask.
    # Interrupts are triggered on changes of the voltage level of the pin,
    # i.e. changes from high to low and low to high.
    # 
    # For example: An interrupt bitmask of 9 (0b0000000000001001) will 
    # enable the interrupt for pins 0 and 3.
    # 
    # The interrupts use the grouping as set by BrickletIndustrialDigitalIn4#set_group.
    # 
    # The interrupt is delivered with the callback CALLBACK_INTERRUPT.
    def set_interrupt(interrupt_mask)
      send_request(FUNCTION_SET_INTERRUPT, [interrupt_mask], 'S', 0, '')
    end

    # Returns the interrupt bitmask as set by BrickletIndustrialDigitalIn4#set_interrupt.
    def get_interrupt
      send_request(FUNCTION_GET_INTERRUPT, [], '', 2, 'S')
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

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
  # Device for controlling up to 4 Solid State Relays
  class BrickletIndustrialQuadRelay < Device
    DEVICE_IDENTIFIER = 225 # :nodoc:

    # This callback is triggered whenever a monoflop timer reaches 0. The
    # parameters contain the involved pins and the current value of the pins
    # (the value after the monoflop).
    CALLBACK_MONOFLOP_DONE = 8

    FUNCTION_SET_VALUE = 1 # :nodoc:
    FUNCTION_GET_VALUE = 2 # :nodoc:
    FUNCTION_SET_MONOFLOP = 3 # :nodoc:
    FUNCTION_GET_MONOFLOP = 4 # :nodoc:
    FUNCTION_SET_GROUP = 5 # :nodoc:
    FUNCTION_GET_GROUP = 6 # :nodoc:
    FUNCTION_GET_AVAILABLE_FOR_GROUP = 7 # :nodoc:
    FUNCTION_SET_SELECTED_VALUES = 9 # :nodoc:
    FUNCTION_GET_IDENTITY = 255 # :nodoc:


    # Creates an object with the unique device ID <tt>uid</tt> and adds it to
    # the IP Connection <tt>ipcon</tt>.
    def initialize(uid, ipcon)
      super uid, ipcon

      @api_version = [2, 0, 0]

      @response_expected[FUNCTION_SET_VALUE] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_VALUE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_MONOFLOP] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_MONOFLOP] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_GROUP] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_GROUP] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_AVAILABLE_FOR_GROUP] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[CALLBACK_MONOFLOP_DONE] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[FUNCTION_SET_SELECTED_VALUES] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_IDENTITY] = RESPONSE_EXPECTED_ALWAYS_TRUE

      @callback_formats[CALLBACK_MONOFLOP_DONE] = 'S S'
    end

    # Sets the output value with a bitmask. The bitmask
    # is 16 bit long, *true* refers to a closed relay and *false* refers to 
    # an open relay.
    # 
    # For example: The value 0b0000000000000011 will close the relay 
    # of pins 0-1 and open the other pins.
    # 
    # If no groups are used (see BrickletIndustrialQuadRelay#set_group), the pins correspond to the
    # markings on the Quad Relay Bricklet.
    # 
    # If groups are used, the pins correspond to the element in the group.
    # Element 1 in the group will get pins 0-3, element 2 pins 4-7, element 3
    # pins 8-11 and element 4 pins 12-15.
    def set_value(value_mask)
      send_request(FUNCTION_SET_VALUE, [value_mask], 'S', 0, '')
    end

    # Returns the bitmask as set by BrickletIndustrialQuadRelay#set_value.
    def get_value
      send_request(FUNCTION_GET_VALUE, [], '', 2, 'S')
    end

    # Configures a monoflop of the pins specified by the first parameter
    # bitmask.
    # 
    # The second parameter is a bitmask with the desired value of the specified
    # pins (*true* means relay closed and *false* means relay open).
    # 
    # The third parameter indicates the time (in ms) that the pins should hold
    # the value.
    # 
    # If this function is called with the parameters 
    # ((1 << 0) | (1 << 3), (1 << 0), 1500):
    # Pin 0 will close and pin 3 will open. In 1.5s pin 0 will open and pin
    # 3 will close again.
    # 
    # A monoflop can be used as a fail-safe mechanism. For example: Lets assume you
    # have a RS485 bus and a Quad Relay Bricklet connected to one of the slave
    # stacks. You can now call this function every second, with a time parameter
    # of two seconds and pin 0 closed. Pin 0 will be closed all the time. If now
    # the RS485 connection is lost, then pin 0 will be opened in at most two seconds.
    def set_monoflop(selection_mask, value_mask, time)
      send_request(FUNCTION_SET_MONOFLOP, [selection_mask, value_mask, time], 'S S L', 0, '')
    end

    # Returns (for the given pin) the current value and the time as set by
    # BrickletIndustrialQuadRelay#set_monoflop as well as the remaining time until the value flips.
    # 
    # If the timer is not running currently, the remaining time will be returned
    # as 0.
    def get_monoflop(pin)
      send_request(FUNCTION_GET_MONOFLOP, [pin], 'C', 10, 'S L L')
    end

    # Sets a group of Quad Relay Bricklets that should work together. You can
    # find Bricklets that can be grouped together with BrickletIndustrialQuadRelay#get_available_for_group.
    # 
    # The group consists of 4 elements. Element 1 in the group will get pins 0-3,
    # element 2 pins 4-7, element 3 pins 8-11 and element 4 pins 12-15.
    # 
    # Each element can either be one of the ports ('a' to 'd') or 'n' if it should
    # not be used.
    # 
    # For example: If you have two Quad Relay Bricklets connected to port A and
    # port B respectively, you could call with "['a', 'b', 'n', 'n']".
    # 
    # Now the pins on the Quad Relay on port A are assigned to 0-3 and the
    # pins on the Quad Relay on port B are assigned to 4-7. It is now possible
    # to call BrickletIndustrialQuadRelay#set_value and control two Bricklets at the same time.
    def set_group(group)
      send_request(FUNCTION_SET_GROUP, [group], 'k4', 0, '')
    end

    # Returns the group as set by BrickletIndustrialQuadRelay#set_group
    def get_group
      send_request(FUNCTION_GET_GROUP, [], '', 4, 'k4')
    end

    # Returns a bitmask of ports that are available for grouping. For example the
    # value 0b0101 means: Port *A* and Port *C* are connected to Bricklets that
    # can be grouped together.
    def get_available_for_group
      send_request(FUNCTION_GET_AVAILABLE_FOR_GROUP, [], '', 1, 'C')
    end

    # Sets the output value with a bitmask, according to the selction mask. 
    # The bitmask is 16 bit long, *true* refers to a closed relay and 
    # *false* refers to an open relay.
    # 
    # For example: The values 00b0000000000000011, b0000000000000001 will close 
    # the relay of pin 0, open the relay of pin 1 and leave the others untouched.
    # 
    # If no groups are used (see BrickletIndustrialQuadRelay#set_group), the pins correspond to the
    # markings on the Quad Relay Bricklet.
    # 
    # If groups are used, the pins correspond to the element in the group.
    # Element 1 in the group will get pins 0-3, element 2 pins 4-7, element 3
    # pins 8-11 and element 4 pins 12-15.
    # 
    # .. versionadded:: 2.0.0~(Plugin)
    def set_selected_values(selection_mask, value_mask)
      send_request(FUNCTION_SET_SELECTED_VALUES, [selection_mask, value_mask], 'S S', 0, '')
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

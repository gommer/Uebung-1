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
  # Device for controlling two relays
  class BrickletDualRelay < Device
    DEVICE_IDENTIFIER = 26 # :nodoc:

    # This callback is triggered whenever a monoflop timer reaches 0. The 
    # parameter contain the relay (1 or 2) and the current state of the relay 
    # (the state after the monoflop).
    # 
    # .. versionadded:: 1.1.1~(Plugin)
    CALLBACK_MONOFLOP_DONE = 5

    FUNCTION_SET_STATE = 1 # :nodoc:
    FUNCTION_GET_STATE = 2 # :nodoc:
    FUNCTION_SET_MONOFLOP = 3 # :nodoc:
    FUNCTION_GET_MONOFLOP = 4 # :nodoc:
    FUNCTION_SET_SELECTED_STATE = 6 # :nodoc:
    FUNCTION_GET_IDENTITY = 255 # :nodoc:


    # Creates an object with the unique device ID <tt>uid</tt> and adds it to
    # the IP Connection <tt>ipcon</tt>.
    def initialize(uid, ipcon)
      super uid, ipcon

      @api_version = [2, 0, 0]

      @response_expected[FUNCTION_SET_STATE] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_STATE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_MONOFLOP] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_MONOFLOP] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[CALLBACK_MONOFLOP_DONE] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[FUNCTION_SET_SELECTED_STATE] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_IDENTITY] = RESPONSE_EXPECTED_ALWAYS_TRUE

      @callback_formats[CALLBACK_MONOFLOP_DONE] = 'C ?'
    end

    # Sets the state of the relays, *true* means on and *false* means off. 
    # For example: (true, false) turns relay 1 on and relay 2 off.
    # 
    # If you just want to set one of the relays and don't know the current state
    # of the other relay, you can get the state with BrickletDualRelay#get_state or you
    # can use BrickletDualRelay#set_selected_state.
    # 
    # Running monoflop timers will be overwritten if this function is called.
    # 
    # The default value is (*false*, *false*).
    def set_state(relay1, relay2)
      send_request(FUNCTION_SET_STATE, [relay1, relay2], '? ?', 0, '')
    end

    # Returns the state of the relays, *true* means on and *false* means off.
    def get_state
      send_request(FUNCTION_GET_STATE, [], '', 2, '? ?')
    end

    # The first parameter can be 1 or 2 (relay 1 or relay 2). The second parameter 
    # is the desired state of the relay (*true* means on and *false* means off).
    # The third parameter indicates the time (in ms) that the relay should hold 
    # the state.
    # 
    # If this function is called with the parameters (1, true, 1500):
    # Relay 1 will turn on and in 1.5s it will turn off again.
    # 
    # A monoflop can be used as a failsafe mechanism. For example: Lets assume you 
    # have a RS485 bus and a Dual Relay Bricklet connected to one of the slave 
    # stacks. You can now call this function every second, with a time parameter
    # of two seconds. The relay will be on all the time. If now the RS485 
    # connection is lost, the relay will turn off in at most two seconds.
    # 
    # .. versionadded:: 1.1.1~(Plugin)
    def set_monoflop(relay, state, time)
      send_request(FUNCTION_SET_MONOFLOP, [relay, state, time], 'C ? L', 0, '')
    end

    # Returns (for the given relay) the current state and the time as set by 
    # BrickletDualRelay#set_monoflop as well as the remaining time until the state flips.
    # 
    # If the timer is not running currently, the remaining time will be returned
    # as 0.
    # 
    # .. versionadded:: 1.1.1~(Plugin)
    def get_monoflop(relay)
      send_request(FUNCTION_GET_MONOFLOP, [relay], 'C', 9, '? L L')
    end

    # Sets the state of the selected relay (1 or 2), *true* means on and *false* means off. 
    # 
    # The other relay remains untouched.
    # 
    # .. versionadded:: 2.0.0~(Plugin)
    def set_selected_state(relay, state)
      send_request(FUNCTION_SET_SELECTED_STATE, [relay, state], 'C ?', 0, '')
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

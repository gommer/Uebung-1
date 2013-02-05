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
  # Device for output of voltage between 0 and 5V
  class BrickletAnalogOut < Device
    DEVICE_IDENTIFIER = 220 # :nodoc:

    FUNCTION_SET_VOLTAGE = 1 # :nodoc:
    FUNCTION_GET_VOLTAGE = 2 # :nodoc:
    FUNCTION_SET_MODE = 3 # :nodoc:
    FUNCTION_GET_MODE = 4 # :nodoc:
    FUNCTION_GET_IDENTITY = 255 # :nodoc:

    MODE_ANALOG_VALUE = 0 # :nodoc:
    MODE_1K_TO_GROUND = 1 # :nodoc:
    MODE_100K_TO_GROUND = 2 # :nodoc:
    MODE_500K_TO_GROUND = 3 # :nodoc:

    # Creates an object with the unique device ID <tt>uid</tt> and adds it to
    # the IP Connection <tt>ipcon</tt>.
    def initialize(uid, ipcon)
      super uid, ipcon

      @api_version = [2, 0, 0]

      @response_expected[FUNCTION_SET_VOLTAGE] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_VOLTAGE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_MODE] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_MODE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_IDENTITY] = RESPONSE_EXPECTED_ALWAYS_TRUE

    end

    # Sets the voltage in mV. The possible range is 0V to 5V (0-5000).
    # Calling this function will set the mode to 0 (see BrickletAnalogOut#set_mode).
    # 
    # The default value is 0 (with mode 1).
    def set_voltage(voltage)
      send_request(FUNCTION_SET_VOLTAGE, [voltage], 'S', 0, '')
    end

    # Returns the voltage as set by BrickletAnalogOut#set_voltage.
    def get_voltage
      send_request(FUNCTION_GET_VOLTAGE, [], '', 2, 'S')
    end

    # Sets the mode of the analog value. Possible modes:
    # 
    # * 0: Normal Mode (Analog value as set by BrickletAnalogOut#set_voltage is applied)
    # * 1: 1k Ohm resistor to ground
    # * 2: 100k Ohm resistor to ground
    # * 3: 500k Ohm resistor to ground
    # 
    # Setting the mode to 0 will result in an output voltage of 0. You can jump
    # to a higher output voltage directly by calling BrickletAnalogOut#set_voltage.
    # 
    # The default mode is 1.
    def set_mode(mode)
      send_request(FUNCTION_SET_MODE, [mode], 'C', 0, '')
    end

    # Returns the mode as set by BrickletAnalogOut#set_mode.
    def get_mode
      send_request(FUNCTION_GET_MODE, [], '', 1, 'C')
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

  end
end

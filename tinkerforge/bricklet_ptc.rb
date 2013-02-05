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
  # Device for reading temperatures from Pt100 or Pt1000 sensors
  class BrickletPTC < Device
    DEVICE_IDENTIFIER = 226 # :nodoc:

    # This callback is triggered periodically with the period that is set by
    # BrickletPTC#set_temperature_callback_period. The parameter is the temperature
    # of the sensor.
    # 
    # CALLBACK_TEMPERATURE is only triggered if the temperature has changed since the
    # last triggering.
    CALLBACK_TEMPERATURE = 8

    # This callback is triggered when the threshold as set by
    # BrickletPTC#set_temperature_callback_threshold is reached.
    # The parameter is the temperature of the sensor.
    # 
    # If the threshold keeps being reached, the callback is triggered periodically
    # with the period as set by BrickletPTC#set_debounce_period.
    CALLBACK_TEMPERATURE_REACHED = 9

    FUNCTION_GET_TEMPERATURE = 1 # :nodoc:
    FUNCTION_SET_TEMPERATURE_CALLBACK_PERIOD = 2 # :nodoc:
    FUNCTION_GET_TEMPERATURE_CALLBACK_PERIOD = 3 # :nodoc:
    FUNCTION_SET_TEMPERATURE_CALLBACK_THRESHOLD = 4 # :nodoc:
    FUNCTION_GET_TEMPERATURE_CALLBACK_THRESHOLD = 5 # :nodoc:
    FUNCTION_SET_DEBOUNCE_PERIOD = 6 # :nodoc:
    FUNCTION_GET_DEBOUNCE_PERIOD = 7 # :nodoc:
    FUNCTION_GET_IDENTITY = 255 # :nodoc:

    THRESHOLD_OPTION_OFF = 'x' # :nodoc:
    THRESHOLD_OPTION_OUTSIDE = 'o' # :nodoc:
    THRESHOLD_OPTION_INSIDE = 'i' # :nodoc:
    THRESHOLD_OPTION_SMALLER = '<' # :nodoc:
    THRESHOLD_OPTION_GREATER = '>' # :nodoc:

    # Creates an object with the unique device ID <tt>uid</tt> and adds it to
    # the IP Connection <tt>ipcon</tt>.
    def initialize(uid, ipcon)
      super uid, ipcon

      @api_version = [2, 0, 0]

      @response_expected[FUNCTION_GET_TEMPERATURE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_TEMPERATURE_CALLBACK_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_TEMPERATURE_CALLBACK_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_TEMPERATURE_CALLBACK_THRESHOLD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_TEMPERATURE_CALLBACK_THRESHOLD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_DEBOUNCE_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_DEBOUNCE_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[CALLBACK_TEMPERATURE] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_TEMPERATURE_REACHED] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[FUNCTION_GET_IDENTITY] = RESPONSE_EXPECTED_ALWAYS_TRUE

      @callback_formats[CALLBACK_TEMPERATURE] = 'l'
      @callback_formats[CALLBACK_TEMPERATURE_REACHED] = 'l'
    end

    # TODO
    # 
    # If you want to get the temperature periodically, it is recommended 
    # to use the callback CALLBACK_TEMPERATURE and set the period with 
    # BrickletPTC#set_temperature_callback_period.
    def get_temperature
      send_request(FUNCTION_GET_TEMPERATURE, [], '', 4, 'l')
    end

    # Sets the period in ms with which the CALLBACK_TEMPERATURE callback is triggered
    # periodically. A value of 0 turns the callback off.
    # 
    # CALLBACK_TEMPERATURE is only triggered if the temperature has changed since the
    # last triggering.
    # 
    # The default value is 0.
    def set_temperature_callback_period(period)
      send_request(FUNCTION_SET_TEMPERATURE_CALLBACK_PERIOD, [period], 'L', 0, '')
    end

    # Returns the period as set by BrickletPTC#set_temperature_callback_period.
    def get_temperature_callback_period
      send_request(FUNCTION_GET_TEMPERATURE_CALLBACK_PERIOD, [], '', 4, 'L')
    end

    # Sets the thresholds for the CALLBACK_TEMPERATURE_REACHED callback. 
    # 
    # The following options are possible:
    # 
    #  "Option", "Description"
    # 
    #  "'x'",    "Callback is turned off"
    #  "'o'",    "Callback is triggered when the temperature is *outside* the min and max values"
    #  "'i'",    "Callback is triggered when the temperature is *inside* the min and max values"
    #  "'<'",    "Callback is triggered when the temperature is smaller than the min value (max is ignored)"
    #  "'>'",    "Callback is triggered when the temperature is greater than the min value (max is ignored)"
    # 
    # The default value is ('x', 0, 0).
    def set_temperature_callback_threshold(option, min, max)
      send_request(FUNCTION_SET_TEMPERATURE_CALLBACK_THRESHOLD, [option, min, max], 'k l l', 0, '')
    end

    # Returns the threshold as set by BrickletPTC#set_temperature_callback_threshold.
    def get_temperature_callback_threshold
      send_request(FUNCTION_GET_TEMPERATURE_CALLBACK_THRESHOLD, [], '', 9, 'k l l')
    end

    # Sets the period in ms with which the threshold callback
    # 
    #  CALLBACK_TEMPERATURE_REACHED
    # 
    # is triggered, if the threshold
    # 
    #  BrickletPTC#set_temperature_callback_threshold
    # 
    # keeps being reached.
    # 
    # The default value is 100.
    def set_debounce_period(debounce)
      send_request(FUNCTION_SET_DEBOUNCE_PERIOD, [debounce], 'L', 0, '')
    end

    # Returns the debounce period as set by BrickletPTC#set_debounce_period.
    def get_debounce_period
      send_request(FUNCTION_GET_DEBOUNCE_PERIOD, [], '', 4, 'L')
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

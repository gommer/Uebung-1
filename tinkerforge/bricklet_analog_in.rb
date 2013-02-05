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
  # Device for sensing Voltages between 0 and 45V
  class BrickletAnalogIn < Device
    DEVICE_IDENTIFIER = 219 # :nodoc:

    # This callback is triggered periodically with the period that is set by
    # BrickletAnalogIn#set_voltage_callback_period. The parameter is the voltage of the
    # sensor.
    # 
    # CALLBACK_VOLTAGE is only triggered if the voltage has changed since the
    # last triggering.
    CALLBACK_VOLTAGE = 13

    # This callback is triggered periodically with the period that is set by
    # BrickletAnalogIn#set_analog_value_callback_period. The parameter is the analog value of the
    # sensor.
    # 
    # CALLBACK_ANALOG_VALUE is only triggered if the voltage has changed since the
    # last triggering.
    CALLBACK_ANALOG_VALUE = 14

    # This callback is triggered when the threshold as set by
    # BrickletAnalogIn#set_voltage_callback_threshold is reached.
    # The parameter is the voltage of the sensor.
    # 
    # If the threshold keeps being reached, the callback is triggered periodically
    # with the period as set by BrickletAnalogIn#set_debounce_period.
    CALLBACK_VOLTAGE_REACHED = 15

    # This callback is triggered when the threshold as set by
    # BrickletAnalogIn#set_analog_value_callback_threshold is reached.
    # The parameter is the analog value of the sensor.
    # 
    # If the threshold keeps being reached, the callback is triggered periodically
    # with the period as set by BrickletAnalogIn#set_debounce_period.
    CALLBACK_ANALOG_VALUE_REACHED = 16

    FUNCTION_GET_VOLTAGE = 1 # :nodoc:
    FUNCTION_GET_ANALOG_VALUE = 2 # :nodoc:
    FUNCTION_SET_VOLTAGE_CALLBACK_PERIOD = 3 # :nodoc:
    FUNCTION_GET_VOLTAGE_CALLBACK_PERIOD = 4 # :nodoc:
    FUNCTION_SET_ANALOG_VALUE_CALLBACK_PERIOD = 5 # :nodoc:
    FUNCTION_GET_ANALOG_VALUE_CALLBACK_PERIOD = 6 # :nodoc:
    FUNCTION_SET_VOLTAGE_CALLBACK_THRESHOLD = 7 # :nodoc:
    FUNCTION_GET_VOLTAGE_CALLBACK_THRESHOLD = 8 # :nodoc:
    FUNCTION_SET_ANALOG_VALUE_CALLBACK_THRESHOLD = 9 # :nodoc:
    FUNCTION_GET_ANALOG_VALUE_CALLBACK_THRESHOLD = 10 # :nodoc:
    FUNCTION_SET_DEBOUNCE_PERIOD = 11 # :nodoc:
    FUNCTION_GET_DEBOUNCE_PERIOD = 12 # :nodoc:
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

      @response_expected[FUNCTION_GET_VOLTAGE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_ANALOG_VALUE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_VOLTAGE_CALLBACK_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_VOLTAGE_CALLBACK_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_ANALOG_VALUE_CALLBACK_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_ANALOG_VALUE_CALLBACK_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_VOLTAGE_CALLBACK_THRESHOLD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_VOLTAGE_CALLBACK_THRESHOLD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_ANALOG_VALUE_CALLBACK_THRESHOLD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_ANALOG_VALUE_CALLBACK_THRESHOLD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_DEBOUNCE_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_DEBOUNCE_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[CALLBACK_VOLTAGE] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_ANALOG_VALUE] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_VOLTAGE_REACHED] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_ANALOG_VALUE_REACHED] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[FUNCTION_GET_IDENTITY] = RESPONSE_EXPECTED_ALWAYS_TRUE

      @callback_formats[CALLBACK_VOLTAGE] = 'S'
      @callback_formats[CALLBACK_ANALOG_VALUE] = 'S'
      @callback_formats[CALLBACK_VOLTAGE_REACHED] = 'S'
      @callback_formats[CALLBACK_ANALOG_VALUE_REACHED] = 'S'
    end

    # Returns the voltage of the sensor. The value is in mV and
    # between 0V and 45V. The resolution between 0 and 6V is about 2mV.
    # Between 6 and 45V the resolution is about 10mV.
    # 
    # If you want to get the voltage periodically, it is recommended to use the
    # callback CALLBACK_VOLTAGE and set the period with 
    # BrickletAnalogIn#set_voltage_callback_period.
    def get_voltage
      send_request(FUNCTION_GET_VOLTAGE, [], '', 2, 'S')
    end

    # Returns the value as read by a 12-bit analog-to-digital converter.
    # The value is between 0 and 4095.
    # 
    # .. note::
    #  The value returned by BrickletAnalogIn#get_voltage is averaged over several samples
    #  to yield less noise, while BrickletAnalogIn#get_analog_value gives back raw
    #  unfiltered analog values. The only reason to use BrickletAnalogIn#get_analog_value is,
    #  if you need the full resolution of the analog-to-digital converter.
    # 
    # If you want the analog value periodically, it is recommended to use the 
    # callback CALLBACK_ANALOG_VALUE and set the period with 
    # BrickletAnalogIn#set_analog_value_callback_period.
    def get_analog_value
      send_request(FUNCTION_GET_ANALOG_VALUE, [], '', 2, 'S')
    end

    # Sets the period in ms with which the CALLBACK_VOLTAGE callback is triggered
    # periodically. A value of 0 turns the callback off.
    # 
    # CALLBACK_VOLTAGE is only triggered if the voltage has changed since the
    # last triggering.
    # 
    # The default value is 0.
    def set_voltage_callback_period(period)
      send_request(FUNCTION_SET_VOLTAGE_CALLBACK_PERIOD, [period], 'L', 0, '')
    end

    # Returns the period as set by BrickletAnalogIn#set_voltage_callback_period.
    def get_voltage_callback_period
      send_request(FUNCTION_GET_VOLTAGE_CALLBACK_PERIOD, [], '', 4, 'L')
    end

    # Sets the period in ms with which the CALLBACK_ANALOG_VALUE callback is triggered
    # periodically. A value of 0 turns the callback off.
    # 
    # CALLBACK_ANALOG_VALUE is only triggered if the analog value has changed since the
    # last triggering.
    # 
    # The default value is 0.
    def set_analog_value_callback_period(period)
      send_request(FUNCTION_SET_ANALOG_VALUE_CALLBACK_PERIOD, [period], 'L', 0, '')
    end

    # Returns the period as set by BrickletAnalogIn#set_analog_value_callback_period.
    def get_analog_value_callback_period
      send_request(FUNCTION_GET_ANALOG_VALUE_CALLBACK_PERIOD, [], '', 4, 'L')
    end

    # Sets the thresholds for the CALLBACK_VOLTAGE_REACHED callback. 
    # 
    # The following options are possible:
    # 
    #  "Option", "Description"
    # 
    #  "'x'",    "Callback is turned off"
    #  "'o'",    "Callback is triggered when the voltage is *outside* the min and max values"
    #  "'i'",    "Callback is triggered when the voltage is *inside* the min and max values"
    #  "'<'",    "Callback is triggered when the voltage is smaller than the min value (max is ignored)"
    #  "'>'",    "Callback is triggered when the voltage is greater than the min value (max is ignored)"
    # 
    # The default value is ('x', 0, 0).
    def set_voltage_callback_threshold(option, min, max)
      send_request(FUNCTION_SET_VOLTAGE_CALLBACK_THRESHOLD, [option, min, max], 'k s s', 0, '')
    end

    # Returns the threshold as set by BrickletAnalogIn#set_voltage_callback_threshold.
    def get_voltage_callback_threshold
      send_request(FUNCTION_GET_VOLTAGE_CALLBACK_THRESHOLD, [], '', 5, 'k s s')
    end

    # Sets the thresholds for the CALLBACK_ANALOG_VALUE_REACHED callback. 
    # 
    # The following options are possible:
    # 
    #  "Option", "Description"
    # 
    #  "'x'",    "Callback is turned off"
    #  "'o'",    "Callback is triggered when the analog value is *outside* the min and max values"
    #  "'i'",    "Callback is triggered when the analog value is *inside* the min and max values"
    #  "'<'",    "Callback is triggered when the analog value is smaller than the min value (max is ignored)"
    #  "'>'",    "Callback is triggered when the analog value is greater than the min value (max is ignored)"
    # 
    # The default value is ('x', 0, 0).
    def set_analog_value_callback_threshold(option, min, max)
      send_request(FUNCTION_SET_ANALOG_VALUE_CALLBACK_THRESHOLD, [option, min, max], 'k S S', 0, '')
    end

    # Returns the threshold as set by BrickletAnalogIn#set_analog_value_callback_threshold.
    def get_analog_value_callback_threshold
      send_request(FUNCTION_GET_ANALOG_VALUE_CALLBACK_THRESHOLD, [], '', 5, 'k S S')
    end

    # Sets the period in ms with which the threshold callbacks
    # 
    #  CALLBACK_VOLTAGE_REACHED, CALLBACK_ANALOG_VALUE_REACHED
    # 
    # are triggered, if the thresholds
    # 
    #  BrickletAnalogIn#set_voltage_callback_threshold, BrickletAnalogIn#set_analog_value_callback_threshold
    # 
    # keep being reached.
    # 
    # The default value is 100.
    def set_debounce_period(debounce)
      send_request(FUNCTION_SET_DEBOUNCE_PERIOD, [debounce], 'L', 0, '')
    end

    # Returns the debounce period as set by BrickletAnalogIn#set_debounce_period.
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

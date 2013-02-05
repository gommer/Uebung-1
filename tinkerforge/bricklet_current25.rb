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
  # Device for sensing current of up to 25A
  class BrickletCurrent25 < Device
    DEVICE_IDENTIFIER = 24 # :nodoc:

    # This callback is triggered periodically with the period that is set by
    # BrickletCurrent25#set_current_callback_period. The parameter is the current of the
    # sensor.
    # 
    # CALLBACK_CURRENT is only triggered if the current has changed since the
    # last triggering.
    CALLBACK_CURRENT = 15

    # This callback is triggered periodically with the period that is set by
    # BrickletCurrent25#set_analog_value_callback_period. The parameter is the analog value of the
    # sensor.
    # 
    # CALLBACK_ANALOG_VALUE is only triggered if the current has changed since the
    # last triggering.
    CALLBACK_ANALOG_VALUE = 16

    # This callback is triggered when the threshold as set by
    # BrickletCurrent25#set_current_callback_threshold is reached.
    # The parameter is the current of the sensor.
    # 
    # If the threshold keeps being reached, the callback is triggered periodically
    # with the period as set by BrickletCurrent25#set_debounce_period.
    CALLBACK_CURRENT_REACHED = 17

    # This callback is triggered when the threshold as set by
    # BrickletCurrent25#set_analog_value_callback_threshold is reached.
    # The parameter is the analog value of the sensor.
    # 
    # If the threshold keeps being reached, the callback is triggered periodically
    # with the period as set by BrickletCurrent25#set_debounce_period.
    CALLBACK_ANALOG_VALUE_REACHED = 18

    # This callback is triggered when an over current is measured
    # (see BrickletCurrent25#is_over_current).
    CALLBACK_OVER_CURRENT = 19

    FUNCTION_GET_CURRENT = 1 # :nodoc:
    FUNCTION_CALIBRATE = 2 # :nodoc:
    FUNCTION_IS_OVER_CURRENT = 3 # :nodoc:
    FUNCTION_GET_ANALOG_VALUE = 4 # :nodoc:
    FUNCTION_SET_CURRENT_CALLBACK_PERIOD = 5 # :nodoc:
    FUNCTION_GET_CURRENT_CALLBACK_PERIOD = 6 # :nodoc:
    FUNCTION_SET_ANALOG_VALUE_CALLBACK_PERIOD = 7 # :nodoc:
    FUNCTION_GET_ANALOG_VALUE_CALLBACK_PERIOD = 8 # :nodoc:
    FUNCTION_SET_CURRENT_CALLBACK_THRESHOLD = 9 # :nodoc:
    FUNCTION_GET_CURRENT_CALLBACK_THRESHOLD = 10 # :nodoc:
    FUNCTION_SET_ANALOG_VALUE_CALLBACK_THRESHOLD = 11 # :nodoc:
    FUNCTION_GET_ANALOG_VALUE_CALLBACK_THRESHOLD = 12 # :nodoc:
    FUNCTION_SET_DEBOUNCE_PERIOD = 13 # :nodoc:
    FUNCTION_GET_DEBOUNCE_PERIOD = 14 # :nodoc:
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

      @response_expected[FUNCTION_GET_CURRENT] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_CALIBRATE] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_IS_OVER_CURRENT] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_ANALOG_VALUE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_CURRENT_CALLBACK_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_CURRENT_CALLBACK_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_ANALOG_VALUE_CALLBACK_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_ANALOG_VALUE_CALLBACK_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_CURRENT_CALLBACK_THRESHOLD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_CURRENT_CALLBACK_THRESHOLD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_ANALOG_VALUE_CALLBACK_THRESHOLD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_ANALOG_VALUE_CALLBACK_THRESHOLD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_DEBOUNCE_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_DEBOUNCE_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[CALLBACK_CURRENT] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_ANALOG_VALUE] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_CURRENT_REACHED] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_ANALOG_VALUE_REACHED] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_OVER_CURRENT] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[FUNCTION_GET_IDENTITY] = RESPONSE_EXPECTED_ALWAYS_TRUE

      @callback_formats[CALLBACK_CURRENT] = 's'
      @callback_formats[CALLBACK_ANALOG_VALUE] = 'S'
      @callback_formats[CALLBACK_CURRENT_REACHED] = 's'
      @callback_formats[CALLBACK_ANALOG_VALUE_REACHED] = 'S'
      @callback_formats[CALLBACK_OVER_CURRENT] = ''
    end

    # Returns the current of the sensor. The value is in mA
    # and between -25000mA and 25000mA.
    # 
    # If you want to get the current periodically, it is recommended to use the
    # callback CALLBACK_CURRENT and set the period with 
    # BrickletCurrent25#set_current_callback_period.
    def get_current
      send_request(FUNCTION_GET_CURRENT, [], '', 2, 's')
    end

    # Calibrates the 0 value of the sensor. You have to call this function
    # when there is no current present. 
    # 
    # The zero point of the current sensor
    # is depending on the exact properties of the analog-to-digital converter,
    # the length of the Bricklet cable and the temperature. Thus, if you change
    # the Brick or the environment in which the Bricklet is used, you might
    # have to recalibrate.
    # 
    # The resulting calibration will be saved on the EEPROM of the Current
    # Bricklet.
    def calibrate
      send_request(FUNCTION_CALIBRATE, [], '', 0, '')
    end

    # Returns *true* if more than 25A were measured.
    # 
    # .. note::
    #  To reset this value you have to power cycle the Bricklet.
    def is_over_current
      send_request(FUNCTION_IS_OVER_CURRENT, [], '', 1, '?')
    end

    # Returns the value as read by a 12-bit analog-to-digital converter.
    # The value is between 0 and 4095.
    # 
    # .. note::
    #  The value returned by BrickletCurrent25#get_current is averaged over several samples
    #  to yield less noise, while BrickletCurrent25#get_analog_value gives back raw
    #  unfiltered analog values. The only reason to use BrickletCurrent25#get_analog_value is,
    #  if you need the full resolution of the analog-to-digital converter.
    # 
    # If you want the analog value periodically, it is recommended to use the 
    # callback CALLBACK_ANALOG_VALUE and set the period with 
    # BrickletCurrent25#set_analog_value_callback_period.
    def get_analog_value
      send_request(FUNCTION_GET_ANALOG_VALUE, [], '', 2, 'S')
    end

    # Sets the period in ms with which the CALLBACK_CURRENT callback is triggered
    # periodically. A value of 0 turns the callback off.
    # 
    # CALLBACK_CURRENT is only triggered if the current has changed since the
    # last triggering.
    # 
    # The default value is 0.
    def set_current_callback_period(period)
      send_request(FUNCTION_SET_CURRENT_CALLBACK_PERIOD, [period], 'L', 0, '')
    end

    # Returns the period as set by BrickletCurrent25#set_current_callback_period.
    def get_current_callback_period
      send_request(FUNCTION_GET_CURRENT_CALLBACK_PERIOD, [], '', 4, 'L')
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

    # Returns the period as set by BrickletCurrent25#set_analog_value_callback_period.
    def get_analog_value_callback_period
      send_request(FUNCTION_GET_ANALOG_VALUE_CALLBACK_PERIOD, [], '', 4, 'L')
    end

    # Sets the thresholds for the CALLBACK_CURRENT_REACHED callback. 
    # 
    # The following options are possible:
    # 
    #  "Option", "Description"
    # 
    #  "'x'",    "Callback is turned off"
    #  "'o'",    "Callback is triggered when the current is *outside* the min and max values"
    #  "'i'",    "Callback is triggered when the current is *inside* the min and max values"
    #  "'<'",    "Callback is triggered when the current is smaller than the min value (max is ignored)"
    #  "'>'",    "Callback is triggered when the current is greater than the min value (max is ignored)"
    # 
    # The default value is ('x', 0, 0).
    def set_current_callback_threshold(option, min, max)
      send_request(FUNCTION_SET_CURRENT_CALLBACK_THRESHOLD, [option, min, max], 'k s s', 0, '')
    end

    # Returns the threshold as set by BrickletCurrent25#set_current_callback_threshold.
    def get_current_callback_threshold
      send_request(FUNCTION_GET_CURRENT_CALLBACK_THRESHOLD, [], '', 5, 'k s s')
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

    # Returns the threshold as set by BrickletCurrent25#set_analog_value_callback_threshold.
    def get_analog_value_callback_threshold
      send_request(FUNCTION_GET_ANALOG_VALUE_CALLBACK_THRESHOLD, [], '', 5, 'k S S')
    end

    # Sets the period in ms with which the threshold callbacks
    # 
    #  CALLBACK_CURRENT_REACHED, CALLBACK_ANALOG_VALUE_REACHED
    # 
    # are triggered, if the thresholds
    # 
    #  BrickletCurrent25#set_current_callback_threshold, BrickletCurrent25#set_analog_value_callback_threshold
    # 
    # keep being reached.
    # 
    # The default value is 100.
    def set_debounce_period(debounce)
      send_request(FUNCTION_SET_DEBOUNCE_PERIOD, [debounce], 'L', 0, '')
    end

    # Returns the debounce period as set by BrickletCurrent25#set_debounce_period.
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

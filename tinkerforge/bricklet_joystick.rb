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
  # Dual-Axis Joystick with Button
  class BrickletJoystick < Device
    DEVICE_IDENTIFIER = 210 # :nodoc:

    # This callback is triggered periodically with the period that is set by
    # BrickletJoystick#set_position_callback_period. The parameter is the position of the
    # Joystick.
    # 
    # CALLBACK_POSITION is only triggered if the position has changed since the
    # last triggering.
    CALLBACK_POSITION = 15

    # This callback is triggered periodically with the period that is set by
    # BrickletJoystick#set_analog_value_callback_period. The parameters are the analog values
    # of the Joystick.
    # 
    # CALLBACK_ANALOG_VALUE is only triggered if the values have changed since the
    # last triggering.
    CALLBACK_ANALOG_VALUE = 16

    # This callback is triggered when the threshold as set by
    # BrickletJoystick#set_position_callback_threshold is reached.
    # The parameters are the position of the Joystick.
    # 
    # If the threshold keeps being reached, the callback is triggered periodically
    # with the period as set by BrickletJoystick#set_debounce_period.
    CALLBACK_POSITION_REACHED = 17

    # This callback is triggered when the threshold as set by
    # BrickletJoystick#set_analog_value_callback_threshold is reached.
    # The parameters are the analog values of the Joystick.
    # 
    # If the threshold keeps being reached, the callback is triggered periodically
    # with the period as set by BrickletJoystick#set_debounce_period.
    CALLBACK_ANALOG_VALUE_REACHED = 18

    # This callback is triggered when the button is pressed.
    CALLBACK_PRESSED = 19

    # This callback is triggered when the button is released.
    CALLBACK_RELEASED = 20

    FUNCTION_GET_POSITION = 1 # :nodoc:
    FUNCTION_IS_PRESSED = 2 # :nodoc:
    FUNCTION_GET_ANALOG_VALUE = 3 # :nodoc:
    FUNCTION_CALIBRATE = 4 # :nodoc:
    FUNCTION_SET_POSITION_CALLBACK_PERIOD = 5 # :nodoc:
    FUNCTION_GET_POSITION_CALLBACK_PERIOD = 6 # :nodoc:
    FUNCTION_SET_ANALOG_VALUE_CALLBACK_PERIOD = 7 # :nodoc:
    FUNCTION_GET_ANALOG_VALUE_CALLBACK_PERIOD = 8 # :nodoc:
    FUNCTION_SET_POSITION_CALLBACK_THRESHOLD = 9 # :nodoc:
    FUNCTION_GET_POSITION_CALLBACK_THRESHOLD = 10 # :nodoc:
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

      @response_expected[FUNCTION_GET_POSITION] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_IS_PRESSED] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_ANALOG_VALUE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_CALIBRATE] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_SET_POSITION_CALLBACK_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_POSITION_CALLBACK_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_ANALOG_VALUE_CALLBACK_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_ANALOG_VALUE_CALLBACK_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_POSITION_CALLBACK_THRESHOLD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_POSITION_CALLBACK_THRESHOLD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_ANALOG_VALUE_CALLBACK_THRESHOLD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_ANALOG_VALUE_CALLBACK_THRESHOLD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_DEBOUNCE_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_DEBOUNCE_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[CALLBACK_POSITION] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_ANALOG_VALUE] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_POSITION_REACHED] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_ANALOG_VALUE_REACHED] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_PRESSED] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_RELEASED] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[FUNCTION_GET_IDENTITY] = RESPONSE_EXPECTED_ALWAYS_TRUE

      @callback_formats[CALLBACK_POSITION] = 's s'
      @callback_formats[CALLBACK_ANALOG_VALUE] = 'S S'
      @callback_formats[CALLBACK_POSITION_REACHED] = 's s'
      @callback_formats[CALLBACK_ANALOG_VALUE_REACHED] = 'S S'
      @callback_formats[CALLBACK_PRESSED] = ''
      @callback_formats[CALLBACK_RELEASED] = ''
    end

    # Returns the position of the Joystick. The value ranges between -100 and
    # 100 for both axis. The middle position of the joystick is x=0, y=0. The
    # returned values are averaged and calibrated (see BrickletJoystick#calibrate).
    # 
    # If you want to get the position periodically, it is recommended to use the
    # callback CALLBACK_POSITION and set the period with 
    # BrickletJoystick#set_position_callback_period.
    def get_position
      send_request(FUNCTION_GET_POSITION, [], '', 4, 's s')
    end

    # Returns *true* if the button is pressed and *false* otherwise.
    # 
    # It is recommended to use the CALLBACK_PRESSED and CALLBACK_RELEASED callbacks
    # to handle the button.
    def is_pressed
      send_request(FUNCTION_IS_PRESSED, [], '', 1, '?')
    end

    # Returns the values as read by a 12-bit analog-to-digital converter.
    # The values are between 0 and 4095 for both axis.
    # 
    # .. note::
    #  The values returned by BrickletJoystick#get_position are averaged over several samples
    #  to yield less noise, while BrickletJoystick#get_analog_value gives back raw
    #  unfiltered analog values. The only reason to use BrickletJoystick#get_analog_value is,
    #  if you need the full resolution of the analog-to-digital converter.
    # 
    # If you want the analog values periodically, it is recommended to use the 
    # callback CALLBACK_ANALOG_VALUE and set the period with 
    # BrickletJoystick#set_analog_value_callback_period.
    def get_analog_value
      send_request(FUNCTION_GET_ANALOG_VALUE, [], '', 4, 'S S')
    end

    # Calibrates the middle position of the Joystick. If your Joystick Bricklet
    # does not return x=0 and y=0 in the middle position, call this function
    # while the Joystick is standing still in the middle position.
    # 
    # The resulting calibration will be saved on the EEPROM of the Joystick
    # Bricklet, thus you only have to calibrate it once.
    def calibrate
      send_request(FUNCTION_CALIBRATE, [], '', 0, '')
    end

    # Sets the period in ms with which the CALLBACK_POSITION callback is triggered
    # periodically. A value of 0 turns the callback off.
    # 
    # CALLBACK_POSITION is only triggered if the position has changed since the
    # last triggering.
    # 
    # The default value is 0.
    def set_position_callback_period(period)
      send_request(FUNCTION_SET_POSITION_CALLBACK_PERIOD, [period], 'L', 0, '')
    end

    # Returns the period as set by BrickletJoystick#set_position_callback_period.
    def get_position_callback_period
      send_request(FUNCTION_GET_POSITION_CALLBACK_PERIOD, [], '', 4, 'L')
    end

    # Sets the period in ms with which the CALLBACK_ANALOG_VALUE callback is triggered
    # periodically. A value of 0 turns the callback off.
    # 
    # CALLBACK_ANALOG_VALUE is only triggered if the analog values have changed since the
    # last triggering.
    # 
    # The default value is 0.
    def set_analog_value_callback_period(period)
      send_request(FUNCTION_SET_ANALOG_VALUE_CALLBACK_PERIOD, [period], 'L', 0, '')
    end

    # Returns the period as set by BrickletJoystick#set_analog_value_callback_period.
    def get_analog_value_callback_period
      send_request(FUNCTION_GET_ANALOG_VALUE_CALLBACK_PERIOD, [], '', 4, 'L')
    end

    # Sets the thresholds for the CALLBACK_POSITION_REACHED callback. 
    # 
    # The following options are possible:
    # 
    #  "Option", "Description"
    # 
    #  "'x'",    "Callback is turned off"
    #  "'o'",    "Callback is triggered when the position is *outside* the min and max values"
    #  "'i'",    "Callback is triggered when the position is *inside* the min and max values"
    #  "'<'",    "Callback is triggered when the position is smaller than the min values (max is ignored)"
    #  "'>'",    "Callback is triggered when the position is greater than the min values (max is ignored)"
    # 
    # The default value is ('x', 0, 0, 0, 0).
    def set_position_callback_threshold(option, min_x, max_x, min_y, max_y)
      send_request(FUNCTION_SET_POSITION_CALLBACK_THRESHOLD, [option, min_x, max_x, min_y, max_y], 'k s s s s', 0, '')
    end

    # Returns the threshold as set by BrickletJoystick#set_position_callback_threshold.
    def get_position_callback_threshold
      send_request(FUNCTION_GET_POSITION_CALLBACK_THRESHOLD, [], '', 9, 'k s s s s')
    end

    # Sets the thresholds for the CALLBACK_ANALOG_VALUE_REACHED callback. 
    # 
    # The following options are possible:
    # 
    #  "Option", "Description"
    # 
    #  "'x'",    "Callback is turned off"
    #  "'o'",    "Callback is triggered when the analog values are *outside* the min and max values"
    #  "'i'",    "Callback is triggered when the analog values are *inside* the min and max values"
    #  "'<'",    "Callback is triggered when the analog values are smaller than the min values (max is ignored)"
    #  "'>'",    "Callback is triggered when the analog values are greater than the min values (max is ignored)"
    # 
    # The default value is ('x', 0, 0, 0, 0).
    def set_analog_value_callback_threshold(option, min_x, max_x, min_y, max_y)
      send_request(FUNCTION_SET_ANALOG_VALUE_CALLBACK_THRESHOLD, [option, min_x, max_x, min_y, max_y], 'k S S S S', 0, '')
    end

    # Returns the threshold as set by BrickletJoystick#set_analog_value_callback_threshold.
    def get_analog_value_callback_threshold
      send_request(FUNCTION_GET_ANALOG_VALUE_CALLBACK_THRESHOLD, [], '', 9, 'k S S S S')
    end

    # Sets the period in ms with which the threshold callbacks
    # 
    #  CALLBACK_POSITION_REACHED, CALLBACK_ANALOG_VALUE_REACHED
    # 
    # are triggered, if the thresholds
    # 
    #  BrickletJoystick#set_position_callback_threshold, BrickletJoystick#set_analog_value_callback_threshold
    # 
    # keep being reached.
    # 
    # The default value is 100.
    def set_debounce_period(debounce)
      send_request(FUNCTION_SET_DEBOUNCE_PERIOD, [debounce], 'L', 0, '')
    end

    # Returns the debounce period as set by BrickletJoystick#set_debounce_period.
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

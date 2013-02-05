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
  # Device for sensing distance via infrared
  class BrickletDistanceIR < Device
    DEVICE_IDENTIFIER = 25 # :nodoc:

    # This callback is triggered periodically with the period that is set by
    # BrickletDistanceIR#set_distance_callback_period. The parameter is the distance of the
    # sensor.
    # 
    # CALLBACK_DISTANCE is only triggered if the distance has changed since the
    # last triggering.
    CALLBACK_DISTANCE = 15

    # This callback is triggered periodically with the period that is set by
    # BrickletDistanceIR#set_analog_value_callback_period. The parameter is the analog value of the
    # sensor.
    # 
    # CALLBACK_ANALOG_VALUE is only triggered if the analog value has changed since the
    # last triggering.
    CALLBACK_ANALOG_VALUE = 16

    # This callback is triggered when the threshold as set by
    # BrickletDistanceIR#set_distance_callback_threshold is reached.
    # The parameter is the distance of the sensor.
    # 
    # If the threshold keeps being reached, the callback is triggered periodically
    # with the period as set by BrickletDistanceIR#set_debounce_period.
    CALLBACK_DISTANCE_REACHED = 17

    # This callback is triggered when the threshold as set by
    # BrickletDistanceIR#set_analog_value_callback_threshold is reached.
    # The parameter is the analog value of the sensor.
    # 
    # If the threshold keeps being reached, the callback is triggered periodically
    # with the period as set by BrickletDistanceIR#set_debounce_period.
    CALLBACK_ANALOG_VALUE_REACHED = 18

    FUNCTION_GET_DISTANCE = 1 # :nodoc:
    FUNCTION_GET_ANALOG_VALUE = 2 # :nodoc:
    FUNCTION_SET_SAMPLING_POINT = 3 # :nodoc:
    FUNCTION_GET_SAMPLING_POINT = 4 # :nodoc:
    FUNCTION_SET_DISTANCE_CALLBACK_PERIOD = 5 # :nodoc:
    FUNCTION_GET_DISTANCE_CALLBACK_PERIOD = 6 # :nodoc:
    FUNCTION_SET_ANALOG_VALUE_CALLBACK_PERIOD = 7 # :nodoc:
    FUNCTION_GET_ANALOG_VALUE_CALLBACK_PERIOD = 8 # :nodoc:
    FUNCTION_SET_DISTANCE_CALLBACK_THRESHOLD = 9 # :nodoc:
    FUNCTION_GET_DISTANCE_CALLBACK_THRESHOLD = 10 # :nodoc:
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

      @response_expected[FUNCTION_GET_DISTANCE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_ANALOG_VALUE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_SAMPLING_POINT] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_SAMPLING_POINT] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_DISTANCE_CALLBACK_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_DISTANCE_CALLBACK_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_ANALOG_VALUE_CALLBACK_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_ANALOG_VALUE_CALLBACK_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_DISTANCE_CALLBACK_THRESHOLD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_DISTANCE_CALLBACK_THRESHOLD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_ANALOG_VALUE_CALLBACK_THRESHOLD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_ANALOG_VALUE_CALLBACK_THRESHOLD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_DEBOUNCE_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_DEBOUNCE_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[CALLBACK_DISTANCE] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_ANALOG_VALUE] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_DISTANCE_REACHED] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_ANALOG_VALUE_REACHED] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[FUNCTION_GET_IDENTITY] = RESPONSE_EXPECTED_ALWAYS_TRUE

      @callback_formats[CALLBACK_DISTANCE] = 'S'
      @callback_formats[CALLBACK_ANALOG_VALUE] = 'S'
      @callback_formats[CALLBACK_DISTANCE_REACHED] = 'S'
      @callback_formats[CALLBACK_ANALOG_VALUE_REACHED] = 'S'
    end

    # Returns the distance measured by the sensor. The value is in mm and possible
    # distance ranges are 40 to 300, 100 to 800 and 200 to 1500, depending on the
    # selected IR sensor.
    # 
    # If you want to get the distance periodically, it is recommended to use the
    # callback CALLBACK_DISTANCE and set the period with 
    # BrickletDistanceIR#set_distance_callback_period.
    def get_distance
      send_request(FUNCTION_GET_DISTANCE, [], '', 2, 'S')
    end

    # Returns the value as read by a 12-bit analog-to-digital converter.
    # The value is between 0 and 4095.
    # 
    # .. note::
    #  The value returned by BrickletDistanceIR#get_distance is averaged over several samples
    #  to yield less noise, while BrickletDistanceIR#get_analog_value gives back raw
    #  unfiltered analog values. The only reason to use BrickletDistanceIR#get_analog_value is,
    #  if you need the full resolution of the analog-to-digital converter.
    # 
    # If you want the analog value periodically, it is recommended to use the 
    # callback CALLBACK_ANALOG_VALUE and set the period with 
    # BrickletDistanceIR#set_analog_value_callback_period.
    def get_analog_value
      send_request(FUNCTION_GET_ANALOG_VALUE, [], '', 2, 'S')
    end

    # Sets a sampling point value to a specific position of the lookup table.
    # The lookup table comprises 128 equidistant analog values with
    # corresponding distances.
    # 
    # If you measure a distance of 50cm at the analog value 2048, you
    # should call this function with (64, 5000). The utilized analog-to-digital
    # converter has a resolution of 12 bit. With 128 sampling points on the
    # whole range, this means that every sampling point has a size of 32
    # analog values. Thus the analog value 2048 has the corresponding sampling
    # point 64 = 2048/32.
    # 
    # Sampling points are saved on the EEPROM of the Distance IR Bricklet and
    # loaded again on startup.
    # 
    # .. note::
    #  An easy way to calibrate the sampling points of the Distance IR Bricklet is
    #  implemented in the Brick Viewer. If you want to calibrate your Bricklet it is
    #  highly recommended to use this implementation.
    def set_sampling_point(position, distance)
      send_request(FUNCTION_SET_SAMPLING_POINT, [position, distance], 'C S', 0, '')
    end

    # Returns the distance to a sampling point position as set by
    # BrickletDistanceIR#set_sampling_point.
    def get_sampling_point(position)
      send_request(FUNCTION_GET_SAMPLING_POINT, [position], 'C', 2, 'S')
    end

    # Sets the period in ms with which the CALLBACK_DISTANCE callback is triggered
    # periodically. A value of 0 turns the callback off.
    # 
    # CALLBACK_DISTANCE is only triggered if the distance has changed since the
    # last triggering.
    # 
    # The default value is 0.
    def set_distance_callback_period(period)
      send_request(FUNCTION_SET_DISTANCE_CALLBACK_PERIOD, [period], 'L', 0, '')
    end

    # Returns the period as set by BrickletDistanceIR#set_distance_callback_period.
    def get_distance_callback_period
      send_request(FUNCTION_GET_DISTANCE_CALLBACK_PERIOD, [], '', 4, 'L')
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

    # Returns the period as set by BrickletDistanceIR#set_analog_value_callback_period.
    def get_analog_value_callback_period
      send_request(FUNCTION_GET_ANALOG_VALUE_CALLBACK_PERIOD, [], '', 4, 'L')
    end

    # Sets the thresholds for the CALLBACK_DISTANCE_REACHED callback. 
    # 
    # The following options are possible:
    # 
    #  "Option", "Description"
    # 
    #  "'x'",    "Callback is turned off"
    #  "'o'",    "Callback is triggered when the distance is *outside* the min and max values"
    #  "'i'",    "Callback is triggered when the distance is *inside* the min and max values"
    #  "'<'",    "Callback is triggered when the distance is smaller than the min value (max is ignored)"
    #  "'>'",    "Callback is triggered when the distance is greater than the min value (max is ignored)"
    # 
    # The default value is ('x', 0, 0).
    def set_distance_callback_threshold(option, min, max)
      send_request(FUNCTION_SET_DISTANCE_CALLBACK_THRESHOLD, [option, min, max], 'k s s', 0, '')
    end

    # Returns the threshold as set by BrickletDistanceIR#set_distance_callback_threshold.
    def get_distance_callback_threshold
      send_request(FUNCTION_GET_DISTANCE_CALLBACK_THRESHOLD, [], '', 5, 'k s s')
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

    # Returns the threshold as set by BrickletDistanceIR#set_analog_value_callback_threshold.
    def get_analog_value_callback_threshold
      send_request(FUNCTION_GET_ANALOG_VALUE_CALLBACK_THRESHOLD, [], '', 5, 'k S S')
    end

    # Sets the period in ms with which the threshold callbacks
    # 
    #  CALLBACK_DISTANCE_REACHED, CALLBACK_ANALOG_VALUE_REACHED
    # 
    # are triggered, if the thresholds
    # 
    #  BrickletDistanceIR#set_distance_callback_threshold, BrickletDistanceIR#set_analog_value_callback_threshold
    # 
    # keep being reached.
    # 
    # The default value is 100.
    def set_debounce_period(debounce)
      send_request(FUNCTION_SET_DEBOUNCE_PERIOD, [debounce], 'L', 0, '')
    end

    # Returns the debounce period as set by BrickletDistanceIR#set_debounce_period.
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

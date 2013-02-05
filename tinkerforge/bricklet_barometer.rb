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
  # Device for sensing air pressure and altitude changes
  class BrickletBarometer < Device
    DEVICE_IDENTIFIER = 221 # :nodoc:

    # This callback is triggered periodically with the period that is set by
    # BrickletBarometer#set_air_pressure_callback_period. The parameter is the air pressure of the
    # air pressure sensor.
    # 
    # CALLBACK_AIR_PRESSURE is only triggered if the air pressure has changed since the
    # last triggering.
    CALLBACK_AIR_PRESSURE = 15

    # This callback is triggered periodically with the period that is set by
    # BrickletBarometer#set_altitude_callback_period. The parameter is the altitude of the
    # air pressure sensor.
    # 
    # CALLBACK_ALTITUDE is only triggered if the altitude has changed since the
    # last triggering.
    CALLBACK_ALTITUDE = 16

    # This callback is triggered when the threshold as set by
    # BrickletBarometer#set_air_pressure_callback_threshold is reached.
    # The parameter is the air pressure of the air pressure sensor.
    # 
    # If the threshold keeps being reached, the callback is triggered periodically
    # with the period as set by BrickletBarometer#set_debounce_period.
    CALLBACK_AIR_PRESSURE_REACHED = 17

    # This callback is triggered when the threshold as set by
    # BrickletBarometer#set_altitude_callback_threshold is reached.
    # The parameter is the altitude of the air pressure sensor.
    # 
    # If the threshold keeps being reached, the callback is triggered periodically
    # with the period as set by BrickletBarometer#set_debounce_period.
    CALLBACK_ALTITUDE_REACHED = 18

    FUNCTION_GET_AIR_PRESSURE = 1 # :nodoc:
    FUNCTION_GET_ALTITUDE = 2 # :nodoc:
    FUNCTION_SET_AIR_PRESSURE_CALLBACK_PERIOD = 3 # :nodoc:
    FUNCTION_GET_AIR_PRESSURE_CALLBACK_PERIOD = 4 # :nodoc:
    FUNCTION_SET_ALTITUDE_CALLBACK_PERIOD = 5 # :nodoc:
    FUNCTION_GET_ALTITUDE_CALLBACK_PERIOD = 6 # :nodoc:
    FUNCTION_SET_AIR_PRESSURE_CALLBACK_THRESHOLD = 7 # :nodoc:
    FUNCTION_GET_AIR_PRESSURE_CALLBACK_THRESHOLD = 8 # :nodoc:
    FUNCTION_SET_ALTITUDE_CALLBACK_THRESHOLD = 9 # :nodoc:
    FUNCTION_GET_ALTITUDE_CALLBACK_THRESHOLD = 10 # :nodoc:
    FUNCTION_SET_DEBOUNCE_PERIOD = 11 # :nodoc:
    FUNCTION_GET_DEBOUNCE_PERIOD = 12 # :nodoc:
    FUNCTION_SET_REFERENCE_AIR_PRESSURE = 13 # :nodoc:
    FUNCTION_GET_CHIP_TEMPERATURE = 14 # :nodoc:
    FUNCTION_GET_REFERENCE_AIR_PRESSURE = 19 # :nodoc:
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

      @response_expected[FUNCTION_GET_AIR_PRESSURE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_ALTITUDE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_AIR_PRESSURE_CALLBACK_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_AIR_PRESSURE_CALLBACK_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_ALTITUDE_CALLBACK_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_ALTITUDE_CALLBACK_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_AIR_PRESSURE_CALLBACK_THRESHOLD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_AIR_PRESSURE_CALLBACK_THRESHOLD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_ALTITUDE_CALLBACK_THRESHOLD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_ALTITUDE_CALLBACK_THRESHOLD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_DEBOUNCE_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_DEBOUNCE_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_REFERENCE_AIR_PRESSURE] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_CHIP_TEMPERATURE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[CALLBACK_AIR_PRESSURE] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_ALTITUDE] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_AIR_PRESSURE_REACHED] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_ALTITUDE_REACHED] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[FUNCTION_GET_REFERENCE_AIR_PRESSURE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_IDENTITY] = RESPONSE_EXPECTED_ALWAYS_TRUE

      @callback_formats[CALLBACK_AIR_PRESSURE] = 'l'
      @callback_formats[CALLBACK_ALTITUDE] = 'l'
      @callback_formats[CALLBACK_AIR_PRESSURE_REACHED] = 'l'
      @callback_formats[CALLBACK_ALTITUDE_REACHED] = 'l'
    end

    # Returns the air pressure of the air pressure sensor. The value
    # has a range of 10000 to 1200000 and is given in mbar/1000, i.e. a value
    # of 1001092 means that an air pressure of 1001.092 mbar is measured.
    # 
    # If you want to get the air pressure periodically, it is recommended to use the
    # callback CALLBACK_AIR_PRESSURE and set the period with
    # BrickletBarometer#set_air_pressure_callback_period.
    def get_air_pressure
      send_request(FUNCTION_GET_AIR_PRESSURE, [], '', 4, 'l')
    end

    # Returns the relative altitude of the air pressure sensor. The value is given in
    # cm and is caluclated based on the difference between the current air pressure
    # and the reference air pressure that can be set with BrickletBarometer#set_reference_air_pressure.
    # 
    # If you want to get the altitude periodically, it is recommended to use the
    # callback CALLBACK_ALTITUDE and set the period with
    # BrickletBarometer#set_altitude_callback_period.
    def get_altitude
      send_request(FUNCTION_GET_ALTITUDE, [], '', 4, 'l')
    end

    # Sets the period in ms with which the CALLBACK_AIR_PRESSURE callback is triggered
    # periodically. A value of 0 turns the callback off.
    # 
    # CALLBACK_AIR_PRESSURE is only triggered if the air pressure has changed since the
    # last triggering.
    # 
    # The default value is 0.
    def set_air_pressure_callback_period(period)
      send_request(FUNCTION_SET_AIR_PRESSURE_CALLBACK_PERIOD, [period], 'L', 0, '')
    end

    # Returns the period as set by BrickletBarometer#set_air_pressure_callback_period.
    def get_air_pressure_callback_period
      send_request(FUNCTION_GET_AIR_PRESSURE_CALLBACK_PERIOD, [], '', 4, 'L')
    end

    # Sets the period in ms with which the CALLBACK_ALTITUDE callback is triggered
    # periodically. A value of 0 turns the callback off.
    # 
    # CALLBACK_ALTITUDE is only triggered if the altitude has changed since the
    # last triggering.
    # 
    # The default value is 0.
    def set_altitude_callback_period(period)
      send_request(FUNCTION_SET_ALTITUDE_CALLBACK_PERIOD, [period], 'L', 0, '')
    end

    # Returns the period as set by BrickletBarometer#set_altitude_callback_period.
    def get_altitude_callback_period
      send_request(FUNCTION_GET_ALTITUDE_CALLBACK_PERIOD, [], '', 4, 'L')
    end

    # Sets the thresholds for the CALLBACK_AIR_PRESSURE_REACHED callback.
    # 
    # The following options are possible:
    # 
    #  "Option", "Description"
    # 
    #  "'x'",    "Callback is turned off"
    #  "'o'",    "Callback is triggered when the air pressure is *outside* the min and max values"
    #  "'i'",    "Callback is triggered when the air pressure is *inside* the min and max values"
    #  "'<'",    "Callback is triggered when the air pressure is smaller than the min value (max is ignored)"
    #  "'>'",    "Callback is triggered when the air pressure is greater than the min value (max is ignored)"
    # 
    # The default value is ('x', 0, 0).
    def set_air_pressure_callback_threshold(option, min, max)
      send_request(FUNCTION_SET_AIR_PRESSURE_CALLBACK_THRESHOLD, [option, min, max], 'k l l', 0, '')
    end

    # Returns the threshold as set by BrickletBarometer#set_air_pressure_callback_threshold.
    def get_air_pressure_callback_threshold
      send_request(FUNCTION_GET_AIR_PRESSURE_CALLBACK_THRESHOLD, [], '', 9, 'k l l')
    end

    # Sets the thresholds for the CALLBACK_ALTITUDE_REACHED callback.
    # 
    # The following options are possible:
    # 
    #  "Option", "Description"
    # 
    #  "'x'",    "Callback is turned off"
    #  "'o'",    "Callback is triggered when the altitude is *outside* the min and max values"
    #  "'i'",    "Callback is triggered when the altitude is *inside* the min and max values"
    #  "'<'",    "Callback is triggered when the altitude is smaller than the min value (max is ignored)"
    #  "'>'",    "Callback is triggered when the altitude is greater than the min value (max is ignored)"
    # 
    # The default value is ('x', 0, 0).
    def set_altitude_callback_threshold(option, min, max)
      send_request(FUNCTION_SET_ALTITUDE_CALLBACK_THRESHOLD, [option, min, max], 'k l l', 0, '')
    end

    # Returns the threshold as set by BrickletBarometer#set_altitude_callback_threshold.
    def get_altitude_callback_threshold
      send_request(FUNCTION_GET_ALTITUDE_CALLBACK_THRESHOLD, [], '', 9, 'k l l')
    end

    # Sets the period in ms with which the threshold callbacks
    # 
    #  CALLBACK_AIR_PRESSURE_REACHED, CALLBACK_ALTITUDE_REACHED
    # 
    # are triggered, if the thresholds
    # 
    #  BrickletBarometer#set_air_pressure_callback_threshold, BrickletBarometer#set_altitude_callback_threshold
    # 
    # keep being reached.
    # 
    # The default value is 100.
    def set_debounce_period(debounce)
      send_request(FUNCTION_SET_DEBOUNCE_PERIOD, [debounce], 'L', 0, '')
    end

    # Returns the debounce period as set by BrickletBarometer#set_debounce_period.
    def get_debounce_period
      send_request(FUNCTION_GET_DEBOUNCE_PERIOD, [], '', 4, 'L')
    end

    # Sets the reference air pressure in mbar/1000 for the altitude calculation.
    # Setting the reference to the current air pressure results in a calculated
    # altitude of 0cm. Passing 0 is a shortcut for passing the current air pressure as
    # reference.
    # 
    # Well known reference values are the Q codes
    # `QNH <http://en.wikipedia.org/wiki/QNH>`__ and
    # `QFE <http://en.wikipedia.org/wiki/Mean_sea_level_pressure#Mean_sea_level_pressure>`__
    # used in aviation.
    # 
    # The default value is 1013.25mbar.
    # 
    # .. versionadded:: 1.1.0~(Plugin)
    def set_reference_air_pressure(air_pressure)
      send_request(FUNCTION_SET_REFERENCE_AIR_PRESSURE, [air_pressure], 'l', 0, '')
    end

    # Returns the temperature of the air pressure sensor. The value
    # has a range of -4000 to 8500 and is given in °C/100, i.e. a value
    # of 2007 means that a temperature of 20.07 °C is measured.
    # 
    # This temperature is used internally for temperature compensation of the air
    # pressure measurement. It is not as accurate as the temperature measured by the
    # :ref:`temperature_bricklet` or the :ref:`temperature_ir_bricklet`.
    def get_chip_temperature
      send_request(FUNCTION_GET_CHIP_TEMPERATURE, [], '', 2, 's')
    end

    # Returns the reference air pressure as set by BrickletBarometer#set_reference_air_pressure.
    # 
    # .. versionadded:: 1.1.0~(Plugin)
    def get_reference_air_pressure
      send_request(FUNCTION_GET_REFERENCE_AIR_PRESSURE, [], '', 4, 'l')
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

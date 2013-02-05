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
  # Device for high precision sensing of voltage and current
  class BrickletVoltageCurrent < Device
    DEVICE_IDENTIFIER = 227 # :nodoc:

    # This callback is triggered periodically with the period that is set by
    # BrickletVoltageCurrent#set_current_callback_period. The parameter is the current of the
    # sensor.
    # 
    # CALLBACK_CURRENT is only triggered if the current has changed since the
    # last triggering.
    CALLBACK_CURRENT = 22

    # This callback is triggered periodically with the period that is set by
    # BrickletVoltageCurrent#set_voltage_callback_period. The parameter is the voltage of the
    # sensor.
    # 
    # CALLBACK_VOLTAGE is only triggered if the voltage has changed since the
    # last triggering.
    CALLBACK_VOLTAGE = 23

    # This callback is triggered periodically with the period that is set by
    # BrickletVoltageCurrent#set_power_callback_period. The parameter is the power of the
    # sensor.
    # 
    # CALLBACK_POWER is only triggered if the power has changed since the
    # last triggering.
    CALLBACK_POWER = 24

    # This callback is triggered when the threshold as set by
    # BrickletVoltageCurrent#set_current_callback_threshold is reached.
    # The parameter is the current of the sensor.
    # 
    # If the threshold keeps being reached, the callback is triggered periodically
    # with the period as set by BrickletVoltageCurrent#set_debounce_period.
    CALLBACK_CURRENT_REACHED = 25

    # This callback is triggered when the threshold as set by
    # BrickletVoltageCurrent#set_voltage_callback_threshold is reached.
    # The parameter is the voltage of the sensor.
    # 
    # If the threshold keeps being reached, the callback is triggered periodically
    # with the period as set by BrickletVoltageCurrent#set_debounce_period.
    CALLBACK_VOLTAGE_REACHED = 26

    # This callback is triggered when the threshold as set by
    # BrickletVoltageCurrent#set_power_callback_threshold is reached.
    # The parameter is the power of the sensor.
    # 
    # If the threshold keeps being reached, the callback is triggered periodically
    # with the period as set by BrickletVoltageCurrent#set_debounce_period.
    CALLBACK_POWER_REACHED = 27

    FUNCTION_GET_CURRENT = 1 # :nodoc:
    FUNCTION_GET_VOLTAGE = 2 # :nodoc:
    FUNCTION_GET_POWER = 3 # :nodoc:
    FUNCTION_SET_CONFIGURATION = 4 # :nodoc:
    FUNCTION_GET_CONFIGURATION = 5 # :nodoc:
    FUNCTION_SET_CALIBRATION = 6 # :nodoc:
    FUNCTION_GET_CALIBRATION = 7 # :nodoc:
    FUNCTION_SET_CURRENT_CALLBACK_PERIOD = 8 # :nodoc:
    FUNCTION_GET_CURRENT_CALLBACK_PERIOD = 9 # :nodoc:
    FUNCTION_SET_VOLTAGE_CALLBACK_PERIOD = 10 # :nodoc:
    FUNCTION_GET_VOLTAGE_CALLBACK_PERIOD = 11 # :nodoc:
    FUNCTION_SET_POWER_CALLBACK_PERIOD = 12 # :nodoc:
    FUNCTION_GET_POWER_CALLBACK_PERIOD = 13 # :nodoc:
    FUNCTION_SET_CURRENT_CALLBACK_THRESHOLD = 14 # :nodoc:
    FUNCTION_GET_CURRENT_CALLBACK_THRESHOLD = 15 # :nodoc:
    FUNCTION_SET_VOLTAGE_CALLBACK_THRESHOLD = 16 # :nodoc:
    FUNCTION_GET_VOLTAGE_CALLBACK_THRESHOLD = 17 # :nodoc:
    FUNCTION_SET_POWER_CALLBACK_THRESHOLD = 18 # :nodoc:
    FUNCTION_GET_POWER_CALLBACK_THRESHOLD = 19 # :nodoc:
    FUNCTION_SET_DEBOUNCE_PERIOD = 20 # :nodoc:
    FUNCTION_GET_DEBOUNCE_PERIOD = 21 # :nodoc:
    FUNCTION_GET_IDENTITY = 255 # :nodoc:

    AVERAGING_1 = 0 # :nodoc:
    AVERAGING_4 = 1 # :nodoc:
    AVERAGING_16 = 2 # :nodoc:
    AVERAGING_64 = 3 # :nodoc:
    AVERAGING_128 = 4 # :nodoc:
    AVERAGING_256 = 5 # :nodoc:
    AVERAGING_512 = 6 # :nodoc:
    AVERAGING_1024 = 7 # :nodoc:
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
      @response_expected[FUNCTION_GET_VOLTAGE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_POWER] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_CONFIGURATION] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_CONFIGURATION] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_CALIBRATION] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_CALIBRATION] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_CURRENT_CALLBACK_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_CURRENT_CALLBACK_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_VOLTAGE_CALLBACK_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_VOLTAGE_CALLBACK_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_POWER_CALLBACK_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_POWER_CALLBACK_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_CURRENT_CALLBACK_THRESHOLD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_CURRENT_CALLBACK_THRESHOLD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_VOLTAGE_CALLBACK_THRESHOLD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_VOLTAGE_CALLBACK_THRESHOLD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_POWER_CALLBACK_THRESHOLD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_POWER_CALLBACK_THRESHOLD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_DEBOUNCE_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_DEBOUNCE_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[CALLBACK_CURRENT] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_VOLTAGE] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_POWER] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_CURRENT_REACHED] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_VOLTAGE_REACHED] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_POWER_REACHED] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[FUNCTION_GET_IDENTITY] = RESPONSE_EXPECTED_ALWAYS_TRUE

      @callback_formats[CALLBACK_CURRENT] = 'l'
      @callback_formats[CALLBACK_VOLTAGE] = 'l'
      @callback_formats[CALLBACK_POWER] = 'l'
      @callback_formats[CALLBACK_CURRENT_REACHED] = 'l'
      @callback_formats[CALLBACK_VOLTAGE_REACHED] = 'l'
      @callback_formats[CALLBACK_POWER_REACHED] = 'l'
    end

    # Returns the current. The value is in mA
    # and between 0mA and 20000mA.
    # 
    # If you want to get the current periodically, it is recommended to use the
    # callback CALLBACK_CURRENT and set the period with 
    # BrickletVoltageCurrent#set_current_callback_period.
    def get_current
      send_request(FUNCTION_GET_CURRENT, [], '', 4, 'l')
    end

    # Returns the voltage. The value is in mV
    # and between 0mV and 36000mV.
    # 
    # If you want to get the voltage periodically, it is recommended to use the
    # callback CALLBACK_VOLTAGE and set the period with 
    # BrickletVoltageCurrent#set_voltage_callback_period.
    def get_voltage
      send_request(FUNCTION_GET_VOLTAGE, [], '', 4, 'l')
    end

    # Returns the power. The value is in mW
    # and between 0mV and 720000mW.
    # 
    # If you want to get the power periodically, it is recommended to use the
    # callback CALLBACK_POWER and set the period with 
    # BrickletVoltageCurrent#set_power_callback_period.
    def get_power
      send_request(FUNCTION_GET_POWER, [], '', 4, 'l')
    end

    # Sets the configuration of the Voltage/Current Bricklet. It is
    # possible to configure number of averages as well as
    # voltage and current conversion time.
    # 
    # Averaging:
    # 
    #  "Value", "Number of Averages"
    # 
    #  "0",    "1"
    #  "1",    "4"
    #  "2",    "16"
    #  "3",    "64"
    #  "4",    "128"
    #  "5",    "256"
    #  "6",    "512"
    #  ">=7",  "1024"
    # 
    # Voltage/Current conversion:
    # 
    #  "Value", "Conversion time"
    # 
    #  "0",    "140µs"
    #  "1",    "204µs"
    #  "2",    "332µs"
    #  "3",    "588µs"
    #  "4",    "1.1ms"
    #  "5",    "2.116ms"
    #  "6",    "4.156ms"
    #  ">=7",  "8.244ms"
    # 
    # The default values are 3, 4 and 4 (64, 1.1ms, 1.1ms) for averaging, voltage 
    # conversion and current conversion.
    def set_configuration(averaging, voltage_conversion_time, current_conversion_time)
      send_request(FUNCTION_SET_CONFIGURATION, [averaging, voltage_conversion_time, current_conversion_time], 'C C C', 0, '')
    end

    # Returns the configuration as set by BrickletVoltageCurrent#set_configuration.
    def get_configuration
      send_request(FUNCTION_GET_CONFIGURATION, [], '', 3, 'C C C')
    end

    # Since the shunt resistor that is used to measure the current is not
    # perfectly precise, it needs to be calibrated by a multiplier and
    # divisor if a very precise reading is needed.
    # 
    # For example, if you are expecting a measurement of 1000mA and you
    # are measuring 1023mA, you can calibrate the Voltage/Current Bricklet 
    # by setting the multiplier to 1000 and the divisior to 1023.
    def set_calibration(gain_multiplier, gain_divisor)
      send_request(FUNCTION_SET_CALIBRATION, [gain_multiplier, gain_divisor], 'S S', 0, '')
    end

    # Returns the calibration as set by BrickletVoltageCurrent#set_calibration.
    def get_calibration
      send_request(FUNCTION_GET_CALIBRATION, [], '', 4, 'S S')
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

    # Returns the period as set by BrickletVoltageCurrent#set_current_callback_period.
    def get_current_callback_period
      send_request(FUNCTION_GET_CURRENT_CALLBACK_PERIOD, [], '', 4, 'L')
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

    # Returns the period as set by BrickletVoltageCurrent#set_voltage_callback_period.
    def get_voltage_callback_period
      send_request(FUNCTION_GET_VOLTAGE_CALLBACK_PERIOD, [], '', 4, 'L')
    end

    # Sets the period in ms with which the CALLBACK_POWER callback is triggered
    # periodically. A value of 0 turns the callback off.
    # 
    # CALLBACK_POWER is only triggered if the power has changed since the
    # last triggering.
    # 
    # The default value is 0.
    def set_power_callback_period(period)
      send_request(FUNCTION_SET_POWER_CALLBACK_PERIOD, [period], 'L', 0, '')
    end

    # Returns the period as set by BrickletVoltageCurrent#get_power_callback_period.
    def get_power_callback_period
      send_request(FUNCTION_GET_POWER_CALLBACK_PERIOD, [], '', 4, 'L')
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
      send_request(FUNCTION_SET_CURRENT_CALLBACK_THRESHOLD, [option, min, max], 'k l l', 0, '')
    end

    # Returns the threshold as set by BrickletVoltageCurrent#set_current_callback_threshold.
    def get_current_callback_threshold
      send_request(FUNCTION_GET_CURRENT_CALLBACK_THRESHOLD, [], '', 9, 'k l l')
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
      send_request(FUNCTION_SET_VOLTAGE_CALLBACK_THRESHOLD, [option, min, max], 'k l l', 0, '')
    end

    # Returns the threshold as set by BrickletVoltageCurrent#set_voltage_callback_threshold.
    def get_voltage_callback_threshold
      send_request(FUNCTION_GET_VOLTAGE_CALLBACK_THRESHOLD, [], '', 9, 'k l l')
    end

    # Sets the thresholds for the CALLBACK_POWER_REACHED callback. 
    # 
    # The following options are possible:
    # 
    #  "Option", "Description"
    # 
    #  "'x'",    "Callback is turned off"
    #  "'o'",    "Callback is triggered when the power is *outside* the min and max values"
    #  "'i'",    "Callback is triggered when the power is *inside* the min and max values"
    #  "'<'",    "Callback is triggered when the power is smaller than the min value (max is ignored)"
    #  "'>'",    "Callback is triggered when the power is greater than the min value (max is ignored)"
    # 
    # The default value is ('x', 0, 0).
    def set_power_callback_threshold(option, min, max)
      send_request(FUNCTION_SET_POWER_CALLBACK_THRESHOLD, [option, min, max], 'k l l', 0, '')
    end

    # Returns the threshold as set by BrickletVoltageCurrent#set_power_callback_threshold.
    def get_power_callback_threshold
      send_request(FUNCTION_GET_POWER_CALLBACK_THRESHOLD, [], '', 9, 'k l l')
    end

    # Sets the period in ms with which the threshold callbacks
    # 
    #  CALLBACK_CURRENT_REACHED, CALLBACK_VOLTAGE_REACHED, CALLBACK_POWER_REACHED
    # 
    # are triggered, if the thresholds
    # 
    #  BrickletVoltageCurrent#set_current_callback_threshold, BrickletVoltageCurrent#set_voltage_callback_threshold, BrickletVoltageCurrent#set_power_callback_threshold
    # 
    # keep being reached.
    # 
    # The default value is 100.
    def set_debounce_period(debounce)
      send_request(FUNCTION_SET_DEBOUNCE_PERIOD, [debounce], 'L', 0, '')
    end

    # Returns the debounce period as set by BrickletVoltageCurrent#set_debounce_period.
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

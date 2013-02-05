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
  # Device for non-contact temperature sensing
  class BrickletTemperatureIR < Device
    DEVICE_IDENTIFIER = 217 # :nodoc:

    # This callback is triggered periodically with the period that is set by
    # BrickletTemperatureIR#set_ambient_temperature_callback_period. The parameter is the ambient
    # temperature of the sensor.
    # 
    # CALLBACK_AMBIENT_TEMPERATURE is only triggered if the ambient temperature
    # has changed since the last triggering.
    CALLBACK_AMBIENT_TEMPERATURE = 15

    # This callback is triggered periodically with the period that is set by
    # BrickletTemperatureIR#set_object_temperature_callback_period. The parameter is the object
    # temperature of the sensor.
    # 
    # CALLBACK_OBJECT_TEMPERATURE is only triggered if the object temperature
    # has changed since the last triggering.
    CALLBACK_OBJECT_TEMPERATURE = 16

    # This callback is triggered when the threshold as set by
    # BrickletTemperatureIR#set_ambient_temperature_callback_threshold is reached.
    # The parameter is the ambient temperature of the sensor.
    # 
    # If the threshold keeps being reached, the callback is triggered periodically
    # with the period as set by BrickletTemperatureIR#set_debounce_period.
    CALLBACK_AMBIENT_TEMPERATURE_REACHED = 17

    # This callback is triggered when the threshold as set by
    # BrickletTemperatureIR#set_object_temperature_callback_threshold is reached.
    # The parameter is the object temperature of the sensor.
    # 
    # If the threshold keeps being reached, the callback is triggered periodically
    # with the period as set by BrickletTemperatureIR#set_debounce_period.
    CALLBACK_OBJECT_TEMPERATURE_REACHED = 18

    FUNCTION_GET_AMBIENT_TEMPERATURE = 1 # :nodoc:
    FUNCTION_GET_OBJECT_TEMPERATURE = 2 # :nodoc:
    FUNCTION_SET_EMISSIVITY = 3 # :nodoc:
    FUNCTION_GET_EMISSIVITY = 4 # :nodoc:
    FUNCTION_SET_AMBIENT_TEMPERATURE_CALLBACK_PERIOD = 5 # :nodoc:
    FUNCTION_GET_AMBIENT_TEMPERATURE_CALLBACK_PERIOD = 6 # :nodoc:
    FUNCTION_SET_OBJECT_TEMPERATURE_CALLBACK_PERIOD = 7 # :nodoc:
    FUNCTION_GET_OBJECT_TEMPERATURE_CALLBACK_PERIOD = 8 # :nodoc:
    FUNCTION_SET_AMBIENT_TEMPERATURE_CALLBACK_THRESHOLD = 9 # :nodoc:
    FUNCTION_GET_AMBIENT_TEMPERATURE_CALLBACK_THRESHOLD = 10 # :nodoc:
    FUNCTION_SET_OBJECT_TEMPERATURE_CALLBACK_THRESHOLD = 11 # :nodoc:
    FUNCTION_GET_OBJECT_TEMPERATURE_CALLBACK_THRESHOLD = 12 # :nodoc:
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

      @response_expected[FUNCTION_GET_AMBIENT_TEMPERATURE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_OBJECT_TEMPERATURE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_EMISSIVITY] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_EMISSIVITY] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_AMBIENT_TEMPERATURE_CALLBACK_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_AMBIENT_TEMPERATURE_CALLBACK_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_OBJECT_TEMPERATURE_CALLBACK_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_OBJECT_TEMPERATURE_CALLBACK_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_AMBIENT_TEMPERATURE_CALLBACK_THRESHOLD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_AMBIENT_TEMPERATURE_CALLBACK_THRESHOLD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_OBJECT_TEMPERATURE_CALLBACK_THRESHOLD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_OBJECT_TEMPERATURE_CALLBACK_THRESHOLD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_DEBOUNCE_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_DEBOUNCE_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[CALLBACK_AMBIENT_TEMPERATURE] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_OBJECT_TEMPERATURE] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_AMBIENT_TEMPERATURE_REACHED] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_OBJECT_TEMPERATURE_REACHED] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[FUNCTION_GET_IDENTITY] = RESPONSE_EXPECTED_ALWAYS_TRUE

      @callback_formats[CALLBACK_AMBIENT_TEMPERATURE] = 's'
      @callback_formats[CALLBACK_OBJECT_TEMPERATURE] = 's'
      @callback_formats[CALLBACK_AMBIENT_TEMPERATURE_REACHED] = 's'
      @callback_formats[CALLBACK_OBJECT_TEMPERATURE_REACHED] = 's'
    end

    # Returns the ambient temperature of the sensor. The value
    # has a range of -400 to 1250 and is given in °C/10,
    # e.g. a value of 423 means that an ambient temperature of 42.3 °C is 
    # measured.
    # 
    # If you want to get the ambient temperature periodically, it is recommended 
    # to use the callback CALLBACK_AMBIENT_TEMPERATURE and set the period with 
    # BrickletTemperatureIR#set_ambient_temperature_callback_period.
    def get_ambient_temperature
      send_request(FUNCTION_GET_AMBIENT_TEMPERATURE, [], '', 2, 's')
    end

    # Returns the object temperature of the sensor, i.e. the temperature
    # of the surface of the object the sensor is aimed at. The value
    # has a range of -700 to 3800 and is given in °C/10,
    # e.g. a value of 3001 means that a temperature of 300.1 °C is measured
    # on the surface of the object.
    # 
    # The temperature of different materials is dependent on their `emissivity 
    # <http://en.wikipedia.org/wiki/Emissivity>`__. The emissivity of the material
    # can be set with BrickletTemperatureIR#set_emissivity.
    # 
    # If you want to get the object temperature periodically, it is recommended 
    # to use the callback CALLBACK_OBJECT_TEMPERATURE and set the period with 
    # BrickletTemperatureIR#set_object_temperature_callback_period.
    def get_object_temperature
      send_request(FUNCTION_GET_OBJECT_TEMPERATURE, [], '', 2, 's')
    end

    # Sets the `emissivity <http://en.wikipedia.org/wiki/Emissivity>`__ that is
    # used to calculate the surface temperature as returned by 
    # BrickletTemperatureIR#get_object_temperature. 
    # 
    # The emissivity is usually given as a value between 0.0 and 1.0. A list of
    # emissivities of different materials can be found 
    # `here <http://www.infrared-thermography.com/material.htm>`__.
    # 
    # The parameter of BrickletTemperatureIR#set_emissivity has to be given with a factor of
    # 65535 (16-bit). For example: An emissivity of 0.1 can be set with the
    # value 6553, an emissivity of 0.5 with the value 32767 and so on.
    # 
    # .. note::
    #  If you need a precise measurement for the object temperature, it is
    #  absolutely crucial that you also provide a precise emissivity.
    # 
    # The default emissivity is 1.0 (value of 65535) and the minimum emissivity the
    # sensor can handle is 0.1 (value of 6553).
    def set_emissivity(emissivity)
      send_request(FUNCTION_SET_EMISSIVITY, [emissivity], 'S', 0, '')
    end

    # Returns the emissivity as set by BrickletTemperatureIR#set_emissivity.
    def get_emissivity
      send_request(FUNCTION_GET_EMISSIVITY, [], '', 2, 'S')
    end

    # Sets the period in ms with which the CALLBACK_AMBIENT_TEMPERATURE callback is triggered
    # periodically. A value of 0 turns the callback off.
    # 
    # CALLBACK_AMBIENT_TEMPERATURE is only triggered if the temperature has changed since the
    # last triggering.
    # 
    # The default value is 0.
    def set_ambient_temperature_callback_period(period)
      send_request(FUNCTION_SET_AMBIENT_TEMPERATURE_CALLBACK_PERIOD, [period], 'L', 0, '')
    end

    # Returns the period as set by BrickletTemperatureIR#set_ambient_temperature_callback_period.
    def get_ambient_temperature_callback_period
      send_request(FUNCTION_GET_AMBIENT_TEMPERATURE_CALLBACK_PERIOD, [], '', 4, 'L')
    end

    # Sets the period in ms with which the CALLBACK_OBJECT_TEMPERATURE callback is triggered
    # periodically. A value of 0 turns the callback off.
    # 
    # CALLBACK_OBJECT_TEMPERATURE is only triggered if the temperature has changed since the
    # last triggering.
    # 
    # The default value is 0.
    def set_object_temperature_callback_period(period)
      send_request(FUNCTION_SET_OBJECT_TEMPERATURE_CALLBACK_PERIOD, [period], 'L', 0, '')
    end

    # Returns the period as set by BrickletTemperatureIR#set_object_temperature_callback_period.
    def get_object_temperature_callback_period
      send_request(FUNCTION_GET_OBJECT_TEMPERATURE_CALLBACK_PERIOD, [], '', 4, 'L')
    end

    # Sets the thresholds for the CALLBACK_AMBIENT_TEMPERATURE_REACHED callback. 
    # 
    # The following options are possible:
    # 
    #  "Option", "Description"
    # 
    #  "'x'",    "Callback is turned off"
    #  "'o'",    "Callback is triggered when the ambient temperature is *outside* the min and max values"
    #  "'i'",    "Callback is triggered when the ambient temperature is *inside* the min and max values"
    #  "'<'",    "Callback is triggered when the ambient temperature is smaller than the min value (max is ignored)"
    #  "'>'",    "Callback is triggered when the ambient temperature is greater than the min value (max is ignored)"
    # 
    # The default value is ('x', 0, 0).
    def set_ambient_temperature_callback_threshold(option, min, max)
      send_request(FUNCTION_SET_AMBIENT_TEMPERATURE_CALLBACK_THRESHOLD, [option, min, max], 'k s s', 0, '')
    end

    # Returns the threshold as set by BrickletTemperatureIR#set_ambient_temperature_callback_threshold.
    def get_ambient_temperature_callback_threshold
      send_request(FUNCTION_GET_AMBIENT_TEMPERATURE_CALLBACK_THRESHOLD, [], '', 5, 'k s s')
    end

    # Sets the thresholds for the CALLBACK_OBJECT_TEMPERATURE_REACHED callback. 
    # 
    # The following options are possible:
    # 
    #  "Option", "Description"
    # 
    #  "'x'",    "Callback is turned off"
    #  "'o'",    "Callback is triggered when the object temperature is *outside* the min and max values"
    #  "'i'",    "Callback is triggered when the object temperature is *inside* the min and max values"
    #  "'<'",    "Callback is triggered when the object temperature is smaller than the min value (max is ignored)"
    #  "'>'",    "Callback is triggered when the object temperature is greater than the min value (max is ignored)"
    # 
    # The default value is ('x', 0, 0).
    def set_object_temperature_callback_threshold(option, min, max)
      send_request(FUNCTION_SET_OBJECT_TEMPERATURE_CALLBACK_THRESHOLD, [option, min, max], 'k s s', 0, '')
    end

    # Returns the threshold as set by BrickletTemperatureIR#set_object_temperature_callback_threshold.
    def get_object_temperature_callback_threshold
      send_request(FUNCTION_GET_OBJECT_TEMPERATURE_CALLBACK_THRESHOLD, [], '', 5, 'k s s')
    end

    # Sets the period in ms with which the threshold callbacks
    # 
    #  CALLBACK_AMBIENT_TEMPERATURE_REACHED, CALLBACK_OBJECT_TEMPERATURE_REACHED
    # 
    # are triggered, if the thresholds
    # 
    #  BrickletTemperatureIR#set_ambient_temperature_callback_threshold, BrickletTemperatureIR#set_object_temperature_callback_threshold
    # 
    # keep being reached.
    # 
    # The default value is 100.
    def set_debounce_period(debounce)
      send_request(FUNCTION_SET_DEBOUNCE_PERIOD, [debounce], 'L', 0, '')
    end

    # Returns the debounce period as set by BrickletTemperatureIR#set_debounce_period.
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

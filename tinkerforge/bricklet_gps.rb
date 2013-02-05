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
  # Device for receiving GPS position
  class BrickletGPS < Device
    DEVICE_IDENTIFIER = 222 # :nodoc:

    # This callback is triggered periodically with the period that is set by
    # BrickletGPS#set_coordinates_callback_period. The parameters are the same
    # as for BrickletGPS#get_coordinates.
    # 
    # CALLBACK_COORDINATES is only triggered if the coordinates changed since the
    # last triggering.
    CALLBACK_COORDINATES = 17

    # This callback is triggered periodically with the period that is set by
    # BrickletGPS#set_status_callback_period. The parameters are the same
    # as for BrickletGPS#get_status.
    # 
    # CALLBACK_STATUS is only triggered if the status changed since the
    # last triggering.
    CALLBACK_STATUS = 18

    # This callback is triggered periodically with the period that is set by
    # BrickletGPS#set_altitude_callback_period. The parameters are the same
    # as for BrickletGPS#get_altitude.
    # 
    # CALLBACK_ALTITUDE is only triggered if the altitude changed since the
    # last triggering.
    CALLBACK_ALTITUDE = 19

    # This callback is triggered periodically with the period that is set by
    # BrickletGPS#set_motion_callback_period. The parameters are the same
    # as for BrickletGPS#get_motion.
    # 
    # CALLBACK_MOTION is only triggered if the motion changed since the
    # last triggering.
    CALLBACK_MOTION = 20

    # This callback is triggered periodically with the period that is set by
    # BrickletGPS#set_date_time_callback_period. The parameters are the same
    # as for BrickletGPS#get_date_time.
    # 
    # CALLBACK_DATE_TIME is only triggered if the date or time changed since the
    # last triggering.
    CALLBACK_DATE_TIME = 21

    FUNCTION_GET_COORDINATES = 1 # :nodoc:
    FUNCTION_GET_STATUS = 2 # :nodoc:
    FUNCTION_GET_ALTITUDE = 3 # :nodoc:
    FUNCTION_GET_MOTION = 4 # :nodoc:
    FUNCTION_GET_DATE_TIME = 5 # :nodoc:
    FUNCTION_RESTART = 6 # :nodoc:
    FUNCTION_SET_COORDINATES_CALLBACK_PERIOD = 7 # :nodoc:
    FUNCTION_GET_COORDINATES_CALLBACK_PERIOD = 8 # :nodoc:
    FUNCTION_SET_STATUS_CALLBACK_PERIOD = 9 # :nodoc:
    FUNCTION_GET_STATUS_CALLBACK_PERIOD = 10 # :nodoc:
    FUNCTION_SET_ALTITUDE_CALLBACK_PERIOD = 11 # :nodoc:
    FUNCTION_GET_ALTITUDE_CALLBACK_PERIOD = 12 # :nodoc:
    FUNCTION_SET_DATE_TIME_CALLBACK_PERIOD = 13 # :nodoc:
    FUNCTION_GET_DATE_TIME_CALLBACK_PERIOD = 14 # :nodoc:
    FUNCTION_SET_MOTION_CALLBACK_PERIOD = 15 # :nodoc:
    FUNCTION_GET_MOTION_CALLBACK_PERIOD = 16 # :nodoc:
    FUNCTION_GET_IDENTITY = 255 # :nodoc:

    FIX_NO_FIX = 1 # :nodoc:
    FIX_2D_FIX = 2 # :nodoc:
    FIX_3D_FIX = 3 # :nodoc:
    RESTART_TYPE_HOT_START = 0 # :nodoc:
    RESTART_TYPE_WARM_START = 1 # :nodoc:
    RESTART_TYPE_COLD_START = 2 # :nodoc:
    RESTART_TYPE_FACTORY_RESET = 3 # :nodoc:

    # Creates an object with the unique device ID <tt>uid</tt> and adds it to
    # the IP Connection <tt>ipcon</tt>.
    def initialize(uid, ipcon)
      super uid, ipcon

      @api_version = [2, 0, 0]

      @response_expected[FUNCTION_GET_COORDINATES] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_STATUS] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_ALTITUDE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_MOTION] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_DATE_TIME] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_RESTART] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_SET_COORDINATES_CALLBACK_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_COORDINATES_CALLBACK_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_STATUS_CALLBACK_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_STATUS_CALLBACK_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_ALTITUDE_CALLBACK_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_ALTITUDE_CALLBACK_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_DATE_TIME_CALLBACK_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_DATE_TIME_CALLBACK_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_MOTION_CALLBACK_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_MOTION_CALLBACK_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[CALLBACK_COORDINATES] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_STATUS] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_ALTITUDE] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_MOTION] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_DATE_TIME] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[FUNCTION_GET_IDENTITY] = RESPONSE_EXPECTED_ALWAYS_TRUE

      @callback_formats[CALLBACK_COORDINATES] = 'L k L k S S S S'
      @callback_formats[CALLBACK_STATUS] = 'C C C'
      @callback_formats[CALLBACK_ALTITUDE] = 'L L'
      @callback_formats[CALLBACK_MOTION] = 'L L'
      @callback_formats[CALLBACK_DATE_TIME] = 'L L'
    end

    # Returns the GPS coordinates. Latitude and longitude are given in the
    # DD.dddddd° format, the value 57123468 means 57.123468°.
    # The parameter ns and ew are the cardinal directions for
    # latitude and longitude. Possible values for ns and ew are 'N', 'S', 'E'
    # and 'W' (north, south, east and west).
    # 
    # PDOP, HDOP and VDOP are the dilution of precision (DOP) values. They specify
    # the additional multiplicative effect of GPS satellite geometry on GPS 
    # precision. See 
    # `here <http://en.wikipedia.org/wiki/Dilution_of_precision_(GPS)>`__
    # for more information. The values are give in hundredths.
    # 
    # EPE is the "Estimated Position Error". The EPE is given in cm. This is not the
    # absolute maximum error, it is the error with a specific confidence. See
    # `here <http://www.nps.gov/gis/gps/WhatisEPE.html>`__ for more information.
    # 
    # This data is only valid if there is currently a fix as indicated by
    # BrickletGPS#get_status.
    def get_coordinates
      send_request(FUNCTION_GET_COORDINATES, [], '', 18, 'L k L k S S S S')
    end

    # Returns the current fix status, the number of satellites that are in view and
    # the number of satellites that are currently used.
    # 
    # Possible fix status values can be:
    # 
    #  "Value", "Description"
    # 
    #  "1", "No Fix"
    #  "2", "2D Fix"
    #  "3", "3D Fix"
    def get_status
      send_request(FUNCTION_GET_STATUS, [], '', 3, 'C C C')
    end

    # Returns the current altitude and corresponding geoidal separation.
    # 
    # Both values are given in cm.
    # 
    # This data is only valid if there is currently a fix as indicated by
    # BrickletGPS#get_status.
    def get_altitude
      send_request(FUNCTION_GET_ALTITUDE, [], '', 8, 'L L')
    end

    # Returns the current course and speed. Course is given in hundredths degree
    # and speed is given in hundredths km/h. A course of 0° means the Bricklet is
    # traveling north bound and 90° means it is traveling east bound.
    # 
    # Please note that this only returns useful values if an actual movement
    # is present.
    # 
    # This data is only valid if there is currently a fix as indicated by
    # BrickletGPS#get_status.
    def get_motion
      send_request(FUNCTION_GET_MOTION, [], '', 8, 'L L')
    end

    # Returns the current date and time. The date is
    # given in the format ddmmyy and the time is given
    # in the format hhmmss.sss. For example, 140713 means
    # 14.05.13 as date and 195923568 means 19:59:23.568 as time.
    def get_date_time
      send_request(FUNCTION_GET_DATE_TIME, [], '', 8, 'L L')
    end

    # Restarts the GPS Bricklet, the following restart types are available:
    # 
    #  "Value", "Description"
    # 
    #  "0", "Hot start (use all available data in the NV store)"
    #  "1", "Warm start (don't use ephemeris at restart)"
    #  "2", "Cold start (don't use time, position, almanacs and ephemeris at restart)"
    #  "3", "Factory reset (clear all system/user configurations at restart)"
    def restart(restart_type)
      send_request(FUNCTION_RESTART, [restart_type], 'C', 0, '')
    end

    # Sets the period in ms with which the CALLBACK_COORDINATES callback is triggered
    # periodically. A value of 0 turns the callback off.
    # 
    # CALLBACK_COORDINATES is only triggered if the coordinates changed since the
    # last triggering.
    # 
    # The default value is 0.
    def set_coordinates_callback_period(period)
      send_request(FUNCTION_SET_COORDINATES_CALLBACK_PERIOD, [period], 'L', 0, '')
    end

    # Returns the period as set by BrickletGPS#set_coordinates_callback_period.
    def get_coordinates_callback_period
      send_request(FUNCTION_GET_COORDINATES_CALLBACK_PERIOD, [], '', 4, 'L')
    end

    # Sets the period in ms with which the CALLBACK_STATUS callback is triggered
    # periodically. A value of 0 turns the callback off.
    # 
    # CALLBACK_STATUS is only triggered if the status changed since the
    # last triggering.
    # 
    # The default value is 0.
    def set_status_callback_period(period)
      send_request(FUNCTION_SET_STATUS_CALLBACK_PERIOD, [period], 'L', 0, '')
    end

    # Returns the period as set by BrickletGPS#set_status_callback_period.
    def get_status_callback_period
      send_request(FUNCTION_GET_STATUS_CALLBACK_PERIOD, [], '', 4, 'L')
    end

    # Sets the period in ms with which the CALLBACK_ALTITUDE callback is triggered
    # periodically. A value of 0 turns the callback off.
    # 
    # CALLBACK_ALTITUDE is only triggered if the altitude changed since the
    # last triggering.
    # 
    # The default value is 0.
    def set_altitude_callback_period(period)
      send_request(FUNCTION_SET_ALTITUDE_CALLBACK_PERIOD, [period], 'L', 0, '')
    end

    # Returns the period as set by BrickletGPS#set_altitude_callback_period.
    def get_altitude_callback_period
      send_request(FUNCTION_GET_ALTITUDE_CALLBACK_PERIOD, [], '', 4, 'L')
    end

    # Sets the period in ms with which the CALLBACK_DATE_TIME callback is triggered
    # periodically. A value of 0 turns the callback off.
    # 
    # CALLBACK_DATE_TIME is only triggered if the date or time changed since the
    # last triggering.
    # 
    # The default value is 0.
    def set_date_time_callback_period(period)
      send_request(FUNCTION_SET_DATE_TIME_CALLBACK_PERIOD, [period], 'L', 0, '')
    end

    # Returns the period as set by BrickletGPS#set_date_time_callback_period.
    def get_date_time_callback_period
      send_request(FUNCTION_GET_DATE_TIME_CALLBACK_PERIOD, [], '', 4, 'L')
    end

    # Sets the period in ms with which the CALLBACK_MOTION callback is triggered
    # periodically. A value of 0 turns the callback off.
    # 
    # CALLBACK_MOTION is only triggered if the motion changed since the
    # last triggering.
    # 
    # The default value is 0.
    def set_motion_callback_period(period)
      send_request(FUNCTION_SET_MOTION_CALLBACK_PERIOD, [period], 'L', 0, '')
    end

    # Returns the period as set by BrickletGPS#set_motion_callback_period.
    def get_motion_callback_period
      send_request(FUNCTION_GET_MOTION_CALLBACK_PERIOD, [], '', 4, 'L')
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

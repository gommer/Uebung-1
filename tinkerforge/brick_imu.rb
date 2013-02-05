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
  # Device for sensing acceleration, magnetic field and angular velocity
  class BrickIMU < Device
    DEVICE_IDENTIFIER = 16 # :nodoc:

    # This callback is triggered periodically with the period that is set by
    # BrickIMU#set_acceleration_period. The parameters are the acceleration
    # for the x, y and z axis.
    CALLBACK_ACCELERATION = 31

    # This callback is triggered periodically with the period that is set by
    # BrickIMU#set_magnetic_field_period. The parameters are the magnetic field
    # for the x, y and z axis.
    CALLBACK_MAGNETIC_FIELD = 32

    # This callback is triggered periodically with the period that is set by
    # BrickIMU#set_angular_velocity_period. The parameters are the angular velocity
    # for the x, y and z axis.
    CALLBACK_ANGULAR_VELOCITY = 33

    # This callback is triggered periodically with the period that is set by
    # BrickIMU#set_all_data_period. The parameters are the acceleration,
    # the magnetic field and the angular velocity for the x, y and z axis as
    # well as the temperature of the IMU Brick.
    CALLBACK_ALL_DATA = 34

    # This callback is triggered periodically with the period that is set by
    # BrickIMU#set_orientation_period. The parameters are the orientation
    # (roll, pitch and yaw) of the IMU Brick in Euler angles. See
    # BrickIMU#get_orientation for details.
    CALLBACK_ORIENTATION = 35

    # This callback is triggered periodically with the period that is set by
    # BrickIMU#set_quaternion_period. The parameters are the orientation
    # (x, y, z, w) of the IMU Brick in quaternions. See BrickIMU#get_quaternion
    # for details.
    CALLBACK_QUATERNION = 36

    FUNCTION_GET_ACCELERATION = 1 # :nodoc:
    FUNCTION_GET_MAGNETIC_FIELD = 2 # :nodoc:
    FUNCTION_GET_ANGULAR_VELOCITY = 3 # :nodoc:
    FUNCTION_GET_ALL_DATA = 4 # :nodoc:
    FUNCTION_GET_ORIENTATION = 5 # :nodoc:
    FUNCTION_GET_QUATERNION = 6 # :nodoc:
    FUNCTION_GET_IMU_TEMPERATURE = 7 # :nodoc:
    FUNCTION_LEDS_ON = 8 # :nodoc:
    FUNCTION_LEDS_OFF = 9 # :nodoc:
    FUNCTION_ARE_LEDS_ON = 10 # :nodoc:
    FUNCTION_SET_ACCELERATION_RANGE = 11 # :nodoc:
    FUNCTION_GET_ACCELERATION_RANGE = 12 # :nodoc:
    FUNCTION_SET_MAGNETOMETER_RANGE = 13 # :nodoc:
    FUNCTION_GET_MAGNETOMETER_RANGE = 14 # :nodoc:
    FUNCTION_SET_CONVERGENCE_SPEED = 15 # :nodoc:
    FUNCTION_GET_CONVERGENCE_SPEED = 16 # :nodoc:
    FUNCTION_SET_CALIBRATION = 17 # :nodoc:
    FUNCTION_GET_CALIBRATION = 18 # :nodoc:
    FUNCTION_SET_ACCELERATION_PERIOD = 19 # :nodoc:
    FUNCTION_GET_ACCELERATION_PERIOD = 20 # :nodoc:
    FUNCTION_SET_MAGNETIC_FIELD_PERIOD = 21 # :nodoc:
    FUNCTION_GET_MAGNETIC_FIELD_PERIOD = 22 # :nodoc:
    FUNCTION_SET_ANGULAR_VELOCITY_PERIOD = 23 # :nodoc:
    FUNCTION_GET_ANGULAR_VELOCITY_PERIOD = 24 # :nodoc:
    FUNCTION_SET_ALL_DATA_PERIOD = 25 # :nodoc:
    FUNCTION_GET_ALL_DATA_PERIOD = 26 # :nodoc:
    FUNCTION_SET_ORIENTATION_PERIOD = 27 # :nodoc:
    FUNCTION_GET_ORIENTATION_PERIOD = 28 # :nodoc:
    FUNCTION_SET_QUATERNION_PERIOD = 29 # :nodoc:
    FUNCTION_GET_QUATERNION_PERIOD = 30 # :nodoc:
    FUNCTION_GET_PROTOCOL1_BRICKLET_NAME = 241 # :nodoc:
    FUNCTION_GET_CHIP_TEMPERATURE = 242 # :nodoc:
    FUNCTION_RESET = 243 # :nodoc:
    FUNCTION_GET_IDENTITY = 255 # :nodoc:

    CALIBRATION_TYPE_ACCELEROMETER_GAIN = 0 # :nodoc:
    CALIBRATION_TYPE_ACCELEROMETER_BIAS = 1 # :nodoc:
    CALIBRATION_TYPE_MAGNETOMETER_GAIN = 2 # :nodoc:
    CALIBRATION_TYPE_MAGNETOMETER_BIAS = 3 # :nodoc:
    CALIBRATION_TYPE_GYROSCOPE_GAIN = 4 # :nodoc:
    CALIBRATION_TYPE_GYROSCOPE_BIAS = 5 # :nodoc:

    # Creates an object with the unique device ID <tt>uid</tt> and adds it to
    # the IP Connection <tt>ipcon</tt>.
    def initialize(uid, ipcon)
      super uid, ipcon

      @api_version = [2, 0, 0]

      @response_expected[FUNCTION_GET_ACCELERATION] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_MAGNETIC_FIELD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_ANGULAR_VELOCITY] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_ALL_DATA] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_ORIENTATION] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_QUATERNION] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_IMU_TEMPERATURE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_LEDS_ON] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_LEDS_OFF] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_ARE_LEDS_ON] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_ACCELERATION_RANGE] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_ACCELERATION_RANGE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_MAGNETOMETER_RANGE] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_MAGNETOMETER_RANGE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_CONVERGENCE_SPEED] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_CONVERGENCE_SPEED] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_CALIBRATION] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_CALIBRATION] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_ACCELERATION_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_ACCELERATION_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_MAGNETIC_FIELD_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_MAGNETIC_FIELD_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_ANGULAR_VELOCITY_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_ANGULAR_VELOCITY_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_ALL_DATA_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_ALL_DATA_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_ORIENTATION_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_ORIENTATION_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_QUATERNION_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_QUATERNION_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[CALLBACK_ACCELERATION] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_MAGNETIC_FIELD] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_ANGULAR_VELOCITY] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_ALL_DATA] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_ORIENTATION] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_QUATERNION] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[FUNCTION_GET_PROTOCOL1_BRICKLET_NAME] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_CHIP_TEMPERATURE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_RESET] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_IDENTITY] = RESPONSE_EXPECTED_ALWAYS_TRUE

      @callback_formats[CALLBACK_ACCELERATION] = 's s s'
      @callback_formats[CALLBACK_MAGNETIC_FIELD] = 's s s'
      @callback_formats[CALLBACK_ANGULAR_VELOCITY] = 's s s'
      @callback_formats[CALLBACK_ALL_DATA] = 's s s s s s s s s s'
      @callback_formats[CALLBACK_ORIENTATION] = 's s s'
      @callback_formats[CALLBACK_QUATERNION] = 'e e e e'
    end

    # Returns the calibrated acceleration from the accelerometer for the 
    # x, y and z axis in mG (G/1000, 1G = 9.80605m/s²).
    # 
    # If you want to get the acceleration periodically, it is recommended 
    # to use the callback CALLBACK_ACCELERATION and set the period with 
    # BrickIMU#set_acceleration_period.
    def get_acceleration
      send_request(FUNCTION_GET_ACCELERATION, [], '', 6, 's s s')
    end

    # Returns the calibrated magnetic field from the magnetometer for the 
    # x, y and z axis in mG (Milligauss or Nanotesla).
    # 
    # If you want to get the magnetic field periodically, it is recommended 
    # to use the callback CALLBACK_MAGNETIC_FIELD and set the period with 
    # BrickIMU#set_magnetic_field_period.
    def get_magnetic_field
      send_request(FUNCTION_GET_MAGNETIC_FIELD, [], '', 6, 's s s')
    end

    # Returns the calibrated angular velocity from the gyroscope for the 
    # x, y and z axis in °/17.5s (you have to divide by 17.5 to
    # get the value in °/s).
    # 
    # If you want to get the angular velocity periodically, it is recommended 
    # to use the callback CALLBACK_ANGULAR_VELOCITY and set the period with 
    # BrickIMU#set_angular_velocity_period.
    def get_angular_velocity
      send_request(FUNCTION_GET_ANGULAR_VELOCITY, [], '', 6, 's s s')
    end

    # Returns the data from BrickIMU#get_acceleration, BrickIMU#get_magnetic_field 
    # and BrickIMU#get_angular_velocity as well as the temperature of the IMU Brick.
    # 
    # The temperature is given in °C/100.
    # 
    # If you want to get the data periodically, it is recommended 
    # to use the callback CALLBACK_ALL_DATA and set the period with 
    # BrickIMU#set_all_data_period.
    def get_all_data
      send_request(FUNCTION_GET_ALL_DATA, [], '', 20, 's s s s s s s s s s')
    end

    # Returns the current orientation (roll, pitch, yaw) of the IMU Brick as Euler
    # angles in one-hundredth degree. Note that Euler angles always experience a
    # `gimbal lock <http://en.wikipedia.org/wiki/Gimbal_lock>`__.
    # 
    # We recommend that you use quaternions instead.
    # 
    # The order to sequence in which the orientation values should be applied is 
    # roll, yaw, pitch. 
    # 
    # If you want to get the orientation periodically, it is recommended 
    # to use the callback CALLBACK_ORIENTATION and set the period with 
    # BrickIMU#set_orientation_period.
    def get_orientation
      send_request(FUNCTION_GET_ORIENTATION, [], '', 6, 's s s')
    end

    # Returns the current orientation (x, y, z, w) of the IMU as 
    # `quaternions <http://en.wikipedia.org/wiki/Quaternions_and_spatial_rotation>`__.
    # 
    # You can go from quaternions to Euler angles with the following formula::
    # 
    #  roll  = atan2(2*y*w - 2*x*z, 1 - 2*y*y - 2*z*z)
    #  pitch = atan2(2*x*w - 2*y*z, 1 - 2*x*x - 2*z*z)
    #  yaw   =  asin(2*x*y + 2*z*w)
    # 
    # This process is not reversible, because of the 
    # `gimbal lock <http://en.wikipedia.org/wiki/Gimbal_lock>`__.
    # 
    # Converting the quaternions to an OpenGL transformation matrix is
    # possible with the following formula::
    # 
    #  matrix = [[1 - 2*(y*y + z*z),     2*(x*y - w*z),     2*(x*z + w*y), 0],
    #            [    2*(x*y + w*z), 1 - 2*(x*x + z*z),     2*(y*z - w*x), 0],
    #            [    2*(x*z - w*y),     2*(y*z + w*x), 1 - 2*(x*x + y*y), 0],
    #            [                0,                 0,                 0, 1]]
    # 
    # If you want to get the quaternions periodically, it is recommended 
    # to use the callback CALLBACK_QUATERNION and set the period with 
    # BrickIMU#set_quaternion_period.
    def get_quaternion
      send_request(FUNCTION_GET_QUATERNION, [], '', 16, 'e e e e')
    end

    # Returns the temperature of the IMU Brick. The temperature is given in 
    # °C/100.
    def get_imu_temperature
      send_request(FUNCTION_GET_IMU_TEMPERATURE, [], '', 2, 's')
    end

    # Turns the orientation and direction LEDs of the IMU Brick on.
    def leds_on
      send_request(FUNCTION_LEDS_ON, [], '', 0, '')
    end

    # Turns the orientation and direction LEDs of the IMU Brick off.
    def leds_off
      send_request(FUNCTION_LEDS_OFF, [], '', 0, '')
    end

    # Returns *true* if the orientation and direction LEDs of the IMU Brick
    # are on, *false* otherwise.
    def are_leds_on
      send_request(FUNCTION_ARE_LEDS_ON, [], '', 1, '?')
    end

    # Not implemented yet.
    def set_acceleration_range(range)
      send_request(FUNCTION_SET_ACCELERATION_RANGE, [range], 'C', 0, '')
    end

    # Not implemented yet.
    def get_acceleration_range
      send_request(FUNCTION_GET_ACCELERATION_RANGE, [], '', 1, 'C')
    end

    # Not implemented yet.
    def set_magnetometer_range(range)
      send_request(FUNCTION_SET_MAGNETOMETER_RANGE, [range], 'C', 0, '')
    end

    # Not implemented yet.
    def get_magnetometer_range
      send_request(FUNCTION_GET_MAGNETOMETER_RANGE, [], '', 1, 'C')
    end

    # Sets the convergence speed of the IMU Brick in °/s. The convergence speed 
    # determines how the different sensor measurements are fused.
    # 
    # If the orientation of the IMU Brick is off by 10° and the convergence speed is 
    # set to 20°/s, it will take 0.5s until the orientation is corrected. However,
    # if the correct orientation is reached and the convergence speed is too high,
    # the orientation will fluctuate with the fluctuations of the accelerometer and
    # the magnetometer.
    # 
    # If you set the convergence speed to 0, practically only the gyroscope is used
    # to calculate the orientation. This gives very smooth movements, but errors of the
    # gyroscope will not be corrected. If you set the convergence speed to something
    # above 500, practically only the magnetometer and the accelerometer are used to
    # calculate the orientation. In this case the movements are abrupt and the values
    # will fluctuate, but there won't be any errors that accumulate over time.
    # 
    # In an application with high angular velocities, we recommend a high convergence
    # speed, so the errors of the gyroscope can be corrected fast. In applications with
    # only slow movements we recommend a low convergence speed. You can change the
    # convergence speed on the fly. So it is possible (and recommended) to increase 
    # the convergence speed before an abrupt movement and decrease it afterwards 
    # again.
    # 
    # You might want to play around with the convergence speed in the Brick Viewer to
    # get a feeling for a good value for your application.
    # 
    # The default value is 30.
    def set_convergence_speed(speed)
      send_request(FUNCTION_SET_CONVERGENCE_SPEED, [speed], 'S', 0, '')
    end

    # Returns the convergence speed as set by BrickIMU#set_convergence_speed.
    def get_convergence_speed
      send_request(FUNCTION_GET_CONVERGENCE_SPEED, [], '', 2, 'S')
    end

    # There are several different types that can be calibrated:
    # 
    #  "Type", "Description",        "Values"
    # 
    #  "0",    "Accelerometer Gain", "[mul x, mul y, mul z, div x, div y, div z, 0, 0, 0, 0]"
    #  "1",    "Accelerometer Bias", "[bias x, bias y, bias z, 0, 0, 0, 0, 0, 0, 0]"
    #  "2",    "Magnetometer Gain",  "[mul x, mul y, mul z, div x, div y, div z, 0, 0, 0, 0]"
    #  "3",    "Magnetometer Bias",  "[bias x, bias y, bias z, 0, 0, 0, 0, 0, 0, 0]"
    #  "4",    "Gyroscope Gain",     "[mul x, mul y, mul z, div x, div y, div z, 0, 0, 0, 0]"
    #  "5",    "Gyroscope Bias",     "[bias xl, bias yl, bias zl, temp l, bias xh, bias yh, bias zh, temp h, 0, 0]"
    # 
    # The calibration via gain and bias is done with the following formula::
    # 
    #  new_value = (bias + orig_value) * gain_mul / gain_div
    # 
    # If you really want to write your own calibration software, please keep
    # in mind that you first have to undo the old calibration (set bias to 0 and
    # gain to 1/1) and that you have to average over several thousand values
    # to obtain a usable result in the end.
    # 
    # The gyroscope bias is highly dependent on the temperature, so you have to
    # calibrate the bias two times with different temperatures. The values xl, yl, zl 
    # and temp l are the bias for x, y, z and the corresponding temperature for a 
    # low temperature. The values xh, yh, zh and temp h are the same for a high 
    # temperatures. The temperature difference should be at least 5°C. If you have 
    # a temperature where the IMU Brick is mostly used, you should use this 
    # temperature for one of the sampling points.
    # 
    # .. note::
    #  We highly recommend that you use the Brick Viewer to calibrate your
    #  IMU Brick.
    def set_calibration(typ, data)
      send_request(FUNCTION_SET_CALIBRATION, [typ, data], 'C s10', 0, '')
    end

    # Returns the calibration for a given type as set by BrickIMU#set_calibration.
    def get_calibration(typ)
      send_request(FUNCTION_GET_CALIBRATION, [typ], 'C', 20, 's10')
    end

    # Sets the period in ms with which the CALLBACK_ACCELERATION callback is triggered
    # periodically. A value of 0 turns the callback off.
    # 
    # The default value is 0.
    def set_acceleration_period(period)
      send_request(FUNCTION_SET_ACCELERATION_PERIOD, [period], 'L', 0, '')
    end

    # Returns the period as set by BrickIMU#set_acceleration_period.
    def get_acceleration_period
      send_request(FUNCTION_GET_ACCELERATION_PERIOD, [], '', 4, 'L')
    end

    # Sets the period in ms with which the CALLBACK_MAGNETIC_FIELD callback is triggered
    # periodically. A value of 0 turns the callback off.
    def set_magnetic_field_period(period)
      send_request(FUNCTION_SET_MAGNETIC_FIELD_PERIOD, [period], 'L', 0, '')
    end

    # Returns the period as set by BrickIMU#set_magnetic_field_period.
    def get_magnetic_field_period
      send_request(FUNCTION_GET_MAGNETIC_FIELD_PERIOD, [], '', 4, 'L')
    end

    # Sets the period in ms with which the CALLBACK_ANGULAR_VELOCITY callback is triggered
    # periodically. A value of 0 turns the callback off.
    def set_angular_velocity_period(period)
      send_request(FUNCTION_SET_ANGULAR_VELOCITY_PERIOD, [period], 'L', 0, '')
    end

    # Returns the period as set by BrickIMU#set_angular_velocity_period.
    def get_angular_velocity_period
      send_request(FUNCTION_GET_ANGULAR_VELOCITY_PERIOD, [], '', 4, 'L')
    end

    # Sets the period in ms with which the CALLBACK_ALL_DATA callback is triggered
    # periodically. A value of 0 turns the callback off.
    def set_all_data_period(period)
      send_request(FUNCTION_SET_ALL_DATA_PERIOD, [period], 'L', 0, '')
    end

    # Returns the period as set by BrickIMU#set_all_data_period.
    def get_all_data_period
      send_request(FUNCTION_GET_ALL_DATA_PERIOD, [], '', 4, 'L')
    end

    # Sets the period in ms with which the CALLBACK_ORIENTATION callback is triggered
    # periodically. A value of 0 turns the callback off.
    def set_orientation_period(period)
      send_request(FUNCTION_SET_ORIENTATION_PERIOD, [period], 'L', 0, '')
    end

    # Returns the period as set by BrickIMU#set_orientation_period.
    def get_orientation_period
      send_request(FUNCTION_GET_ORIENTATION_PERIOD, [], '', 4, 'L')
    end

    # Sets the period in ms with which the CALLBACK_QUATERNION callback is triggered
    # periodically. A value of 0 turns the callback off.
    def set_quaternion_period(period)
      send_request(FUNCTION_SET_QUATERNION_PERIOD, [period], 'L', 0, '')
    end

    # Returns the period as set by BrickIMU#set_quaternion_period.
    def get_quaternion_period
      send_request(FUNCTION_GET_QUATERNION_PERIOD, [], '', 4, 'L')
    end

    # Returns the firmware and protocol version and the name of the Bricklet for a given port.
    # 
    # This functions sole purpose is to allow automatic flashing of v1.x.y Bricklet plugins.
    # 
    # .. versionadded:: 2.0.0~(Firmware)
    def get_protocol1_bricklet_name(port)
      send_request(FUNCTION_GET_PROTOCOL1_BRICKLET_NAME, [port], 'k', 44, 'C C3 Z40')
    end

    # Returns the temperature in °C/10 as measured inside the microcontroller. The
    # value returned is not the ambient temperature!
    # 
    # The temperature is only proportional to the real temperature and it has an
    # accuracy of +-15%. Practically it is only useful as an indicator for
    # temperature changes.
    # 
    # .. versionadded:: 1.0.7~(Firmware)
    def get_chip_temperature
      send_request(FUNCTION_GET_CHIP_TEMPERATURE, [], '', 2, 's')
    end

    # Calling this function will reset the Brick. Calling this function
    # on a Brick inside of a stack will reset the whole stack.
    # 
    # After a reset you have to create new device objects,
    # calling functions on the existing ones will result in
    # undefined behavior!
    # 
    # .. versionadded:: 1.0.7~(Firmware)
    def reset
      send_request(FUNCTION_RESET, [], '', 0, '')
    end

    # Returns the UID, the UID where the Brick is connected to, 
    # the position, the hardware and firmware version as well as the
    # device identifier.
    # 
    # The position can be '0'-'8' (stack position).
    # 
    # The device identifiers can be found :ref:`here <device_identifier>`.
    # 
    # .. versionadded:: 2.0.0~(Firmware)
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

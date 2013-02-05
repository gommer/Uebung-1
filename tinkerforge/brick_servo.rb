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
  # Device for controlling up to seven servos
  class BrickServo < Device
    DEVICE_IDENTIFIER = 14 # :nodoc:

    # This callback is triggered when the input voltage drops below the value set by
    # BrickServo#set_minimum_voltage. The parameter is the current voltage given
    # in mV.
    CALLBACK_UNDER_VOLTAGE = 26

    # This callback is triggered when a position set by BrickServo#set_position
    # is reached. The parameters are the servo and the position that is reached.
    # 
    # .. note::
    #  Since we can't get any feedback from the servo, this only works if the
    #  velocity (see BrickServo#set_velocity) is set smaller or equal to the
    #  maximum velocity of the servo. Otherwise the servo will lag behind the
    #  control value and the callback will be triggered too early.
    CALLBACK_POSITION_REACHED = 27

    # This callback is triggered when a velocity set by BrickServo#set_velocity
    # is reached. The parameters are the servo and the velocity that is reached.
    # 
    # .. note::
    #  Since we can't get any feedback from the servo, this only works if the
    #  acceleration (see BrickServo#set_acceleration) is set smaller or equal to the
    #  maximum acceleration of the servo. Otherwise the servo will lag behind the
    #  control value and the callback will be triggered too early.
    CALLBACK_VELOCITY_REACHED = 28

    FUNCTION_ENABLE = 1 # :nodoc:
    FUNCTION_DISABLE = 2 # :nodoc:
    FUNCTION_IS_ENABLED = 3 # :nodoc:
    FUNCTION_SET_POSITION = 4 # :nodoc:
    FUNCTION_GET_POSITION = 5 # :nodoc:
    FUNCTION_GET_CURRENT_POSITION = 6 # :nodoc:
    FUNCTION_SET_VELOCITY = 7 # :nodoc:
    FUNCTION_GET_VELOCITY = 8 # :nodoc:
    FUNCTION_GET_CURRENT_VELOCITY = 9 # :nodoc:
    FUNCTION_SET_ACCELERATION = 10 # :nodoc:
    FUNCTION_GET_ACCELERATION = 11 # :nodoc:
    FUNCTION_SET_OUTPUT_VOLTAGE = 12 # :nodoc:
    FUNCTION_GET_OUTPUT_VOLTAGE = 13 # :nodoc:
    FUNCTION_SET_PULSE_WIDTH = 14 # :nodoc:
    FUNCTION_GET_PULSE_WIDTH = 15 # :nodoc:
    FUNCTION_SET_DEGREE = 16 # :nodoc:
    FUNCTION_GET_DEGREE = 17 # :nodoc:
    FUNCTION_SET_PERIOD = 18 # :nodoc:
    FUNCTION_GET_PERIOD = 19 # :nodoc:
    FUNCTION_GET_SERVO_CURRENT = 20 # :nodoc:
    FUNCTION_GET_OVERALL_CURRENT = 21 # :nodoc:
    FUNCTION_GET_STACK_INPUT_VOLTAGE = 22 # :nodoc:
    FUNCTION_GET_EXTERNAL_INPUT_VOLTAGE = 23 # :nodoc:
    FUNCTION_SET_MINIMUM_VOLTAGE = 24 # :nodoc:
    FUNCTION_GET_MINIMUM_VOLTAGE = 25 # :nodoc:
    FUNCTION_GET_PROTOCOL1_BRICKLET_NAME = 241 # :nodoc:
    FUNCTION_GET_CHIP_TEMPERATURE = 242 # :nodoc:
    FUNCTION_RESET = 243 # :nodoc:
    FUNCTION_GET_IDENTITY = 255 # :nodoc:


    # Creates an object with the unique device ID <tt>uid</tt> and adds it to
    # the IP Connection <tt>ipcon</tt>.
    def initialize(uid, ipcon)
      super uid, ipcon

      @api_version = [2, 0, 0]

      @response_expected[FUNCTION_ENABLE] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_DISABLE] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_IS_ENABLED] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_POSITION] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_POSITION] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_CURRENT_POSITION] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_VELOCITY] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_VELOCITY] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_CURRENT_VELOCITY] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_ACCELERATION] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_ACCELERATION] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_OUTPUT_VOLTAGE] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_OUTPUT_VOLTAGE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_PULSE_WIDTH] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_PULSE_WIDTH] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_DEGREE] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_DEGREE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_PERIOD] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_SERVO_CURRENT] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_OVERALL_CURRENT] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_STACK_INPUT_VOLTAGE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_EXTERNAL_INPUT_VOLTAGE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_MINIMUM_VOLTAGE] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_MINIMUM_VOLTAGE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[CALLBACK_UNDER_VOLTAGE] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_POSITION_REACHED] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_VELOCITY_REACHED] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[FUNCTION_GET_PROTOCOL1_BRICKLET_NAME] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_CHIP_TEMPERATURE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_RESET] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_IDENTITY] = RESPONSE_EXPECTED_ALWAYS_TRUE

      @callback_formats[CALLBACK_UNDER_VOLTAGE] = 'S'
      @callback_formats[CALLBACK_POSITION_REACHED] = 'C s'
      @callback_formats[CALLBACK_VELOCITY_REACHED] = 'C s'
    end

    # Enables a servo (0 to 6). If a servo is enabled, the configured position,
    # velocity, acceleration, etc. are applied immediately.
    def enable(servo_num)
      send_request(FUNCTION_ENABLE, [servo_num], 'C', 0, '')
    end

    # Disables a servo (0 to 6). Disabled servos are not driven at all, i.e. a
    # disabled servo will not hold its position if a load is applied.
    def disable(servo_num)
      send_request(FUNCTION_DISABLE, [servo_num], 'C', 0, '')
    end

    # Returns *true* if the specified servo is enabled, *false* otherwise.
    def is_enabled(servo_num)
      send_request(FUNCTION_IS_ENABLED, [servo_num], 'C', 1, '?')
    end

    # Sets the position in °/100 for the specified servo. 
    # 
    # The default range of the position is -9000 to 9000, but it can be specified
    # according to your servo with BrickServo#set_degree.
    # 
    # If you want to control a linear servo or RC brushless motor controller or
    # similar with the Servo Brick, you can also define lengths or speeds with
    # BrickServo#set_degree.
    def set_position(servo_num, position)
      send_request(FUNCTION_SET_POSITION, [servo_num, position], 'C s', 0, '')
    end

    # Returns the position of the specified servo as set by BrickServo#set_position.
    def get_position(servo_num)
      send_request(FUNCTION_GET_POSITION, [servo_num], 'C', 2, 's')
    end

    # Returns the *current* position of the specified servo. This may not be the
    # value of BrickServo#set_position if the servo is currently approaching a
    # position goal.
    def get_current_position(servo_num)
      send_request(FUNCTION_GET_CURRENT_POSITION, [servo_num], 'C', 2, 's')
    end

    # Sets the maximum velocity of the specified servo in °/100s. The velocity
    # is accelerated according to the value set by BrickServo#set_acceleration.
    # 
    # The minimum velocity is 0 (no movement) and the maximum velocity is 65535.
    # With a value of 65535 the position will be set immediately (no velocity).
    # 
    # The default value is 65535.
    def set_velocity(servo_num, velocity)
      send_request(FUNCTION_SET_VELOCITY, [servo_num, velocity], 'C S', 0, '')
    end

    # Returns the velocity of the specified servo as set by BrickServo#set_velocity.
    def get_velocity(servo_num)
      send_request(FUNCTION_GET_VELOCITY, [servo_num], 'C', 2, 'S')
    end

    # Returns the *current* velocity of the specified servo. This may not be the
    # value of BrickServo#set_velocity if the servo is currently approaching a
    # velocity goal.
    def get_current_velocity(servo_num)
      send_request(FUNCTION_GET_CURRENT_VELOCITY, [servo_num], 'C', 2, 'S')
    end

    # Sets the acceleration of the specified servo in °/100s².
    # 
    # The minimum acceleration is 1 and the maximum acceleration is 65535.
    # With a value of 65535 the velocity will be set immediately (no acceleration).
    # 
    # The default value is 65535.
    def set_acceleration(servo_num, acceleration)
      send_request(FUNCTION_SET_ACCELERATION, [servo_num, acceleration], 'C S', 0, '')
    end

    # Returns the acceleration for the specified servo as set by 
    # BrickServo#set_acceleration.
    def get_acceleration(servo_num)
      send_request(FUNCTION_GET_ACCELERATION, [servo_num], 'C', 2, 'S')
    end

    # Sets the output voltages with which the servos are driven in mV.
    # The minimum output voltage is 5000mV and the maximum output voltage is 
    # 9000mV.
    # 
    # .. note::
    #  We recommend that you set this value to the maximum voltage that is
    #  specified for your servo, most servos achieve their maximum force only
    #  with high voltages.
    # 
    # The default value is 5000.
    def set_output_voltage(voltage)
      send_request(FUNCTION_SET_OUTPUT_VOLTAGE, [voltage], 'S', 0, '')
    end

    # Returns the output voltage as specified by BrickServo#set_output_voltage.
    def get_output_voltage
      send_request(FUNCTION_GET_OUTPUT_VOLTAGE, [], '', 2, 'S')
    end

    # Sets the minimum and maximum pulse width of the specified servo in µs.
    # 
    # Usually, servos are controlled with a 
    # `PWM <http://en.wikipedia.org/wiki/Pulse-width_modulation>`__, whereby the
    # length of the pulse controls the position of the servo. Every servo has
    # different minimum and maximum pulse widths, these can be specified with
    # this function.
    # 
    # If you have a datasheet for your servo that specifies the minimum and
    # maximum pulse width, you should set the values accordingly. If your servo
    # comes without any datasheet you have to find the values via trial and error.
    # 
    # Both values have a range from 1 to 65535 (unsigned 16-bit integer). The
    # minimum must be smaller than the maximum.
    # 
    # The default values are 1000µs (1ms) and 2000µs (2ms) for minimum and 
    # maximum pulse width.
    def set_pulse_width(servo_num, min, max)
      send_request(FUNCTION_SET_PULSE_WIDTH, [servo_num, min, max], 'C S S', 0, '')
    end

    # Returns the minimum and maximum pulse width for the specified servo as set by
    # BrickServo#set_pulse_width.
    def get_pulse_width(servo_num)
      send_request(FUNCTION_GET_PULSE_WIDTH, [servo_num], 'C', 4, 'S S')
    end

    # Sets the minimum and maximum degree for the specified servo (by default
    # given as °/100).
    # 
    # This only specifies the abstract values between which the minimum and maximum
    # pulse width is scaled. For example: If you specify a pulse width of 1000µs
    # to 2000µs and a degree range of -90° to 90°, a call of BrickServo#set_position
    # with 0 will result in a pulse width of 1500µs 
    # (-90° = 1000µs, 90° = 2000µs, etc.).
    # 
    # Possible usage:
    # 
    # * The datasheet of your servo specifies a range of 200° with the middle position
    #   at 110°. In this case you can set the minimum to -9000 and the maximum to 11000.
    # * You measure a range of 220° on your servo and you don't have or need a middle
    #   position. In this case you can set the minimum to 0 and the maximum to 22000.
    # * You have a linear servo with a drive length of 20cm, In this case you could
    #   set the minimum to 0 and the maximum to 20000. Now you can set the Position
    #   with BrickServo#set_position with a resolution of cm/100. Also the velocity will
    #   have a resolution of cm/100s and the acceleration will have a resolution of
    #   cm/100s².
    # * You don't care about units and just want the highest possible resolution. In
    #   this case you should set the minimum to -32767 and the maximum to 32767.
    # * You have a brushless motor with a maximum speed of 10000 rpm and want to
    #   control it with a RC brushless motor controller. In this case you can set the
    #   minimum to 0 and the maximum to 10000. BrickServo#set_position now controls the rpm.
    # 
    # Both values have a possible range from -32767 to 32767 
    # (signed 16-bit integer). The minimum must be smaller than the maximum.
    # 
    # The default values are -9000 and 9000 for the minimum and maximum degree.
    def set_degree(servo_num, min, max)
      send_request(FUNCTION_SET_DEGREE, [servo_num, min, max], 'C s s', 0, '')
    end

    # Returns the minimum and maximum degree for the specified servo as set by
    # BrickServo#set_degree.
    def get_degree(servo_num)
      send_request(FUNCTION_GET_DEGREE, [servo_num], 'C', 4, 's s')
    end

    # Sets the period of the specified servo in µs.
    # 
    # Usually, servos are controlled with a 
    # `PWM <http://en.wikipedia.org/wiki/Pulse-width_modulation>`__. Different
    # servos expect PWMs with different periods. Most servos run well with a 
    # period of about 20ms.
    # 
    # If your servo comes with a datasheet that specifies a period, you should
    # set it accordingly. If you don't have a datasheet and you have no idea
    # what the correct period is, the default value (19.5ms) will most likely
    # work fine. 
    # 
    # The minimum possible period is 2000µs and the maximum is 65535µs.
    # 
    # The default value is 19.5ms (19500µs).
    def set_period(servo_num, period)
      send_request(FUNCTION_SET_PERIOD, [servo_num, period], 'C S', 0, '')
    end

    # Returns the period for the specified servo as set by BrickServo#set_period.
    def get_period(servo_num)
      send_request(FUNCTION_GET_PERIOD, [servo_num], 'C', 2, 'S')
    end

    # Returns the current consumption of the specified servo in mA.
    def get_servo_current(servo_num)
      send_request(FUNCTION_GET_SERVO_CURRENT, [servo_num], 'C', 2, 'S')
    end

    # Returns the current consumption of all servos together in mA.
    def get_overall_current
      send_request(FUNCTION_GET_OVERALL_CURRENT, [], '', 2, 'S')
    end

    # Returns the stack input voltage in mV. The stack input voltage is the
    # voltage that is supplied via the stack, i.e. it is given by a 
    # Step-Down or Step-Up Power Supply.
    def get_stack_input_voltage
      send_request(FUNCTION_GET_STACK_INPUT_VOLTAGE, [], '', 2, 'S')
    end

    # Returns the external input voltage in mV. The external input voltage is
    # given via the black power input connector on the Servo Brick. 
    #  
    # If there is an external input voltage and a stack input voltage, the motors
    # will be driven by the external input voltage. If there is only a stack 
    # voltage present, the motors will be driven by this voltage.
    # 
    # .. warning::
    #  This means, if you have a high stack voltage and a low external voltage,
    #  the motors will be driven with the low external voltage. If you then remove
    #  the external connection, it will immediately be driven by the high
    #  stack voltage
    def get_external_input_voltage
      send_request(FUNCTION_GET_EXTERNAL_INPUT_VOLTAGE, [], '', 2, 'S')
    end

    # Sets the minimum voltage in mV, below which the CALLBACK_UNDER_VOLTAGE callback
    # is triggered. The minimum possible value that works with the Servo Brick is 5V.
    # You can use this function to detect the discharge of a battery that is used
    # to drive the stepper motor. If you have a fixed power supply, you likely do 
    # not need this functionality.
    # 
    # The default value is 5V (5000mV).
    def set_minimum_voltage(voltage)
      send_request(FUNCTION_SET_MINIMUM_VOLTAGE, [voltage], 'S', 0, '')
    end

    # Returns the minimum voltage as set by BrickServo#set_minimum_voltage
    def get_minimum_voltage
      send_request(FUNCTION_GET_MINIMUM_VOLTAGE, [], '', 2, 'S')
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
    # .. versionadded:: 1.1.3~(Firmware)
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
    # .. versionadded:: 1.1.3~(Firmware)
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

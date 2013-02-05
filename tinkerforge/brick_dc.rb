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
  # Device for controlling DC motors
  class BrickDC < Device
    DEVICE_IDENTIFIER = 11 # :nodoc:

    # This callback is triggered when the input voltage drops below the value set by
    # BrickDC#set_minimum_voltage. The parameter is the current voltage given
    # in mV.
    CALLBACK_UNDER_VOLTAGE = 21

    # This callback is triggered if either the current consumption
    # is too high (above 5A) or the temperature of the driver chip is too high
    # (above 175°C). These two possibilities are essentially the same, since the
    # temperature will reach this threshold immediately if the motor consumes too
    # much current. In case of a voltage below 3.3V (external or stack) this
    # callback is triggered as well.
    # 
    # If this callback is triggered, the driver chip gets disabled at the same time.
    # That means, BrickDC#enable has to be called to drive the motor again.
    # 
    # .. note::
    #  This callback only works in Drive/Brake mode (see BrickDC#set_drive_mode). In
    #  Drive/Coast mode it is unfortunately impossible to reliably read the
    #  overcurrent/overtemperature signal from the driver chip.
    CALLBACK_EMERGENCY_SHUTDOWN = 22

    # This callback is triggered whenever a set velocity is reached. For example:
    # If a velocity of 0 is present, acceleration is set to 5000 and velocity
    # to 10000, CALLBACK_VELOCITY_REACHED will be triggered after about 2 seconds, when
    # the set velocity is actually reached.
    # 
    # .. note::
    #  Since we can't get any feedback from the DC motor, this only works if the
    #  acceleration (see BrickDC#set_acceleration) is set smaller or equal to the
    #  maximum acceleration of the motor. Otherwise the motor will lag behind the
    #  control value and the callback will be triggered too early.
    CALLBACK_VELOCITY_REACHED = 23

    # This callback is triggered with the period that is set by
    # BrickDC#set_current_velocity_period. The parameter is the *current* velocity
    # used by the motor.
    # 
    # CALLBACK_CURRENT_VELOCITY is only triggered after the set period if there is
    # a change in the velocity.
    CALLBACK_CURRENT_VELOCITY = 24

    FUNCTION_SET_VELOCITY = 1 # :nodoc:
    FUNCTION_GET_VELOCITY = 2 # :nodoc:
    FUNCTION_GET_CURRENT_VELOCITY = 3 # :nodoc:
    FUNCTION_SET_ACCELERATION = 4 # :nodoc:
    FUNCTION_GET_ACCELERATION = 5 # :nodoc:
    FUNCTION_SET_PWM_FREQUENCY = 6 # :nodoc:
    FUNCTION_GET_PWM_FREQUENCY = 7 # :nodoc:
    FUNCTION_FULL_BRAKE = 8 # :nodoc:
    FUNCTION_GET_STACK_INPUT_VOLTAGE = 9 # :nodoc:
    FUNCTION_GET_EXTERNAL_INPUT_VOLTAGE = 10 # :nodoc:
    FUNCTION_GET_CURRENT_CONSUMPTION = 11 # :nodoc:
    FUNCTION_ENABLE = 12 # :nodoc:
    FUNCTION_DISABLE = 13 # :nodoc:
    FUNCTION_IS_ENABLED = 14 # :nodoc:
    FUNCTION_SET_MINIMUM_VOLTAGE = 15 # :nodoc:
    FUNCTION_GET_MINIMUM_VOLTAGE = 16 # :nodoc:
    FUNCTION_SET_DRIVE_MODE = 17 # :nodoc:
    FUNCTION_GET_DRIVE_MODE = 18 # :nodoc:
    FUNCTION_SET_CURRENT_VELOCITY_PERIOD = 19 # :nodoc:
    FUNCTION_GET_CURRENT_VELOCITY_PERIOD = 20 # :nodoc:
    FUNCTION_GET_PROTOCOL1_BRICKLET_NAME = 241 # :nodoc:
    FUNCTION_GET_CHIP_TEMPERATURE = 242 # :nodoc:
    FUNCTION_RESET = 243 # :nodoc:
    FUNCTION_GET_IDENTITY = 255 # :nodoc:

    DRIVE_MODE_DRIVE_BRAKE = 0 # :nodoc:
    DRIVE_MODE_DRIVE_COAST = 1 # :nodoc:

    # Creates an object with the unique device ID <tt>uid</tt> and adds it to
    # the IP Connection <tt>ipcon</tt>.
    def initialize(uid, ipcon)
      super uid, ipcon

      @api_version = [2, 0, 0]

      @response_expected[FUNCTION_SET_VELOCITY] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_VELOCITY] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_CURRENT_VELOCITY] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_ACCELERATION] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_ACCELERATION] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_PWM_FREQUENCY] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_PWM_FREQUENCY] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_FULL_BRAKE] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_STACK_INPUT_VOLTAGE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_EXTERNAL_INPUT_VOLTAGE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_CURRENT_CONSUMPTION] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_ENABLE] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_DISABLE] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_IS_ENABLED] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_MINIMUM_VOLTAGE] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_MINIMUM_VOLTAGE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_DRIVE_MODE] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_DRIVE_MODE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_CURRENT_VELOCITY_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_CURRENT_VELOCITY_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[CALLBACK_UNDER_VOLTAGE] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_EMERGENCY_SHUTDOWN] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_VELOCITY_REACHED] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_CURRENT_VELOCITY] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[FUNCTION_GET_PROTOCOL1_BRICKLET_NAME] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_CHIP_TEMPERATURE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_RESET] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_IDENTITY] = RESPONSE_EXPECTED_ALWAYS_TRUE

      @callback_formats[CALLBACK_UNDER_VOLTAGE] = 'S'
      @callback_formats[CALLBACK_EMERGENCY_SHUTDOWN] = ''
      @callback_formats[CALLBACK_VELOCITY_REACHED] = 's'
      @callback_formats[CALLBACK_CURRENT_VELOCITY] = 's'
    end

    # Sets the velocity of the motor. Whereas -32767 is full speed backward,
    # 0 is stop and 32767 is full speed forward. Depending on the
    # acceleration (see BrickDC#set_acceleration), the motor is not immediately
    # brought to the velocity but smoothly accelerated.
    # 
    # The velocity describes the duty cycle of the PWM with which the motor is
    # controlled, e.g. a velocity of 3277 sets a PWM with a 10% duty cycle.
    # You can not only control the duty cycle of the PWM but also the frequency,
    # see BrickDC#set_pwm_frequency.
    # 
    # The default velocity is 0.
    def set_velocity(velocity)
      send_request(FUNCTION_SET_VELOCITY, [velocity], 's', 0, '')
    end

    # Returns the velocity as set by BrickDC#set_velocity.
    def get_velocity
      send_request(FUNCTION_GET_VELOCITY, [], '', 2, 's')
    end

    # Returns the *current* velocity of the motor. This value is different
    # from BrickDC#get_velocity whenever the motor is currently accelerating
    # to a goal set by BrickDC#set_velocity.
    def get_current_velocity
      send_request(FUNCTION_GET_CURRENT_VELOCITY, [], '', 2, 's')
    end

    # Sets the acceleration of the motor. It is given in *velocity/s*. An
    # acceleration of 10000 means, that every second the velocity is increased
    # by 10000 (or about 30% duty cycle).
    # 
    # For example: If the current velocity is 0 and you want to accelerate to a
    # velocity of 16000 (about 50% duty cycle) in 10 seconds, you should set
    # an acceleration of 1600.
    # 
    # If acceleration is set to 0, there is no speed ramping, i.e. a new velocity
    # is immediately given to the motor.
    # 
    # The default acceleration is 10000.
    def set_acceleration(acceleration)
      send_request(FUNCTION_SET_ACCELERATION, [acceleration], 'S', 0, '')
    end

    # Returns the acceleration as set by BrickDC#set_acceleration.
    def get_acceleration
      send_request(FUNCTION_GET_ACCELERATION, [], '', 2, 'S')
    end

    # Sets the frequency (in Hz) of the PWM with which the motor is driven.
    # The possible range of the frequency is 1-20000Hz. Often a high frequency
    # is less noisy and the motor runs smoother. However, with a low frequency
    # there are less switches and therefore fewer switching losses. Also with
    # most motors lower frequencies enable higher torque.
    # 
    # If you have no idea what all this means, just ignore this function and use
    # the default frequency, it will very likely work fine.
    # 
    # The default frequency is 15 kHz.
    def set_pwm_frequency(frequency)
      send_request(FUNCTION_SET_PWM_FREQUENCY, [frequency], 'S', 0, '')
    end

    # Returns the PWM frequency (in Hz) as set by BrickDC#set_pwm_frequency.
    def get_pwm_frequency
      send_request(FUNCTION_GET_PWM_FREQUENCY, [], '', 2, 'S')
    end

    # Executes an active full brake.
    # 
    # .. warning::
    #  This function is for emergency purposes,
    #  where an immediate brake is necessary. Depending on the current velocity and
    #  the strength of the motor, a full brake can be quite violent.
    # 
    # Call BrickDC#set_velocity with 0 if you just want to stop the motor.
    def full_brake
      send_request(FUNCTION_FULL_BRAKE, [], '', 0, '')
    end

    # Returns the stack input voltage in mV. The stack input voltage is the
    # voltage that is supplied via the stack, i.e. it is given by a
    # Step-Down or Step-Up Power Supply.
    def get_stack_input_voltage
      send_request(FUNCTION_GET_STACK_INPUT_VOLTAGE, [], '', 2, 'S')
    end

    # Returns the external input voltage in mV. The external input voltage is
    # given via the black power input connector on the DC Brick.
    # 
    # If there is an external input voltage and a stack input voltage, the motor
    # will be driven by the external input voltage. If there is only a stack
    # voltage present, the motor will be driven by this voltage.
    # 
    # .. warning::
    #  This means, if you have a high stack voltage and a low external voltage,
    #  the motor will be driven with the low external voltage. If you then remove
    #  the external connection, it will immediately be driven by the high
    #  stack voltage.
    def get_external_input_voltage
      send_request(FUNCTION_GET_EXTERNAL_INPUT_VOLTAGE, [], '', 2, 'S')
    end

    # Returns the current consumption of the motor in mA.
    def get_current_consumption
      send_request(FUNCTION_GET_CURRENT_CONSUMPTION, [], '', 2, 'S')
    end

    # Enables the driver chip. The driver parameters can be configured (velocity,
    # acceleration, etc) before it is enabled.
    def enable
      send_request(FUNCTION_ENABLE, [], '', 0, '')
    end

    # Disables the driver chip. The configurations are kept (velocity,
    # acceleration, etc) but the motor is not driven until it is enabled again.
    def disable
      send_request(FUNCTION_DISABLE, [], '', 0, '')
    end

    # Returns *true* if the driver chip is enabled, *false* otherwise.
    def is_enabled
      send_request(FUNCTION_IS_ENABLED, [], '', 1, '?')
    end

    # Sets the minimum voltage in mV, below which the CALLBACK_UNDER_VOLTAGE callback
    # is triggered. The minimum possible value that works with the DC Brick is 5V.
    # You can use this function to detect the discharge of a battery that is used
    # to drive the motor. If you have a fixed power supply, you likely do not need
    # this functionality.
    # 
    # The default value is 5V.
    def set_minimum_voltage(voltage)
      send_request(FUNCTION_SET_MINIMUM_VOLTAGE, [voltage], 'S', 0, '')
    end

    # Returns the minimum voltage as set by BrickDC#set_minimum_voltage
    def get_minimum_voltage
      send_request(FUNCTION_GET_MINIMUM_VOLTAGE, [], '', 2, 'S')
    end

    # Sets the drive mode. Possible modes are:
    # 
    # * 0 = Drive/Brake
    # * 1 = Drive/Coast
    # 
    # These modes are different kinds of motor controls.
    # 
    # In Drive/Brake mode, the motor is always either driving or braking. There
    # is no freewheeling. Advantages are: A more linear correlation between
    # PWM and velocity, more exact accelerations and the possibility to drive
    # with slower velocities.
    # 
    # In Drive/Coast mode, the motor is always either driving or freewheeling.
    # Advantages are: Less current consumption and less demands on the motor and
    # driver chip.
    # 
    # The default value is 0 = Drive/Brake.
    def set_drive_mode(mode)
      send_request(FUNCTION_SET_DRIVE_MODE, [mode], 'C', 0, '')
    end

    # Returns the drive mode, as set by BrickDC#set_drive_mode.
    def get_drive_mode
      send_request(FUNCTION_GET_DRIVE_MODE, [], '', 1, 'C')
    end

    # Sets a period in ms with which the CALLBACK_CURRENT_VELOCITY callback is triggered.
    # A period of 0 turns the callback off.
    # 
    # The default value is 0.
    def set_current_velocity_period(period)
      send_request(FUNCTION_SET_CURRENT_VELOCITY_PERIOD, [period], 'S', 0, '')
    end

    # Returns the period as set by BrickDC#set_current_velocity_period.
    def get_current_velocity_period
      send_request(FUNCTION_GET_CURRENT_VELOCITY_PERIOD, [], '', 2, 'S')
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

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
  # Device for controlling stepper motors
  class BrickStepper < Device
    DEVICE_IDENTIFIER = 15 # :nodoc:

    # This callback is triggered when the input voltage drops below the value set by
    # BrickStepper#set_minimum_voltage. The parameter is the current voltage given
    # in mV.
    CALLBACK_UNDER_VOLTAGE = 31

    # This callback is triggered when a position set by BrickStepper#set_steps or
    # BrickStepper#set_target_position is reached.
    # 
    # .. note::
    #  Since we can't get any feedback from the stepper motor, this only works if the
    #  acceleration (see BrickStepper#set_speed_ramping) is set smaller or equal to the
    #  maximum acceleration of the motor. Otherwise the motor will lag behind the
    #  control value and the callback will be triggered too early.
    CALLBACK_POSITION_REACHED = 32

    # This callback is triggered periodically with the period that is set by
    # BrickStepper#set_all_data_period. The parameters are: the current velocity,
    # the current position, the remaining steps, the stack voltage, the external
    # voltage and the current consumption of the stepper motor.
    # 
    # .. versionadded:: 1.1.6~(Firmware)
    CALLBACK_ALL_DATA = 40

    # This callback is triggered whenever the Stepper Brick enters a new state. 
    # It returns the new state as well as the previous state.
    # 
    # Possible states are:
    # 
    # * Stop = 1
    # * Acceleration = 2
    # * Run = 3
    # * Deacceleration = 4
    # * Direction change to forward = 5
    # * Direction change to backward = 6
    # 
    # .. versionadded:: 1.1.6~(Firmware)
    CALLBACK_NEW_STATE = 41

    FUNCTION_SET_MAX_VELOCITY = 1 # :nodoc:
    FUNCTION_GET_MAX_VELOCITY = 2 # :nodoc:
    FUNCTION_GET_CURRENT_VELOCITY = 3 # :nodoc:
    FUNCTION_SET_SPEED_RAMPING = 4 # :nodoc:
    FUNCTION_GET_SPEED_RAMPING = 5 # :nodoc:
    FUNCTION_FULL_BRAKE = 6 # :nodoc:
    FUNCTION_SET_CURRENT_POSITION = 7 # :nodoc:
    FUNCTION_GET_CURRENT_POSITION = 8 # :nodoc:
    FUNCTION_SET_TARGET_POSITION = 9 # :nodoc:
    FUNCTION_GET_TARGET_POSITION = 10 # :nodoc:
    FUNCTION_SET_STEPS = 11 # :nodoc:
    FUNCTION_GET_STEPS = 12 # :nodoc:
    FUNCTION_GET_REMAINING_STEPS = 13 # :nodoc:
    FUNCTION_SET_STEP_MODE = 14 # :nodoc:
    FUNCTION_GET_STEP_MODE = 15 # :nodoc:
    FUNCTION_DRIVE_FORWARD = 16 # :nodoc:
    FUNCTION_DRIVE_BACKWARD = 17 # :nodoc:
    FUNCTION_STOP = 18 # :nodoc:
    FUNCTION_GET_STACK_INPUT_VOLTAGE = 19 # :nodoc:
    FUNCTION_GET_EXTERNAL_INPUT_VOLTAGE = 20 # :nodoc:
    FUNCTION_GET_CURRENT_CONSUMPTION = 21 # :nodoc:
    FUNCTION_SET_MOTOR_CURRENT = 22 # :nodoc:
    FUNCTION_GET_MOTOR_CURRENT = 23 # :nodoc:
    FUNCTION_ENABLE = 24 # :nodoc:
    FUNCTION_DISABLE = 25 # :nodoc:
    FUNCTION_IS_ENABLED = 26 # :nodoc:
    FUNCTION_SET_DECAY = 27 # :nodoc:
    FUNCTION_GET_DECAY = 28 # :nodoc:
    FUNCTION_SET_MINIMUM_VOLTAGE = 29 # :nodoc:
    FUNCTION_GET_MINIMUM_VOLTAGE = 30 # :nodoc:
    FUNCTION_SET_SYNC_RECT = 33 # :nodoc:
    FUNCTION_IS_SYNC_RECT = 34 # :nodoc:
    FUNCTION_SET_TIME_BASE = 35 # :nodoc:
    FUNCTION_GET_TIME_BASE = 36 # :nodoc:
    FUNCTION_GET_ALL_DATA = 37 # :nodoc:
    FUNCTION_SET_ALL_DATA_PERIOD = 38 # :nodoc:
    FUNCTION_GET_ALL_DATA_PERIOD = 39 # :nodoc:
    FUNCTION_GET_PROTOCOL1_BRICKLET_NAME = 241 # :nodoc:
    FUNCTION_GET_CHIP_TEMPERATURE = 242 # :nodoc:
    FUNCTION_RESET = 243 # :nodoc:
    FUNCTION_GET_IDENTITY = 255 # :nodoc:

    STEP_MODE_FULL_STEP = 1 # :nodoc:
    STEP_MODE_HALF_STEP = 2 # :nodoc:
    STEP_MODE_QUARTER_STEP = 4 # :nodoc:
    STEP_MODE_EIGHTH_STEP = 8 # :nodoc:
    STATE_STOP = 1 # :nodoc:
    STATE_ACCELERATION = 2 # :nodoc:
    STATE_RUN = 3 # :nodoc:
    STATE_DEACCELERATION = 4 # :nodoc:
    STATE_DIRECTION_CHANGE_TO_FORWARD = 5 # :nodoc:
    STATE_DIRECTION_CHANGE_TO_BACKWARD = 6 # :nodoc:

    # Creates an object with the unique device ID <tt>uid</tt> and adds it to
    # the IP Connection <tt>ipcon</tt>.
    def initialize(uid, ipcon)
      super uid, ipcon

      @api_version = [2, 0, 0]

      @response_expected[FUNCTION_SET_MAX_VELOCITY] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_MAX_VELOCITY] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_CURRENT_VELOCITY] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_SPEED_RAMPING] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_SPEED_RAMPING] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_FULL_BRAKE] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_SET_CURRENT_POSITION] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_CURRENT_POSITION] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_TARGET_POSITION] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_TARGET_POSITION] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_STEPS] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_STEPS] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_REMAINING_STEPS] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_STEP_MODE] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_STEP_MODE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_DRIVE_FORWARD] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_DRIVE_BACKWARD] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_STOP] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_STACK_INPUT_VOLTAGE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_EXTERNAL_INPUT_VOLTAGE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_CURRENT_CONSUMPTION] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_MOTOR_CURRENT] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_MOTOR_CURRENT] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_ENABLE] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_DISABLE] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_IS_ENABLED] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_DECAY] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_DECAY] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_MINIMUM_VOLTAGE] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_MINIMUM_VOLTAGE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[CALLBACK_UNDER_VOLTAGE] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_POSITION_REACHED] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[FUNCTION_SET_SYNC_RECT] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_IS_SYNC_RECT] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_TIME_BASE] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_TIME_BASE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_ALL_DATA] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_ALL_DATA_PERIOD] = RESPONSE_EXPECTED_TRUE
      @response_expected[FUNCTION_GET_ALL_DATA_PERIOD] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[CALLBACK_ALL_DATA] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_NEW_STATE] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[FUNCTION_GET_PROTOCOL1_BRICKLET_NAME] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_CHIP_TEMPERATURE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_RESET] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_IDENTITY] = RESPONSE_EXPECTED_ALWAYS_TRUE

      @callback_formats[CALLBACK_UNDER_VOLTAGE] = 'S'
      @callback_formats[CALLBACK_POSITION_REACHED] = 'l'
      @callback_formats[CALLBACK_ALL_DATA] = 'S l l S S S'
      @callback_formats[CALLBACK_NEW_STATE] = 'C C'
    end

    # Sets the maximum velocity of the stepper motor in steps per second.
    # This function does *not* start the motor, it merely sets the maximum
    # velocity the stepper motor is accelerated to. To get the motor running use
    # either BrickStepper#set_target_position, BrickStepper#set_steps, BrickStepper#drive_forward or
    # BrickStepper#drive_backward.
    def set_max_velocity(velocity)
      send_request(FUNCTION_SET_MAX_VELOCITY, [velocity], 'S', 0, '')
    end

    # Returns the velocity as set by BrickStepper#set_max_velocity.
    def get_max_velocity
      send_request(FUNCTION_GET_MAX_VELOCITY, [], '', 2, 'S')
    end

    # Returns the *current* velocity of the stepper motor in steps per second.
    def get_current_velocity
      send_request(FUNCTION_GET_CURRENT_VELOCITY, [], '', 2, 'S')
    end

    # Sets the acceleration and deacceleration of the stepper motor. The values
    # are given in *steps/s²*. An acceleration of 1000 means, that
    # every second the velocity is increased by 1000 *steps/s*.
    # 
    # For example: If the current velocity is 0 and you want to accelerate to a
    # velocity of 8000 *steps/s* in 10 seconds, you should set an acceleration
    # of 800 *steps/s²*.
    # 
    # An acceleration/deacceleration of 0 means instantaneous
    # acceleration/deacceleration (not recommended)
    # 
    # The default value is 1000 for both
    def set_speed_ramping(acceleration, deacceleration)
      send_request(FUNCTION_SET_SPEED_RAMPING, [acceleration, deacceleration], 'S S', 0, '')
    end

    # Returns the acceleration and deacceleration as set by 
    # BrickStepper#set_speed_ramping.
    def get_speed_ramping
      send_request(FUNCTION_GET_SPEED_RAMPING, [], '', 4, 'S S')
    end

    # Executes an active full brake. 
    #  
    # .. warning::
    #  This function is for emergency purposes,
    #  where an immediate brake is necessary. Depending on the current velocity and
    #  the strength of the motor, a full brake can be quite violent.
    # 
    # Call BrickStepper#stop if you just want to stop the motor.
    def full_brake
      send_request(FUNCTION_FULL_BRAKE, [], '', 0, '')
    end

    # Sets the current steps of the internal step counter. This can be used to
    # set the current position to 0 when some kind of starting position
    # is reached (e.g. when a CNC machine reaches a corner).
    def set_current_position(position)
      send_request(FUNCTION_SET_CURRENT_POSITION, [position], 'l', 0, '')
    end

    # Returns the current position of the stepper motor in steps. On startup
    # the position is 0. The steps are counted with all possible driving
    # functions (BrickStepper#set_target_position, BrickStepper#set_steps, BrickStepper#drive_forward or
    # BrickStepper#drive_backward). It also is possible to reset the steps to 0 or
    # set them to any other desired value with BrickStepper#set_current_position.
    def get_current_position
      send_request(FUNCTION_GET_CURRENT_POSITION, [], '', 4, 'l')
    end

    # Sets the target position of the stepper motor in steps. For example,
    # if the current position of the motor is 500 and BrickStepper#set_target_position is
    # called with 1000, the stepper motor will drive 500 steps forward. It will
    # use the velocity, acceleration and deacceleration as set by
    # BrickStepper#set_max_velocity and BrickStepper#set_speed_ramping.
    # 
    # A call of BrickStepper#set_target_position with the parameter *x* is equivalent to
    # a call of BrickStepper#set_steps with the parameter 
    # (*x* - BrickStepper#get_current_position).
    def set_target_position(position)
      send_request(FUNCTION_SET_TARGET_POSITION, [position], 'l', 0, '')
    end

    # Returns the last target position as set by BrickStepper#set_target_position.
    def get_target_position
      send_request(FUNCTION_GET_TARGET_POSITION, [], '', 4, 'l')
    end

    # Sets the number of steps the stepper motor should run. Positive values
    # will drive the motor forward and negative values backward. 
    # The velocity, acceleration and deacceleration as set by
    # BrickStepper#set_max_velocity and BrickStepper#set_speed_ramping will be used.
    def set_steps(steps)
      send_request(FUNCTION_SET_STEPS, [steps], 'l', 0, '')
    end

    # Returns the last steps as set by BrickStepper#set_steps.
    def get_steps
      send_request(FUNCTION_GET_STEPS, [], '', 4, 'l')
    end

    # Returns the remaining steps of the last call of BrickStepper#set_steps.
    # For example, if BrickStepper#set_steps is called with 2000 and 
    # BrickStepper#get_remaining_steps is called after the motor has run for 500 steps,
    # it will return 1500.
    def get_remaining_steps
      send_request(FUNCTION_GET_REMAINING_STEPS, [], '', 4, 'l')
    end

    # Sets the step mode of the stepper motor. Possible values are:
    # 
    # * Full Step = 1
    # * Half Step = 2
    # * Quarter Step = 4
    # * Eighth Step = 8
    # 
    # A higher value will increase the resolution and
    # decrease the torque of the stepper motor.
    # 
    # The default value is 8 (Eighth Step).
    def set_step_mode(mode)
      send_request(FUNCTION_SET_STEP_MODE, [mode], 'C', 0, '')
    end

    # Returns the step mode as set by BrickStepper#set_step_mode.
    def get_step_mode
      send_request(FUNCTION_GET_STEP_MODE, [], '', 1, 'C')
    end

    # Drives the stepper motor forward until BrickStepper#drive_backward or
    # BrickStepper#stop is called. The velocity, acceleration and deacceleration as 
    # set by BrickStepper#set_max_velocity and BrickStepper#set_speed_ramping will be used.
    def drive_forward
      send_request(FUNCTION_DRIVE_FORWARD, [], '', 0, '')
    end

    # Drives the stepper motor backward until BrickStepper#drive_forward or
    # BrickStepper#stop is triggered. The velocity, acceleration and deacceleration as
    # set by BrickStepper#set_max_velocity and BrickStepper#set_speed_ramping will be used.
    def drive_backward
      send_request(FUNCTION_DRIVE_BACKWARD, [], '', 0, '')
    end

    # Stops the stepper motor with the deacceleration as set by 
    # BrickStepper#set_speed_ramping.
    def stop
      send_request(FUNCTION_STOP, [], '', 0, '')
    end

    # Returns the stack input voltage in mV. The stack input voltage is the
    # voltage that is supplied via the stack, i.e. it is given by a 
    # Step-Down or Step-Up Power Supply.
    def get_stack_input_voltage
      send_request(FUNCTION_GET_STACK_INPUT_VOLTAGE, [], '', 2, 'S')
    end

    # Returns the external input voltage in mV. The external input voltage is
    # given via the black power input connector on the Stepper Brick. 
    #  
    # If there is an external input voltage and a stack input voltage, the motor
    # will be driven by the external input voltage. If there is only a stack 
    # voltage present, the motor will be driven by this voltage.
    # 
    # .. warning::
    #  This means, if you have a high stack voltage and a low external voltage,
    #  the motor will be driven with the low external voltage. If you then remove
    #  the external connection, it will immediately be driven by the high
    #  stack voltage
    def get_external_input_voltage
      send_request(FUNCTION_GET_EXTERNAL_INPUT_VOLTAGE, [], '', 2, 'S')
    end

    # Returns the current consumption of the motor in mA.
    def get_current_consumption
      send_request(FUNCTION_GET_CURRENT_CONSUMPTION, [], '', 2, 'S')
    end

    # Sets the current in mA with which the motor will be driven.
    # The minimum value is 100mA, the maximum value 2291mA and the 
    # default value is 800mA.
    # 
    # .. warning::
    #  Do not set this value above the specifications of your stepper motor.
    #  Otherwise it may damage your motor.
    def set_motor_current(current)
      send_request(FUNCTION_SET_MOTOR_CURRENT, [current], 'S', 0, '')
    end

    # Returns the current as set by BrickStepper#set_motor_current.
    def get_motor_current
      send_request(FUNCTION_GET_MOTOR_CURRENT, [], '', 2, 'S')
    end

    # Enables the driver chip. The driver parameters can be configured (maximum velocity,
    # acceleration, etc) before it is enabled.
    def enable
      send_request(FUNCTION_ENABLE, [], '', 0, '')
    end

    # Disables the driver chip. The configurations are kept (maximum velocity,
    # acceleration, etc) but the motor is not driven until it is enabled again.
    def disable
      send_request(FUNCTION_DISABLE, [], '', 0, '')
    end

    # Returns *true* if the driver chip is enabled, *false* otherwise.
    def is_enabled
      send_request(FUNCTION_IS_ENABLED, [], '', 1, '?')
    end

    # Sets the decay mode of the stepper motor. The possible value range is
    # between 0 and 65535. A value of 0 sets the fast decay mode, a value of
    # 65535 sets the slow decay mode and a value in between sets the mixed
    # decay mode.
    # 
    # Changing the decay mode is only possible if synchronous rectification
    # is enabled (see BrickStepper#set_sync_rect).
    # 
    # For a good explanation of the different decay modes see 
    # `this <http://ebldc.com/?p=86/>`__ blog post by Avayan.
    # 
    # A good decay mode is unfortunately different for every motor. The best
    # way to work out a good decay mode for your stepper motor, if you can't
    # measure the current with an oscilloscope, is to listen to the sound of
    # the motor. If the value is too low, you often hear a high pitched 
    # sound and if it is too high you can often hear a humming sound.
    # 
    # Generally, fast decay mode (small value) will be noisier but also
    # allow higher motor speeds.
    # 
    # The default value is 10000.
    # 
    # .. note::
    #  There is unfortunately no formula to calculate a perfect decay
    #  mode for a given stepper motor. If you have problems with loud noises
    #  or the maximum motor speed is too slow, you should try to tinker with
    #  the decay value
    def set_decay(decay)
      send_request(FUNCTION_SET_DECAY, [decay], 'S', 0, '')
    end

    # Returns the decay mode as set by BrickStepper#set_decay.
    def get_decay
      send_request(FUNCTION_GET_DECAY, [], '', 2, 'S')
    end

    # Sets the minimum voltage in mV, below which the CALLBACK_UNDER_VOLTAGE callback
    # is triggered. The minimum possible value that works with the Stepper Brick is 8V.
    # You can use this function to detect the discharge of a battery that is used
    # to drive the stepper motor. If you have a fixed power supply, you likely do 
    # not need this functionality.
    # 
    # The default value is 8V.
    def set_minimum_voltage(voltage)
      send_request(FUNCTION_SET_MINIMUM_VOLTAGE, [voltage], 'S', 0, '')
    end

    # Returns the minimum voltage as set by BrickStepper#set_minimum_voltage.
    def get_minimum_voltage
      send_request(FUNCTION_GET_MINIMUM_VOLTAGE, [], '', 2, 'S')
    end

    # Turns synchronous rectification on or off (*true* or *false*).
    # 
    # With synchronous rectification on, the decay can be changed
    # (see BrickStepper#set_decay). Without synchronous rectification fast
    # decay is used.
    # 
    # For an explanation of synchronous rectification see 
    # `here <http://en.wikipedia.org/wiki/Active_rectification>`__.
    # 
    # .. warning::
    #  If you want to use high speeds (> 10000 steps/s) for a large 
    #  stepper motor with a large inductivity we strongly
    #  suggest that you disable synchronous rectification. Otherwise the
    #  Brick may not be able to cope with the load and overheat.
    # 
    # The default value is *false*.
    # 
    # .. versionadded:: 1.1.4~(Firmware)
    def set_sync_rect(sync_rect)
      send_request(FUNCTION_SET_SYNC_RECT, [sync_rect], '?', 0, '')
    end

    # Returns *true* if synchronous rectification is enabled, *false* otherwise.
    # 
    # .. versionadded:: 1.1.4~(Firmware)
    def is_sync_rect
      send_request(FUNCTION_IS_SYNC_RECT, [], '', 1, '?')
    end

    # Sets the time base of the velocity and the acceleration of the stepper brick
    # (in seconds).
    # 
    # For example, if you want to make one step every 1.5 seconds, you can set 
    # the time base to 15 and the velocity to 10. Now the velocity is 
    # 10steps/15s = 1steps/1.5s.
    # 
    # The default value is 1.
    # 
    # .. versionadded:: 1.1.6~(Firmware)
    def set_time_base(time_base)
      send_request(FUNCTION_SET_TIME_BASE, [time_base], 'L', 0, '')
    end

    # Returns the time base as set by BrickStepper#set_time_base.
    # 
    # .. versionadded:: 1.1.6~(Firmware)
    def get_time_base
      send_request(FUNCTION_GET_TIME_BASE, [], '', 4, 'L')
    end

    # Returns the following parameters: The current velocity,
    # the current position, the remaining steps, the stack voltage, the external
    # voltage and the current consumption of the stepper motor.
    # 
    # There is also a callback for this function, see CALLBACK_ALL_DATA.
    # 
    # .. versionadded:: 1.1.6~(Firmware)
    def get_all_data
      send_request(FUNCTION_GET_ALL_DATA, [], '', 16, 'S l l S S S')
    end

    # Sets the period in ms with which the CALLBACK_ALL_DATA callback is triggered
    # periodically. A value of 0 turns the callback off.
    # 
    # .. versionadded:: 1.1.6~(Firmware)
    def set_all_data_period(period)
      send_request(FUNCTION_SET_ALL_DATA_PERIOD, [period], 'L', 0, '')
    end

    # Returns the period as set by BrickStepper#set_all_data_period.
    # 
    # .. versionadded:: 1.1.6~(Firmware)
    def get_all_data_period
      send_request(FUNCTION_GET_ALL_DATA_PERIOD, [], '', 4, 'L')
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
    # .. versionadded:: 1.1.4~(Firmware)
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
    # .. versionadded:: 1.1.4~(Firmware)
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

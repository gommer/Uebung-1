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
  # Device for controlling a piezo buzzer
  class BrickletPiezoBuzzer < Device
    DEVICE_IDENTIFIER = 214 # :nodoc:

    # This callback is triggered if a beep set by BrickletPiezoBuzzer#beep is finished
    CALLBACK_BEEP_FINISHED = 3

    # This callback is triggered if the playback of the morse code set by
    # BrickletPiezoBuzzer#morse_code is finished.
    CALLBACK_MORSE_CODE_FINISHED = 4

    FUNCTION_BEEP = 1 # :nodoc:
    FUNCTION_MORSE_CODE = 2 # :nodoc:
    FUNCTION_GET_IDENTITY = 255 # :nodoc:


    # Creates an object with the unique device ID <tt>uid</tt> and adds it to
    # the IP Connection <tt>ipcon</tt>.
    def initialize(uid, ipcon)
      super uid, ipcon

      @api_version = [2, 0, 0]

      @response_expected[FUNCTION_BEEP] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_MORSE_CODE] = RESPONSE_EXPECTED_FALSE
      @response_expected[CALLBACK_BEEP_FINISHED] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_MORSE_CODE_FINISHED] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[FUNCTION_GET_IDENTITY] = RESPONSE_EXPECTED_ALWAYS_TRUE

      @callback_formats[CALLBACK_BEEP_FINISHED] = ''
      @callback_formats[CALLBACK_MORSE_CODE_FINISHED] = ''
    end

    # Beeps with the duration in ms. For example: If you set a value of 1000,
    # the piezo buzzer will beep for one second.
    def beep(duration)
      send_request(FUNCTION_BEEP, [duration], 'L', 0, '')
    end

    # Sets morse code that will be played by the piezo buzzer. The morse code
    # is given as a string consisting of "." (dot), "-" (minus) and " " (space)
    # for *dits*, *dahs* and *pauses*. Every other character is ignored.
    # 
    # For example: If you set the string "...---...", the piezo buzzer will beep
    # nine times with the durations "short short short long long long short 
    # short short".
    # 
    # The maximum string size is 60.
    def morse_code(morse)
      send_request(FUNCTION_MORSE_CODE, [morse], 'Z60', 0, '')
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

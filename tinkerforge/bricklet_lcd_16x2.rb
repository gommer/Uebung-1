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
  # Device for controlling a LCD with 2 lines a 16 characters
  class BrickletLCD16x2 < Device
    DEVICE_IDENTIFIER = 211 # :nodoc:

    # This callback is triggered when a button is pressed. The parameter is
    # the number of the button (0 to 2).
    CALLBACK_BUTTON_PRESSED = 9

    # This callback is triggered when a button is released. The parameter is
    # the number of the button (0 to 2).
    CALLBACK_BUTTON_RELEASED = 10

    FUNCTION_WRITE_LINE = 1 # :nodoc:
    FUNCTION_CLEAR_DISPLAY = 2 # :nodoc:
    FUNCTION_BACKLIGHT_ON = 3 # :nodoc:
    FUNCTION_BACKLIGHT_OFF = 4 # :nodoc:
    FUNCTION_IS_BACKLIGHT_ON = 5 # :nodoc:
    FUNCTION_SET_CONFIG = 6 # :nodoc:
    FUNCTION_GET_CONFIG = 7 # :nodoc:
    FUNCTION_IS_BUTTON_PRESSED = 8 # :nodoc:
    FUNCTION_SET_CUSTOM_CHARACTER = 11 # :nodoc:
    FUNCTION_GET_CUSTOM_CHARACTER = 12 # :nodoc:
    FUNCTION_GET_IDENTITY = 255 # :nodoc:


    # Creates an object with the unique device ID <tt>uid</tt> and adds it to
    # the IP Connection <tt>ipcon</tt>.
    def initialize(uid, ipcon)
      super uid, ipcon

      @api_version = [2, 0, 0]

      @response_expected[FUNCTION_WRITE_LINE] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_CLEAR_DISPLAY] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_BACKLIGHT_ON] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_BACKLIGHT_OFF] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_IS_BACKLIGHT_ON] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_CONFIG] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_CONFIG] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_IS_BUTTON_PRESSED] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[CALLBACK_BUTTON_PRESSED] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[CALLBACK_BUTTON_RELEASED] = RESPONSE_EXPECTED_ALWAYS_FALSE
      @response_expected[FUNCTION_SET_CUSTOM_CHARACTER] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_CUSTOM_CHARACTER] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_IDENTITY] = RESPONSE_EXPECTED_ALWAYS_TRUE

      @callback_formats[CALLBACK_BUTTON_PRESSED] = 'C'
      @callback_formats[CALLBACK_BUTTON_RELEASED] = 'C'
    end

    # Writes text to a specific line (0 to 1) with a specific position 
    # (0 to 15). The text can have a maximum of 16 characters.
    # 
    # For example: (0, 5, "Hello") will write *Hello* in the middle of the
    # first line of the display.
    # 
    # The display uses a special charset that includes all ASCII characters except
    # backslash and tilde. The LCD charset also includes several other non-ASCII characters, see
    # the `charset specification <https://github.com/Tinkerforge/lcd-16x2-bricklet/raw/master/datasheets/standard_charset.pdf>`__
    # for details. The Unicode example above shows how to specify non-ASCII characters
    # and how to translate from Unicode to the LCD charset.
    def write_line(line, position, text)
      send_request(FUNCTION_WRITE_LINE, [line, position, text], 'C C Z16', 0, '')
    end

    # Deletes all characters from the display.
    def clear_display
      send_request(FUNCTION_CLEAR_DISPLAY, [], '', 0, '')
    end

    # Turns the backlight on.
    def backlight_on
      send_request(FUNCTION_BACKLIGHT_ON, [], '', 0, '')
    end

    # Turns the backlight off.
    def backlight_off
      send_request(FUNCTION_BACKLIGHT_OFF, [], '', 0, '')
    end

    # Returns *true* if the backlight is on and *false* otherwise.
    def is_backlight_on
      send_request(FUNCTION_IS_BACKLIGHT_ON, [], '', 1, '?')
    end

    # Configures if the cursor (shown as "_") should be visible and if it
    # should be blinking (shown as a blinking block). The cursor position
    # is one character behind the the last text written with 
    # BrickletLCD16x2#write_line.
    # 
    # The default is (false, false).
    def set_config(cursor, blinking)
      send_request(FUNCTION_SET_CONFIG, [cursor, blinking], '? ?', 0, '')
    end

    # Returns the configuration as set by BrickletLCD16x2#set_config.
    def get_config
      send_request(FUNCTION_GET_CONFIG, [], '', 2, '? ?')
    end

    # Returns *true* if the button (0 to 2) is pressed. If you want to react
    # on button presses and releases it is recommended to use the
    # CALLBACK_BUTTON_PRESSED and CALLBACK_BUTTON_RELEASED callbacks.
    def is_button_pressed(button)
      send_request(FUNCTION_IS_BUTTON_PRESSED, [button], 'C', 1, '?')
    end

    # The LCD 16x2 Bricklet can store up to 8 custom characters. The characters
    # consist of 5x8 pixels and can be addressed with the index 0-7. To describe
    # the pixels, the first 5 bits of 8 bytes are used. For example, to make
    # a custom character "H", you should transfer the following:
    # 
    # * character[0] = 0b00010001 (decimal value 17)
    # * character[1] = 0b00010001 (decimal value 17)
    # * character[2] = 0b00010001 (decimal value 17)
    # * character[3] = 0b00011111 (decimal value 31)
    # * character[4] = 0b00010001 (decimal value 17)
    # * character[5] = 0b00010001 (decimal value 17)
    # * character[6] = 0b00010001 (decimal value 17)
    # * character[7] = 0b00000000 (decimal value 0)
    # 
    # The characters can later be written with BrickletLCD16x2#write_line by using the
    # characters with the byte representation 8 to 15.
    # 
    # You can play around with the custom characters in Brick Viewer version
    # >= 2.0.1.
    # 
    # Custom characters are stored by the LCD in RAM, so they have to be set
    # after each startup.
    # 
    # .. versionadded:: 2.0.1~(Plugin)
    def set_custom_character(index, character)
      send_request(FUNCTION_SET_CUSTOM_CHARACTER, [index, character], 'C C8', 0, '')
    end

    # Returns the custon character for a given index, as set with 
    # BrickletLCD16x2#set_custom_character.
    # 
    # .. versionadded:: 2.0.1~(Plugin)
    def get_custom_character(index)
      send_request(FUNCTION_GET_CUSTOM_CHARACTER, [index], 'C', 8, 'C8')
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

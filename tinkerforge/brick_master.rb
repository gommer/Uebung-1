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
  # Device for controlling Stacks and four Bricklets
  class BrickMaster < Device
    DEVICE_IDENTIFIER = 13 # :nodoc:

    FUNCTION_GET_STACK_VOLTAGE = 1 # :nodoc:
    FUNCTION_GET_STACK_CURRENT = 2 # :nodoc:
    FUNCTION_SET_EXTENSION_TYPE = 3 # :nodoc:
    FUNCTION_GET_EXTENSION_TYPE = 4 # :nodoc:
    FUNCTION_IS_CHIBI_PRESENT = 5 # :nodoc:
    FUNCTION_SET_CHIBI_ADDRESS = 6 # :nodoc:
    FUNCTION_GET_CHIBI_ADDRESS = 7 # :nodoc:
    FUNCTION_SET_CHIBI_MASTER_ADDRESS = 8 # :nodoc:
    FUNCTION_GET_CHIBI_MASTER_ADDRESS = 9 # :nodoc:
    FUNCTION_SET_CHIBI_SLAVE_ADDRESS = 10 # :nodoc:
    FUNCTION_GET_CHIBI_SLAVE_ADDRESS = 11 # :nodoc:
    FUNCTION_GET_CHIBI_SIGNAL_STRENGTH = 12 # :nodoc:
    FUNCTION_GET_CHIBI_ERROR_LOG = 13 # :nodoc:
    FUNCTION_SET_CHIBI_FREQUENCY = 14 # :nodoc:
    FUNCTION_GET_CHIBI_FREQUENCY = 15 # :nodoc:
    FUNCTION_SET_CHIBI_CHANNEL = 16 # :nodoc:
    FUNCTION_GET_CHIBI_CHANNEL = 17 # :nodoc:
    FUNCTION_IS_RS485_PRESENT = 18 # :nodoc:
    FUNCTION_SET_RS485_ADDRESS = 19 # :nodoc:
    FUNCTION_GET_RS485_ADDRESS = 20 # :nodoc:
    FUNCTION_SET_RS485_SLAVE_ADDRESS = 21 # :nodoc:
    FUNCTION_GET_RS485_SLAVE_ADDRESS = 22 # :nodoc:
    FUNCTION_GET_RS485_ERROR_LOG = 23 # :nodoc:
    FUNCTION_SET_RS485_CONFIGURATION = 24 # :nodoc:
    FUNCTION_GET_RS485_CONFIGURATION = 25 # :nodoc:
    FUNCTION_IS_WIFI_PRESENT = 26 # :nodoc:
    FUNCTION_SET_WIFI_CONFIGURATION = 27 # :nodoc:
    FUNCTION_GET_WIFI_CONFIGURATION = 28 # :nodoc:
    FUNCTION_SET_WIFI_ENCRYPTION = 29 # :nodoc:
    FUNCTION_GET_WIFI_ENCRYPTION = 30 # :nodoc:
    FUNCTION_GET_WIFI_STATUS = 31 # :nodoc:
    FUNCTION_REFRESH_WIFI_STATUS = 32 # :nodoc:
    FUNCTION_SET_WIFI_CERTIFICATE = 33 # :nodoc:
    FUNCTION_GET_WIFI_CERTIFICATE = 34 # :nodoc:
    FUNCTION_SET_WIFI_POWER_MODE = 35 # :nodoc:
    FUNCTION_GET_WIFI_POWER_MODE = 36 # :nodoc:
    FUNCTION_GET_WIFI_BUFFER_INFO = 37 # :nodoc:
    FUNCTION_SET_WIFI_REGULATORY_DOMAIN = 38 # :nodoc:
    FUNCTION_GET_WIFI_REGULATORY_DOMAIN = 39 # :nodoc:
    FUNCTION_GET_USB_VOLTAGE = 40 # :nodoc:
    FUNCTION_GET_PROTOCOL1_BRICKLET_NAME = 241 # :nodoc:
    FUNCTION_GET_CHIP_TEMPERATURE = 242 # :nodoc:
    FUNCTION_RESET = 243 # :nodoc:
    FUNCTION_GET_IDENTITY = 255 # :nodoc:

    EXTENSION_TYPE_CHIBI = 1 # :nodoc:
    EXTENSION_TYPE_RS485 = 2 # :nodoc:
    EXTENSION_TYPE_WIFI = 3 # :nodoc:
    EXTENSION_TYPE_ETHERNET = 4 # :nodoc:
    CHIBI_FREQUENCY_OQPSK_868_MHZ = 0 # :nodoc:
    CHIBI_FREQUENCY_OQPSK_915_MHZ = 1 # :nodoc:
    CHIBI_FREQUENCY_OQPSK_780_MHZ = 2 # :nodoc:
    CHIBI_FREQUENCY_BPSK40_915_MHZ = 3 # :nodoc:
    RS485_PARITY_NONE = 'n' # :nodoc:
    RS485_PARITY_EVEN = 'e' # :nodoc:
    RS485_PARITY_ODD = 'o' # :nodoc:
    WIFI_CONNECTION_DHCP = 0 # :nodoc:
    WIFI_CONNECTION_STATIC_IP = 1 # :nodoc:
    WIFI_CONNECTION_ACCESS_POINT_DHCP = 2 # :nodoc:
    WIFI_CONNECTION_ACCESS_POINT_STATIC_IP = 3 # :nodoc:
    WIFI_CONNECTION_AD_HOC_DHCP = 4 # :nodoc:
    WIFI_CONNECTION_AD_HOC_STATIC_IP = 5 # :nodoc:
    WIFI_ENCRYPTION_WPA_WPA2 = 0 # :nodoc:
    WIFI_ENCRYPTION_WPA_ENTERPRISE = 1 # :nodoc:
    WIFI_ENCRYPTION_WEP = 2 # :nodoc:
    WIFI_ENCRYPTION_NO_ENCRYPTION = 3 # :nodoc:
    WIFI_EAP_OPTION_OUTER_AUTH_EAP_FAST = 0 # :nodoc:
    WIFI_EAP_OPTION_OUTER_AUTH_EAP_TLS = 1 # :nodoc:
    WIFI_EAP_OPTION_OUTER_AUTH_EAP_TTLS = 2 # :nodoc:
    WIFI_EAP_OPTION_OUTER_AUTH_EAP_PEAP = 3 # :nodoc:
    WIFI_EAP_OPTION_INNER_AUTH_EAP_MSCHAP = 0 # :nodoc:
    WIFI_EAP_OPTION_INNER_AUTH_EAP_GTC = 4 # :nodoc:
    WIFI_EAP_OPTION_CERT_TYPE_CA_CERT = 0 # :nodoc:
    WIFI_EAP_OPTION_CERT_TYPE_CLIENT_CERT = 8 # :nodoc:
    WIFI_EAP_OPTION_CERT_TYPE_PRIVATE_KEY = 16 # :nodoc:
    WIFI_STATE_DISASSOCIATED = 0 # :nodoc:
    WIFI_STATE_ASSOCIATED = 1 # :nodoc:
    WIFI_STATE_ASSOCIATING = 2 # :nodoc:
    WIFI_STATE_ERROR = 3 # :nodoc:
    WIFI_STATE_NOT_INITIALIZED_YET = 255 # :nodoc:
    WIFI_POWER_MODE_FULL_SPEED = 0 # :nodoc:
    WIFI_POWER_MODE_LOW_POWER = 1 # :nodoc:
    WIFI_DOMAIN_CHANNEL_1TO11 = 0 # :nodoc:
    WIFI_DOMAIN_CHANNEL_1TO13 = 1 # :nodoc:
    WIFI_DOMAIN_CHANNEL_1TO14 = 2 # :nodoc:

    # Creates an object with the unique device ID <tt>uid</tt> and adds it to
    # the IP Connection <tt>ipcon</tt>.
    def initialize(uid, ipcon)
      super uid, ipcon

      @api_version = [2, 0, 0]

      @response_expected[FUNCTION_GET_STACK_VOLTAGE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_STACK_CURRENT] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_EXTENSION_TYPE] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_EXTENSION_TYPE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_IS_CHIBI_PRESENT] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_CHIBI_ADDRESS] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_CHIBI_ADDRESS] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_CHIBI_MASTER_ADDRESS] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_CHIBI_MASTER_ADDRESS] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_CHIBI_SLAVE_ADDRESS] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_CHIBI_SLAVE_ADDRESS] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_CHIBI_SIGNAL_STRENGTH] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_CHIBI_ERROR_LOG] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_CHIBI_FREQUENCY] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_CHIBI_FREQUENCY] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_CHIBI_CHANNEL] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_CHIBI_CHANNEL] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_IS_RS485_PRESENT] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_RS485_ADDRESS] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_RS485_ADDRESS] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_RS485_SLAVE_ADDRESS] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_RS485_SLAVE_ADDRESS] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_RS485_ERROR_LOG] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_RS485_CONFIGURATION] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_RS485_CONFIGURATION] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_IS_WIFI_PRESENT] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_WIFI_CONFIGURATION] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_WIFI_CONFIGURATION] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_WIFI_ENCRYPTION] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_WIFI_ENCRYPTION] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_WIFI_STATUS] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_REFRESH_WIFI_STATUS] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_SET_WIFI_CERTIFICATE] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_WIFI_CERTIFICATE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_WIFI_POWER_MODE] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_WIFI_POWER_MODE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_WIFI_BUFFER_INFO] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_SET_WIFI_REGULATORY_DOMAIN] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_WIFI_REGULATORY_DOMAIN] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_USB_VOLTAGE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_PROTOCOL1_BRICKLET_NAME] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_GET_CHIP_TEMPERATURE] = RESPONSE_EXPECTED_ALWAYS_TRUE
      @response_expected[FUNCTION_RESET] = RESPONSE_EXPECTED_FALSE
      @response_expected[FUNCTION_GET_IDENTITY] = RESPONSE_EXPECTED_ALWAYS_TRUE

    end

    # Returns the stack voltage in mV. The stack voltage is the
    # voltage that is supplied via the stack, i.e. it is given by a 
    # Step-Down or Step-Up Power Supply.
    def get_stack_voltage
      send_request(FUNCTION_GET_STACK_VOLTAGE, [], '', 2, 'S')
    end

    # Returns the stack current in mA. The stack current is the
    # current that is drawn via the stack, i.e. it is given by a
    # Step-Down or Step-Up Power Supply.
    def get_stack_current
      send_request(FUNCTION_GET_STACK_CURRENT, [], '', 2, 'S')
    end

    # Writes the extension type to the EEPROM of a specified extension. 
    # The extension is either 0 or 1 (0 is the on the bottom, 1 is the on on top, 
    # if only one extension is present use 0).
    # 
    # Possible extension types:
    # 
    #  "Type", "Description"
    # 
    #  "1",    "Chibi"
    #  "2",    "RS485"
    #  "3",    "WIFI"
    #  "4",    "Ethernet"
    # 
    # The extension type is already set when bought and it can be set with the 
    # Brick Viewer, it is unlikely that you need this function.
    # 
    # The value will be saved in the EEPROM of the Chibi Extension, it does not
    # have to be set on every startup.
    def set_extension_type(extension, exttype)
      send_request(FUNCTION_SET_EXTENSION_TYPE, [extension, exttype], 'C L', 0, '')
    end

    # Returns the extension type for a given extension as set by 
    # BrickMaster#set_extension_type.
    def get_extension_type(extension)
      send_request(FUNCTION_GET_EXTENSION_TYPE, [extension], 'C', 4, 'L')
    end

    # Returns *true* if a Chibi Extension is available to be used by the Master.
    # 
    # .. versionadded:: 1.1.0~(Firmware)
    def is_chibi_present
      send_request(FUNCTION_IS_CHIBI_PRESENT, [], '', 1, '?')
    end

    # Sets the address (1-255) belonging to the Chibi Extension.
    # 
    # It is possible to set the address with the Brick Viewer and it will be 
    # saved in the EEPROM of the Chibi Extension, it does not
    # have to be set on every startup.
    # 
    # .. versionadded:: 1.1.0~(Firmware)
    def set_chibi_address(address)
      send_request(FUNCTION_SET_CHIBI_ADDRESS, [address], 'C', 0, '')
    end

    # Returns the address as set by BrickMaster#set_chibi_address.
    # 
    # .. versionadded:: 1.1.0~(Firmware)
    def get_chibi_address
      send_request(FUNCTION_GET_CHIBI_ADDRESS, [], '', 1, 'C')
    end

    # Sets the address (1-255) of the Chibi Master. This address is used if the
    # Chibi Extension is used as slave (i.e. it does not have a USB connection).
    # 
    # It is possible to set the address with the Brick Viewer and it will be 
    # saved in the EEPROM of the Chibi Extension, it does not
    # have to be set on every startup.
    # 
    # .. versionadded:: 1.1.0~(Firmware)
    def set_chibi_master_address(address)
      send_request(FUNCTION_SET_CHIBI_MASTER_ADDRESS, [address], 'C', 0, '')
    end

    # Returns the address as set by BrickMaster#set_chibi_master_address.
    # 
    # .. versionadded:: 1.1.0~(Firmware)
    def get_chibi_master_address
      send_request(FUNCTION_GET_CHIBI_MASTER_ADDRESS, [], '', 1, 'C')
    end

    # Sets up to 254 slave addresses. Valid addresses are in range 1-255.
    # The address numeration (via num parameter) has to be used
    # ascending from 0. For example: If you use the Chibi Extension in Master mode
    # (i.e. the stack has an USB connection) and you want to talk to three other
    # Chibi stacks with the slave addresses 17, 23, and 42, you should call with "(0, 17),
    # (1, 23) and (2, 42)".
    # 
    # It is possible to set the addresses with the Brick Viewer and it will be 
    # saved in the EEPROM of the Chibi Extension, they don't
    # have to be set on every startup.
    # 
    # .. versionadded:: 1.1.0~(Firmware)
    def set_chibi_slave_address(num, address)
      send_request(FUNCTION_SET_CHIBI_SLAVE_ADDRESS, [num, address], 'C C', 0, '')
    end

    # Returns the slave address for a given num as set by 
    # BrickMaster#set_chibi_slave_address.
    # 
    # .. versionadded:: 1.1.0~(Firmware)
    def get_chibi_slave_address(num)
      send_request(FUNCTION_GET_CHIBI_SLAVE_ADDRESS, [num], 'C', 1, 'C')
    end

    # Returns the signal strength in dBm. The signal strength updates every time a
    # packet is received.
    # 
    # .. versionadded:: 1.1.0~(Firmware)
    def get_chibi_signal_strength
      send_request(FUNCTION_GET_CHIBI_SIGNAL_STRENGTH, [], '', 1, 'C')
    end

    # Returns underrun, CRC error, no ACK and overflow error counts of the Chibi
    # communication. If these errors start rising, it is likely that either the
    # distance between two Chibi stacks is becoming too big or there are
    # interferences.
    # 
    # .. versionadded:: 1.1.0~(Firmware)
    def get_chibi_error_log
      send_request(FUNCTION_GET_CHIBI_ERROR_LOG, [], '', 8, 'S S S S')
    end

    # Sets the Chibi frequency range for the Chibi Extension. Possible values are:
    # 
    #  "Type", "Description"
    # 
    #  "0",    "OQPSK 868MHz (Europe)"
    #  "1",    "OQPSK 915MHz (US)"
    #  "2",    "OQPSK 780MHz (China)"
    #  "3",    "BPSK40 915MHz"
    # 
    # It is possible to set the frequency with the Brick Viewer and it will be 
    # saved in the EEPROM of the Chibi Extension, it does not
    # have to be set on every startup.
    # 
    # .. versionadded:: 1.1.0~(Firmware)
    def set_chibi_frequency(frequency)
      send_request(FUNCTION_SET_CHIBI_FREQUENCY, [frequency], 'C', 0, '')
    end

    # Returns the frequency value as set by BrickMaster#set_chibi_frequency.
    # 
    # .. versionadded:: 1.1.0~(Firmware)
    def get_chibi_frequency
      send_request(FUNCTION_GET_CHIBI_FREQUENCY, [], '', 1, 'C')
    end

    # Sets the channel used by the Chibi Extension. Possible channels are
    # different for different frequencies:
    # 
    #  "Frequency",             "Possible Channels"
    # 
    #  "OQPSK 868Mhz (Europe)", "0"
    #  "OQPSK 915Mhz (US)",     "1, 2, 3, 4, 5, 6, 7, 8, 9, 10"
    #  "OQPSK 780Mhz (China)",  "0, 1, 2, 3"
    #  "BPSK40 915Mhz",         "1, 2, 3, 4, 5, 6, 7, 8, 9, 10"
    # 
    # It is possible to set the channel with the Brick Viewer and it will be 
    # saved in the EEPROM of the Chibi Extension, it does not
    # have to be set on every startup.
    # 
    # .. versionadded:: 1.1.0~(Firmware)
    def set_chibi_channel(channel)
      send_request(FUNCTION_SET_CHIBI_CHANNEL, [channel], 'C', 0, '')
    end

    # Returns the channel as set by BrickMaster#set_chibi_channel.
    # 
    # .. versionadded:: 1.1.0~(Firmware)
    def get_chibi_channel
      send_request(FUNCTION_GET_CHIBI_CHANNEL, [], '', 1, 'C')
    end

    # Returns *true* if a RS485 Extension is available to be used by the Master.
    # 
    # .. versionadded:: 1.2.0~(Firmware)
    def is_rs485_present
      send_request(FUNCTION_IS_RS485_PRESENT, [], '', 1, '?')
    end

    # Sets the address (1-255) belonging to the RS485 Extension.
    # 
    # Set to 0 if the RS485 Extension should be the RS485 Master (i.e.
    # connected to a PC via USB).
    # 
    # It is possible to set the address with the Brick Viewer and it will be 
    # saved in the EEPROM of the RS485 Extension, it does not
    # have to be set on every startup.
    # 
    # .. versionadded:: 1.2.0~(Firmware)
    def set_rs485_address(address)
      send_request(FUNCTION_SET_RS485_ADDRESS, [address], 'C', 0, '')
    end

    # Returns the address as set by BrickMaster#set_rs485_address.
    # 
    # .. versionadded:: 1.2.0~(Firmware)
    def get_rs485_address
      send_request(FUNCTION_GET_RS485_ADDRESS, [], '', 1, 'C')
    end

    # Sets up to 255 slave addresses. Valid addresses are in range 1-255.
    # The address numeration (via num parameter) has to be used
    # ascending from 0. For example: If you use the RS485 Extension in Master mode
    # (i.e. the stack has an USB connection) and you want to talk to three other
    # RS485 stacks with the IDs 17, 23, and 42, you should call with "(0, 17),
    # (1, 23) and (2, 42)".
    # 
    # It is possible to set the addresses with the Brick Viewer and it will be 
    # saved in the EEPROM of the RS485 Extension, they don't
    # have to be set on every startup.
    # 
    # .. versionadded:: 1.2.0~(Firmware)
    def set_rs485_slave_address(num, address)
      send_request(FUNCTION_SET_RS485_SLAVE_ADDRESS, [num, address], 'C C', 0, '')
    end

    # Returns the slave address for a given num as set by 
    # BrickMaster#set_rs485_slave_address.
    # 
    # .. versionadded:: 1.2.0~(Firmware)
    def get_rs485_slave_address(num)
      send_request(FUNCTION_GET_RS485_SLAVE_ADDRESS, [num], 'C', 1, 'C')
    end

    # Returns CRC error counts of the RS485 communication.
    # If this counter starts rising, it is likely that the distance
    # between the RS485 nodes is too big or there is some kind of
    # interference.
    # 
    # .. versionadded:: 1.2.0~(Firmware)
    def get_rs485_error_log
      send_request(FUNCTION_GET_RS485_ERROR_LOG, [], '', 2, 'S')
    end

    # Sets the configuration of the RS485 Extension. Speed is given in baud. The
    # Master Brick will try to match the given baud rate as exactly as possible.
    # The maximum recommended baud rate is 2000000 (2Mbit/s).
    # Possible values for parity are 'n' (none), 'e' (even) and 'o' (odd).
    # Possible values for stop bits are 1 and 2.
    # 
    # If your RS485 is unstable (lost messages etc.), the first thing you should
    # try is to decrease the speed. On very large bus (e.g. 1km), you probably
    # should use a value in the range of 100000 (100kbit/s).
    # 
    # The values are stored in the EEPROM and only applied on startup. That means
    # you have to restart the Master Brick after configuration.
    # 
    # .. versionadded:: 1.2.0~(Firmware)
    def set_rs485_configuration(speed, parity, stopbits)
      send_request(FUNCTION_SET_RS485_CONFIGURATION, [speed, parity, stopbits], 'L k C', 0, '')
    end

    # Returns the configuration as set by BrickMaster#set_rs485_configuration.
    # 
    # .. versionadded:: 1.2.0~(Firmware)
    def get_rs485_configuration
      send_request(FUNCTION_GET_RS485_CONFIGURATION, [], '', 6, 'L k C')
    end

    # Returns *true* if a WIFI Extension is available to be used by the Master.
    # 
    # .. versionadded:: 1.2.0~(Firmware)
    def is_wifi_present
      send_request(FUNCTION_IS_WIFI_PRESENT, [], '', 1, '?')
    end

    # Sets the configuration of the WIFI Extension. The *ssid* can have a max length
    # of 32 characters. Possible values for *connection* are:
    # 
    #  "Value", "Description"
    # 
    #  "0", "DHCP"
    #  "1", "Static IP"
    #  "2", "Access Point: DHCP"
    #  "3", "Access Point: Static IP"
    #  "4", "Ad Hoc: DHCP"
    #  "5", "Ad Hoc: Static IP"
    # 
    # If you set *connection* to one of the static IP options then you have to supply
    # *ip*, *subnet_mask* and *gateway* as an array of size 4 (first element of the
    # array is the least significant byte of the address). If *connection* is set to
    # one of the DHCP options then *ip*, *subnet_mask* and *gateway* are ignored, you
    # can set them to 0.
    # 
    # The last parameter is the port that your program will connect to. The
    # default port, that is used by brickd, is 4223.
    # 
    # The values are stored in the EEPROM and only applied on startup. That means
    # you have to restart the Master Brick after configuration.
    # 
    # It is recommended to use the Brick Viewer to set the WIFI configuration.
    # 
    # .. versionadded:: 1.3.0~(Firmware)
    def set_wifi_configuration(ssid, connection, ip, subnet_mask, gateway, port)
      send_request(FUNCTION_SET_WIFI_CONFIGURATION, [ssid, connection, ip, subnet_mask, gateway, port], 'Z32 C C4 C4 C4 S', 0, '')
    end

    # Returns the configuration as set by BrickMaster#set_wifi_configuration.
    # 
    # .. versionadded:: 1.3.0~(Firmware)
    def get_wifi_configuration
      send_request(FUNCTION_GET_WIFI_CONFIGURATION, [], '', 47, 'Z32 C C4 C4 C4 S')
    end

    # Sets the encryption of the WIFI Extension. The first parameter is the
    # type of the encryption. Possible values are:
    # 
    #  "Value", "Description"
    # 
    #  "0", "WPA/WPA2"
    #  "1", "WPA Enterprise (EAP-FAST, EAP-TLS, EAP-TTLS, PEAP)"
    #  "2", "WEP"
    #  "3", "No Encryption"
    # 
    # The key has a max length of 50 characters and is used if encryption
    # is set to 0 or 2 (WPA or WEP). Otherwise the value is ignored.
    # For WEP it is possible to set the key index (1-4). If you don't know your
    # key index, it is likely 1.
    # 
    # If you choose WPA Enterprise as encryption, you have to set eap options and
    # the length of the certificates (for other encryption types these paramters
    # are ignored). The certificate length are given in byte and the certificates
    # themself can be set with  BrickMaster#set_wifi_certificate. Eap options consist of 
    # the outer authentication (bits 1-2), inner authentication (bit 3) and 
    # certificate type (bits 4-5):
    # 
    #  "Option", "Bits", "Description"
    # 
    #  "outer auth", "1-2", "0=EAP-FAST, 1=EAP-TLS, 2=EAP-TTLS, 3=EAP-PEAP"
    #  "inner auth", "3", "0=EAP-MSCHAP, 1=EAP-GTC"
    #  "cert type", "4-5", "0=CA Certificate, 1=Client Certificate, 2=Private Key"
    # 
    # Example for EAP-TTLS + EAP-GTC + Private Key: option = 2 | (1 << 2) | (2 << 3).
    # 
    # The values are stored in the EEPROM and only applied on startup. That means
    # you have to restart the Master Brick after configuration.
    # 
    # It is recommended to use the Brick Viewer to set the WIFI encryption.
    # 
    # .. versionadded:: 1.3.0~(Firmware)
    def set_wifi_encryption(encryption, key, key_index, eap_options, ca_certificate_length, client_certificate_length, private_key_length)
      send_request(FUNCTION_SET_WIFI_ENCRYPTION, [encryption, key, key_index, eap_options, ca_certificate_length, client_certificate_length, private_key_length], 'C Z50 C C S S S', 0, '')
    end

    # Returns the encryption as set by BrickMaster#set_wifi_encryption.
    # 
    # .. versionadded:: 1.3.0~(Firmware)
    def get_wifi_encryption
      send_request(FUNCTION_GET_WIFI_ENCRYPTION, [], '', 59, 'C Z50 C C S S S')
    end

    # Returns the status of the WIFI Extension. The state is updated automatically,
    # all of the other parameters are updated on startup and every time
    # BrickMaster#refresh_wifi_status is called.
    # 
    # Possible states are:
    # 
    #  "State", "Description"
    # 
    #  "0", "Disassociated"
    #  "1", "Associated"
    #  "2", "Associating"
    #  "3", "Error"
    #  "255", "Not initialized yet"
    # 
    # .. versionadded:: 1.3.0~(Firmware)
    def get_wifi_status
      send_request(FUNCTION_GET_WIFI_STATUS, [], '', 36, 'C6 C6 C s C4 C4 C4 L L C')
    end

    # Refreshes the WIFI status (see BrickMaster#get_wifi_status). To read the status
    # of the WIFI module, the Master Brick has to change from data mode to
    # command mode and back. This transaction and the readout itself is
    # unfortunately time consuming. This means, that it might take some ms
    # until the stack with attached WIFI Extensions reacts again after this
    # function is called.
    # 
    # .. versionadded:: 1.3.0~(Firmware)
    def refresh_wifi_status
      send_request(FUNCTION_REFRESH_WIFI_STATUS, [], '', 0, '')
    end

    # This function is used to set the certificate as well as password and username
    # for WPA Enterprise. To set the username use index 0xFFFF,
    # to set the password use index 0xFFFE. The max length of username and 
    # password is 32.
    # 
    # The certificate is written in chunks of size 32 and the index is used as
    # the index of the chunk. The data length should nearly always be 32. Only
    # the last chunk can have a length that is not equal to 32.
    # 
    # The starting index of the CA Certificate is 0, of the Client Certificate
    # 10000 and for the Private Key 20000. Maximum sizes are 1312, 1312 and
    # 4320 byte respectively.
    # 
    # The values are stored in the EEPROM and only applied on startup. That means
    # you have to restart the Master Brick after uploading the certificate.
    # 
    # It is recommended to use the Brick Viewer to set the certificate, username
    # and password.
    # 
    # .. versionadded:: 1.3.0~(Firmware)
    def set_wifi_certificate(index, data, data_length)
      send_request(FUNCTION_SET_WIFI_CERTIFICATE, [index, data, data_length], 'S C32 C', 0, '')
    end

    # Returns the certificate for a given index as set by BrickMaster#set_wifi_certificate.
    # 
    # .. versionadded:: 1.3.0~(Firmware)
    def get_wifi_certificate(index)
      send_request(FUNCTION_GET_WIFI_CERTIFICATE, [index], 'S', 33, 'C32 C')
    end

    # Sets the power mode of the WIFI Extension. Possible modes are:
    # 
    #  "Mode", "Description"
    # 
    #  "0", "Full Speed (high power consumption, high throughput)"
    #  "1", "Low Power (low power consumption, low throughput)"
    # 
    # The default value is 0 (Full Speed).
    # 
    # .. versionadded:: 1.3.0~(Firmware)
    def set_wifi_power_mode(mode)
      send_request(FUNCTION_SET_WIFI_POWER_MODE, [mode], 'C', 0, '')
    end

    # Returns the power mode as set by BrickMaster#set_wifi_power_mode.
    # 
    # .. versionadded:: 1.3.0~(Firmware)
    def get_wifi_power_mode
      send_request(FUNCTION_GET_WIFI_POWER_MODE, [], '', 1, 'C')
    end

    # Returns informations about the WIFI receive buffer. The WIFI
    # receive buffer has a max size of 1500 byte and if data is transfered
    # too fast, it might overflow.
    # 
    # The return values are the number of overflows, the low watermark 
    # (i.e. the smallest number of bytes that were free in the buffer) and
    # the bytes that are currently used.
    # 
    # You should always try to keep the buffer empty, otherwise you will
    # have a permanent latency. A good rule of thumb is, that you can transfer
    # 1000 messages per second without problems.
    # 
    # Try to not send more then 50 messages at a time without any kind of
    # break between them.
    # 
    # .. versionadded:: 1.3.2~(Firmware)
    def get_wifi_buffer_info
      send_request(FUNCTION_GET_WIFI_BUFFER_INFO, [], '', 8, 'L S S')
    end

    # Sets the regulatory domain of the WIFI Extension. Possible domains are:
    # 
    #  "Domain", "Description"
    # 
    #  "0", "FCC: Channel 1-11 (N/S America, Australia, New Zealand)"
    #  "1", "ETSI: Channel 1-13 (Europe, Middle East, Africa)"
    #  "2", "TELEC: Channel 1-14 (Japan)"
    # 
    # The default value is 1 (ETSI).
    # 
    # .. versionadded:: 1.3.4~(Firmware)
    def set_wifi_regulatory_domain(domain)
      send_request(FUNCTION_SET_WIFI_REGULATORY_DOMAIN, [domain], 'C', 0, '')
    end

    # Returns the regulatory domain as set by BrickMaster#set_wifi_regulatory_domain.
    # 
    # .. versionadded:: 1.3.4~(Firmware)
    def get_wifi_regulatory_domain
      send_request(FUNCTION_GET_WIFI_REGULATORY_DOMAIN, [], '', 1, 'C')
    end

    # Returns the USB voltage in mV.
    # 
    # .. versionadded:: 1.3.5~(Firmware)
    def get_usb_voltage
      send_request(FUNCTION_GET_USB_VOLTAGE, [], '', 2, 'S')
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
    # .. versionadded:: 1.2.1~(Firmware)
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
    # .. versionadded:: 1.2.1~(Firmware)
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

  end
end

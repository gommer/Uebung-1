#!/usr/bin/env ruby
# -*- ruby encoding: utf-8 -*-

require 'tinkerforge/ip_connection'
require 'tinkerforge/bricklet_distance_ir'
require 'tinkerforge/bricklet_dual_relay'

include Tinkerforge

HOST = '192.168.1.33' # IP Address of the wlan brick
PORT = 4223
UID_dIR = 'cJb' # Unique ID of the distance IR brick
UID_dRL = 'c2W' # Unique ID of the dual relay brick

ipcon = IPConnection.new # Create IP connection

dir = BrickletDistanceIR.new UID_dIR, ipcon # Create device object
drl = BrickletDualRelay.new UID_dRL, ipcon

ipcon.connect HOST, PORT # Connect to brickd
# Don't use device before ipcon is connected

# Get threshold callbacks with a debounce time of 10 seconds (10000ms)
#dir.set_debounce_period 10000

dir.set_distance_callback_period 200

# Register threshold reached callback for distance smaller than 20cm
dir.register_callback(BrickletDistanceIR::CALLBACK_DISTANCE_REACHED) do |distance|
  puts "Distance is smaller than 20cm: #{distance/10.0} cm"
end

# Configure threshold for "smaller than 20cm" (unit is mm)
#dir.set_distance_callback_threshold '<', 200, 0

# Register distance callback (parameter has unit mm)
dir.register_callback(BrickletDistanceIR::CALLBACK_DISTANCE) do |distance|
    #puts "Distance: #{distance/10.0} cm"
    if distance/10.0 < 20
        drl.set_state true, false
    else
        drl.set_state false, false
    end
end

puts 'Press key to exit'
$stdin.gets

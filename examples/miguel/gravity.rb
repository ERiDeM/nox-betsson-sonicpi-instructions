# Welcome to Sonic Pi v2.10
speed = 0.4
use_synth :dsaw

play :d5, sustain: speed * 3
sleep speed * 3
play :e5, sustain: speed * 1
sleep speed * 1
play :f5, sustain: speed * 4
sleep speed * 4

play :a5, sustain: speed * 1.5
sleep speed * 1.5
play :g5, sustain: speed * 1.5
sleep speed * 1.5
play :a5, sustain: speed * 1
sleep speed * 1
play :c5, sustain: speed * 4
sleep speed * 4

use_synth :blade
speed = 0.3

# Notes for this song
# array where
# 0,2,4,6,7, ... are the notes
# 1,3,5,7,9, ... are the length of the notes
# Use https://onlinesequencer.net/ to obtain the notes
notes  = [:d5, 3,
          :e5, 1,
          :f5, 4,
          :a5, 1.5,
          :g5, 1.5,
          :a5, 1,
          :c5, 4,
          :d5, 3,
          :e5, 1,
          :f5, 2,
          :e5, 2,
          :g5, 2,
          :a5, 2,
          :g5, 2,
          :f5, 3,
          :f5, 1,
          :f5, 1,
          :f5, 1,
          :a5, 1,
          :a5, 1,
          :g5, 1,
          :f5, 2,
          :a5, 1,
          :a5, 1,
          :a5, 1,
          :g5, 1,
          :a5, 1,
          :g5, 1,
          :f5, 2,
          :f5, 1,
          :f5, 1,
          :f5, 1,
          :a5, 1,
          :a5, 1,
          :g5, 1,
          :f5, 2,
          :a5, 1,
          :a5, 1,
          :a5, 2,
          :cs6, 1,
          :cs6, 1,
          :cs6, 2,
          :f5, 1,
          :f5, 1,
          :f5, 1,
          :a5, 1,
          :a5, 1,
          :g5, 1,
          :f5, 2,
          :as5, 1,
          :as5, 1,
          :as5, 1,
          :a5, 2,
          :c6, 2,
          :a5, 2,
          :cs6, 2,
          :d6, 4
          ]

# Number of notes
notesNumber = notes.length / 2

# Calculate the full duration of the notes
duration = 0
di = 0
notesNumber.times do
  duration += notes[di + 1]
  di = di + 2
end

##########
# Notes
##########
in_thread do
  i = 0
  notesNumber.times do
    note = notes[i]               # get note on 0,2,4,6,7, ... positions
    length = notes[i + 1] * speed # get length on 1,3,5,7,9, ... positions
    
    play note, sustain: length    # play "note"
    sleep length                  # wait for "long" time
    i = i + 2                     # move to next note
  end
end

##########
# Effects
##########
in_thread do
  sleep (duration * speed) - (1 * speed)
  sample :vinyl_rewind
end

##########
# Drumps
##########
in_thread do
  # Each drum block consume 16 lengths
  # If we have
  (duration / 16).times do
    7.times do
      sample :drum_bass_soft
      sample :drum_cymbal_closed, amp: 0.3
      sleep speed
      
      sample :drum_snare_hard
      sleep speed
    end
    sample :drum_bass_soft
    sample :drum_cymbal_closed, amp: 0.3
    sleep speed / 2
    
    sample :drum_snare_hard
    sample :drum_splash_soft, amp:0.5
    
    sleep speed / 2
    
    sample :drum_snare_hard
    sample :drum_splash_soft, amp:0.5
    sleep speed / 2
    
    sample :drum_snare_hard
    sample :drum_splash_hard, amp:0.5
    sleep speed / 2
  end
end
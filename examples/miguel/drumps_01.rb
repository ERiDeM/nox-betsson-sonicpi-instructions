in_thread do
  loop do
    7.times do
      sample :drum_bass_soft
      sample :drum_cymbal_closed, amp: 0.3
      sleep 0.5
      
      sample :drum_snare_hard
      sleep 0.5
    end
    sample :drum_bass_soft
    sample :drum_cymbal_closed, amp: 0.3
    sleep 0.25
    
    sample :drum_snare_hard
    sample :drum_splash_soft, amp:0.5
    
    sleep 0.25
    
    sample :drum_snare_hard
    sample :drum_splash_soft, amp:0.5
    sleep 0.25
    
    sample :drum_snare_hard
    sample :drum_splash_hard, amp:0.5
    sleep 0.25
  end
end
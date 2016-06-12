in_thread do
  use_synth :tb303
  use_synth_defaults release: 0.25, attack: 0.5, cutoff: 100
  loop do
    play chord(:A3, :minor)
    play :A2
    sleep 2
    play chord(:C4, :major)
    play :C3
    sleep 2
    play chord(:E3, :minor)
    play :E3
    sleep 2
    play chord(:D4, :major)
    play :D3
    sleep 2
    play chord(:A3, :minor)
    play :A2
    sleep 2
    play chord(:C4, :major)
    play :C3
    sleep 2
    play chord(:E3, :minor)
    play :E3
    sleep 2
    play chord(:D4, :major)
    play :Gb3
    sleep 2
  end
end
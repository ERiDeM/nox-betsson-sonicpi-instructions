speed = 0.75

# How can you play those three blocks at the same time?

# Block 1

1.times do
  play chord(:A3, :minor)
  play :A2
  sleep speed * 2
  play chord(:C4, :major)
  play :C3
  sleep speed * 2
  play chord(:E3, :minor)
  play :E3
  sleep speed * 2
  play chord(:D4, :major)
  play :D3
  sleep speed * 2
  play chord(:A3, :minor)
  play :A2
  sleep speed * 2
  play chord(:C4, :major)
  play :C3
  sleep speed * 2
  play chord(:E3, :minor)
  play :E3
  sleep speed * 2
  play chord(:D4, :major)
  play :Gb3
  sleep speed * 2
end



# Block 2

2.times do
  3.times do
    sample :drum_heavy_kick
    sleep speed * 0.5
    sample :drum_snare_hard
    sleep speed * 0.5
    sample :drum_heavy_kick
    sleep speed * 0.5
    sample :drum_snare_hard
    sleep speed * 0.5
  end
  sample :drum_heavy_kick
  sleep speed * 0.5
  sample :drum_snare_hard
  sleep speed * 0.5
  sample :drum_heavy_kick
  sleep speed * 0.25
  sample :drum_snare_hard
  sleep speed * 0.25
  sample :drum_heavy_kick
  sleep speed * 0.25
  sample :drum_snare_hard
  sleep speed * 0.25
end



# Block 3

2.times do
  use_synth :tb303
  use_synth_defaults attack: 0.1, release: 0.1, cutoff: lambda{rrand(80, 120)}
  
  2.times do
    sleep speed * 0.25
    play :C5
    sleep speed * 0.25
    play :C5
    sleep speed * 0.25
    play :C5
    sleep speed * 0.125
    play :C5
    sleep speed * 0.25
    play :C5
    sleep speed * 0.125
    play :C5
    sleep speed * 0.25
    play :D5
    sleep speed * 0.5
  end
  sleep speed * 0.25
  play :B4
  sleep speed * 0.25
  play :B4
  sleep speed * 0.25
  play :B4
  sleep speed * 0.125
  play :B4
  sleep speed * 0.25
  play :B4
  sleep speed * 0.125
  play :B4
  sleep speed * 0.25
  play :D5
  sleep speed * 0.5
  sleep speed * 0.25
  play :A4
  sleep speed * 0.25
  play :A4
  sleep speed * 0.25
  play :A4
  sleep speed * 0.125
  play :A4
  sleep speed * 0.25
  play :A4
  sleep speed * 0.125
  play :B4
  sleep speed * 0.25
  play :A4
  sleep speed * 0.25
  play :G4
  sleep speed * 0.25
end

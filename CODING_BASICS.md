## Coding basics

### Notes

```
play 72
play 75
play :e5
```

You can use the online app https://onlinesequencer.net to compose easier the songs.

### Timers

```
play 72
sleep 1
play 75
sleep 1
play 90
```

### Volume

```
play 72, amp: 0.1
sleep 1
play 75, amp: 0.5
sleep 1
play 90, amp: 1
```

### Synth

```
use_synth :prophet
play 72
sleep 1
play 75
sleep 1
play 90
```

### Samples

```
sample :ambi_lunar_land
sleep 1
sample :ambi_drone
```
### Samples speed

```
sample :ambi_lunar_land, rate 2
```

### Variables

```
myNote = :a5

index = 0
```

### Operations

```
index = 4          # index is 4 
index = 4 + 2      # index is 6


index = 0          # Index is 0
index = index + 1  # Index is 1
index = index + 1  # Index is 2
```

### Lists

```
notes = [ :c5, :d5, :e5, :f5, :g5, :a5, :b5 ]

play notes[0]
play notes[1]
play notes[2]
play notes[3]
play notes[4]
play notes[5]
play notes[6]

numberOfNotes = notes.length
```

### Loops

```
4.times do
  play 50
  sleep 0.5
End


loop do
  play 50
  sleep 0.5
end


numberOfRepetitions = 3
numberOfRepetitions.times do
  # ...
end
```

### Threads

```
in_thread do
  loop do
    sample :drum_heavy_kick
    sleep 1
  end
end

in_thread do
  loop do
    use_synth :fm
    play 40, release: 0.2
    sleep 0.5
  end
end
```
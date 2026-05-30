# pitchshift

`pitchshift` is a small Bash wrapper around ffmpeg/ffprobe that shifts audio pitch by semitones while keeping playback length close to the original.

## Requirements

- `ffmpeg`
- `ffprobe`

## Usage

```bash
pitchshift <input> <output> <semitones>
```

Example:

```bash
pitchshift song.mp3 song-up-2.mp3 2
```

## Linux installation

### Option 1: install manually

```bash
sudo cp /path/to/pitchshift /usr/local/bin/pitchshift
sudo chmod 755 /usr/local/bin/pitchshift
```

### Option 2: run the install script

From the repository directory:

```bash
sudo ./install.sh
```

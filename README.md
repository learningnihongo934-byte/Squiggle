# Squiggle

Draw freehand and your drawing plays as music. A playhead sweeps left to right, and every line it crosses makes a sound.

- **Height is pitch.** Higher on the page means a higher note. Notes snap to a scale, so anything you draw stays in key.
- **Color is the instrument.** Bell, Pluck, Whistle, Bass and Drums. For drums, the bottom of the page is a kick, the middle is a snare and the top is a hi-hat.
- **Steep lines strum chords**, flat whistle lines hold one long note, and a single tap plays one note.
- Speed and mood (scale) controls, an eraser, undo and clear. Your drawing is saved in the browser.

Keys: Space plays or pauses, 1 to 5 picks a color, E toggles the eraser, Cmd/Ctrl+Z undoes.

It is one HTML file with no dependencies. All sound is made live with the Web Audio API.

## Build and run

```bash
./build.sh          # writes dist/index.html
./build.sh serve    # builds, then serves at http://localhost:8820
./build.sh deploy   # builds, then publishes to https://squiggle.rennko.tech
```

Live at **https://squiggle.rennko.tech** (a Cloudflare Worker serving static files).

`src/squiggle.html` is the source. The build wraps it in a full HTML document.

Made by **Virat Reddy Kaukuntla** ([@learningnihongo934-byte](https://github.com/learningnihongo934-byte))

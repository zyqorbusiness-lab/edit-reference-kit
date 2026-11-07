# Reference-driven editing workflow

This package contains 22 reference reels (`references/`) plus their manifest
(`REFERENCE_MANIFEST.csv`) and a frame extractor (`extract_frames_30fps.sh`).
Use them to learn a style, then edit the owner's OWN footage in that style.

## The order of work (do not skip steps)

1. **Extract frames at 30fps from every reference video.**
   Run `./extract_frames_30fps.sh ./references ./frames_30fps`.
   It writes 30 frames per second per video and a manifest with the real
   numbers: source FPS, width/height, duration, frames written, and a
   duplicate/drop note. Rules to remember when reading the frames:
   - source below 30fps -> some extracted frames are duplicated images
     (repeats, not new detail)
   - source above 30fps -> frames were dropped to fit 30/sec
     (some motion detail is missing)
   - the frame filename carries its position on the 30fps timeline, so you
     can map any frame back to a timestamp.

2. **Actually view the frames. All of them.**
   Go through every extracted frame of every reference, not a sample.
   If time or tooling forces sampling, say exactly what you viewed and what
   you did not. Never claim you studied every frame when you only extracted
   or skimmed them.

3. **Break down each reference before editing anything.**
   For each reel write down:
   - cuts and pacing: cut timestamps, average shot length, where the energy
     changes
   - captions: font feel, size, colors, animation, timing against speech,
     position and safe margins
   - framing: subject placement, headroom, punch-ins, aspect use
   - style: color, lighting, transitions, sound design, pacing of b-roll
   The manifest gives you the facts (duration, resolution, fps); the frames
   give you the craft.

4. **Then edit the owner's source footage in that style, and try to beat the
   reference.** Same type, same standard, but better where you can: tighter
   cuts, cleaner captions, better rhythm. The goal is to exceed the
   reference, not to trace it.

5. **No AI feel.** The edit must read as intentional human craft:
   - no generic AI aesthetics (auto neon, purple/blue gradients, fake HUDs,
     random glow, excessive particles, unmotivated zooms)
   - every cut, caption and effect needs a reason tied to the content
   - natural pacing, natural sound, nothing that looks auto-generated

## Hard rules

- **Never copy reference footage or audio into the final video.** References
  teach style only. The final video is built from the owner's own footage,
  voiceover, music and assets.
- **Own source footage is required.** If none was supplied, ask for it.
  Do not produce a "final" video out of reference material.
- **Do not stop at extraction or at a plan.** Extracting frames and writing
  a breakdown is preparation. The job ends with an actual rendered edit that
  passed the QC checklist, or a clear report of what blocked the render.
- **Respect the reference creators.** Do not repost or redistribute their
  reels; keep them as private study material.

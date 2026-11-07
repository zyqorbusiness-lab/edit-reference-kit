# Extraction runs - manifests and history

## Run history

1. **v1.0 build-time run** (7 Nov 2026, ~09:36 IST): 1 reel (DfFo9D0IZM0_metros.creative). The generated manifest row is recorded verbatim in v1.0_kit_audit.md section 6: 329 frames written.
2. **v1.0 fresh reproduction run** (7 Nov 2026, ~09:57 IST, kit re-unpacked from the sha256-verified ZIP): same reel, identical result (329 frames). Manifest row also recorded in v1.0_kit_audit.md section 6.
3. **Second-reel run** (before the original audit): DcbdZShTGoZ_barsolmedia -> 869 frames. The generated manifest file for this run was not preserved; only the count was recorded in the audit. The count was independently reproduced by run 4 (same metadata, 869 frames).
4. **v1.1 corrected-extractor full run** (7 Nov 2026): the corrected extract_frames_30fps.sh run on all 22 v1.0 reels (from the sha256-verified ZIP). Generated manifest: `extraction_runs/run_2026-11-07_corrected_full22_manifest.csv` (verbatim script output; the run was executed in 4 sequential batches of reels and the generated rows concatenated and sorted by file). Total: **25,484 frames** across 22 reels.
5. **Independent cross-check run** (7 Nov 2026, a separate editing-workflow process): plain `ffmpeg -i <reel>.mp4 -vf fps=30 -q:v 2 <out>/frame_%06d.jpg` per reel, no -frame_pts naming. All 22 per-reel frame counts are identical to run 4. (That run was separately reported with a 24,265 grand total; the actual sum of its per-reel counts is 25,484, matching run 4 - the lower figure was an arithmetic slip in reporting, not a count difference.)

## Unrun reels

None remain - all 22 reels have been extracted at 30fps. What is still NOT done: viewing every extracted frame at full resolution (coverage is sampled; see v1.0_kit_audit.md section 10) and the end-to-end edit/render/QC workflow pass.

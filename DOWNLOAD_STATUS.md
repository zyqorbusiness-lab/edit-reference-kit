# Download status and limitations - all 22 reference reels

Per-file status as of 7 Nov 2026 (update 2). Sources: v1.0_kit_audit.md sections 7-8 (download/decode verification) and the v1.1 full extraction run (extraction_runs/run_2026-11-07_corrected_full22_manifest.csv).

| # | File | Creator | Download status | Fetch history | Source fps | Frames written (v1.1 run) | Limitations / notes |
|---|------|---------|-----------------|---------------|-----------|--------------------------|---------------------|
| 1 | DYZNERDSwnG_varculin.mp4 | @varculin | Downloaded, decode-verified | Re-fetched after first-pass download-loop bug / wrong cached stream (fixed before shipping) | 30.000 | 2751 | None for download/extraction |
| 2 | DZgzUHxSLBG_editingworld8755.mp4 | @editingworld8755 | Downloaded, decode-verified | Re-fetched after first-pass download-loop bug / wrong cached stream (fixed before shipping) | 60.000 | 690 | Above-30fps source: 30fps extraction dropped frames (1380 decoded -> 690 written); some motion detail not in frames |
| 3 | DaFaIEGIFvx_tahrima_motion.mp4 | @tahrima_motion | Downloaded, decode-verified | Re-fetched after first-pass download-loop bug / wrong cached stream (fixed before shipping) | 29.970 | 1364 | 29.97fps source: 30fps timeline duplicates ~1 frame per ~33s (1363 decoded -> 1364 written) |
| 4 | DaLPOAxxltZ_imzache.mp4 | @imzache | Downloaded, decode-verified | First-pass download OK | 30.000 | 1123 | None for download/extraction |
| 5 | DbfR5waTkN__motionmixstudio.mp4 | @motionmixstudio | Downloaded, decode-verified | Kept from first pass: different rendition id, identical duration/content | 30.000 | 926 | None for download/extraction |
| 6 | Dbk_ON0AjWD_mosycreate.mp4 | @mosycreate | Downloaded, decode-verified | Re-fetched after first-pass download-loop bug / wrong cached stream (fixed before shipping) | 30.000 | 870 | None for download/extraction |
| 7 | Dc3mgNJO73W_johnbucog.mp4 | @johnbucog | Downloaded, decode-verified | Re-fetched after first-pass download-loop bug / wrong cached stream (fixed before shipping) | 24.000 | 975 | Below-30fps source: extraction duplicated frames (780 decoded -> 975 written); repeats add no new detail |
| 8 | DcW33C-zyaN_barsolmedia.mp4 | @barsolmedia | Downloaded, decode-verified | First-pass download OK | 30.000 | 970 | None for download/extraction |
| 9 | DcbdZShTGoZ_barsolmedia.mp4 | @barsolmedia | Downloaded, decode-verified | First-pass download OK | 30.000 | 869 | None for download/extraction |
| 10 | Dd1Mf7xzsbm_barsolmedia.mp4 | @barsolmedia | Downloaded, decode-verified | First-pass download OK | 30.000 | 803 | None for download/extraction |
| 11 | Dd7GCoqTkPs_imzache.mp4 | @imzache | Downloaded, decode-verified | First-pass download OK | 24.000 | 2333 | Below-30fps source: extraction duplicated frames (1866 decoded -> 2333 written); repeats add no new detail |
| 12 | DdpCoibIthe_ara.editorr.mp4 | @ara.editorr | Downloaded, decode-verified | Re-fetched after first-pass download-loop bug / wrong cached stream (fixed before shipping) | 30.000 | 713 | None for download/extraction |
| 13 | DePG8Iquotn_johnbucog.mp4 | @johnbucog | Downloaded, decode-verified | First-pass download OK | 24.000 | 1053 | Below-30fps source: extraction duplicated frames (842 decoded -> 1053 written); repeats add no new detail |
| 14 | Deefa7lIFAg_thetwofaced_.mp4 | @thetwofaced_ | Downloaded, decode-verified | First-pass download OK | 30.000 | 1163 | None for download/extraction |
| 15 | Dehjq7QqHeo_zache.fs.mp4 | @zache.fs | Downloaded, decode-verified | First-pass download OK | 30.000 | 1552 | None for download/extraction |
| 16 | DehkOI3qX6d_zache.fs.mp4 | @zache.fs | Downloaded, decode-verified | First-pass download OK | 29.970 | 1343 | 29.97fps source: 30fps timeline duplicates ~1 frame per ~33s (1342 decoded -> 1343 written) |
| 17 | DejPNbqtu4__madebyadito.mp4 | @madebyadito | Downloaded, decode-verified | First-pass download OK | 24.000 | 824 | Below-30fps source: extraction duplicated frames (659 decoded -> 824 written); repeats add no new detail |
| 18 | DfAcnNpsKy0_mosycreate.mp4 | @mosycreate | Downloaded, decode-verified | Re-fetched after first-pass download-loop bug / wrong cached stream (fixed before shipping) | 30.000 | 1166 | None for download/extraction |
| 19 | DfFQiNCT8Lj_barsolmedia.mp4 | @barsolmedia | Downloaded, decode-verified | Re-fetched after first-pass download-loop bug / wrong cached stream (fixed before shipping) | 24.000 | 1263 | Below-30fps source: extraction duplicated frames (1010 decoded -> 1263 written); repeats add no new detail |
| 20 | DfFo9D0IZM0_metros.creative.mp4 | @metros.creative | Downloaded, decode-verified | First-pass download OK | 30.000 | 329 | None for download/extraction |
| 21 | DfSLmowPcAr_faisalintech.mp4 | @faisalintech | Downloaded, decode-verified | Re-fetched after first-pass download-loop bug / wrong cached stream (fixed before shipping) | 25.000 | 1867 | Below-30fps source: extraction duplicated frames (1556 decoded -> 1867 written); repeats add no new detail |
| 22 | DfSwqnwTlCg_yunsan_studio.mp4 | @yunsan_studio | Downloaded, decode-verified | Re-fetched after first-pass download-loop bug / wrong cached stream (fixed before shipping) | 60.000 | 537 | Above-30fps source: 30fps extraction dropped frames (1073 decoded -> 537 written); some motion detail not in frames |

## Overall
- 22/22 reels downloaded with audio and verified: full ffmpeg decode of every frame passed with zero errors; all file MD5s unique; ffprobe metadata matches REFERENCE_MANIFEST.csv exactly (v1.0_kit_audit.md section 7).
- First-pass issue (fixed before shipping): the first download loop succeeded for 11/22; 11 failed on a data-parsing bug in the loop, not a source problem. An integrity check then found 4 reels sharing one wrong cached video stream; 10 reels were re-fetched from their correct per-reel assets (marked above).
- No reel permanently failed. There is no remaining failed-download limitation.
- Frame VIEWING is the remaining limitation: reels were reviewed via 2fps contact sheets (every 15th frame) plus full-res detail on 6 style-defining reels - not every frame of every reel at full resolution. See v1.0_kit_audit.md section 10.
- The reels are public reels by their creators, fetched through the user's own logged-in session from Instagram's CDN. They are private study material; do not repost or redistribute.

# Dr. Mario

This project recreates the classic Dr. Mario game entirely in MIPS Assembly.

Capsules fall into a bottle containing viruses, and the player must align four of the same color to eliminate them. The game includes capsule movement, rotation, gravity, virus detection and removal, and game-over conditions.

Notable features:
- Real-time keyboard controls and gravity that accelerates over time
- Visual and logical data encoded in 32-bit pixel words
- Background music and sound effects via MIPS syscalls
- Sprite rendering for Dr. Mario, viruses, and a capsule preview panel

The entire game loop, rendering, and audio are implemented from scratch in low-level MIPS code using modular drawing routines and memory-mapped I/O.

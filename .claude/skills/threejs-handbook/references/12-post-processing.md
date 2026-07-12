12_POST_PROCESSING_SYSTEM.md

Three.js Post Processing System

Purpose

This document defines the standards for post-processing in Three.js applications.

Post-processing is the final visual layer.

It transforms:

Raw Render

↓

Cinematic Image

⸻

Post-processing should improve:

* realism
* atmosphere
* focus
* color identity
* emotional impact

It should never hide poor fundamentals.

⸻

1. Post Processing Philosophy

Post-processing is refinement.

The correct order is:

1. Good geometry
2. Good materials
3. Good lighting
4. Good camera
5. Post-processing

Never use effects to compensate for weak fundamentals.

⸻

2. Render Pipeline

Production pipeline:

Scene
↓
Camera
↓
Renderer
↓
HDR Rendering
↓
Post Processing
↓
Color Management
↓
Display

⸻

3. Tone Mapping

Tone mapping converts HDR lighting into a display image.

Purpose:

* preserve highlights
* improve contrast
* create cinematic response

⸻

Avoid:

* blown highlights
* crushed shadows
* unnatural contrast

⸻

4. Exposure Control

Exposure defines overall brightness.

Use exposure to:

* balance lighting
* create mood
* control highlights

Do not fix bad lighting with exposure.

⸻

5. Bloom System

Bloom simulates bright light scattering.

Good uses:

* neon
* crystals
* magic
* energy
* luxury highlights

⸻

Bad usage:

Everything glowing.

Bloom replacing lighting.

Loss of detail.

⸻

6. Bloom Rules

Premium bloom requires:

* controlled threshold
* controlled intensity
* correct object selection

Only important elements should bloom.

⸻

7. Depth of Field

Depth of field creates camera realism.

Purpose:

* focus attention
* create cinematic shots
* separate foreground and background

⸻

Use for:

Hero scenes.

Product reveals.

Cinematic transitions.

⸻

Avoid:

Permanent extreme blur.

⸻

8. Motion Blur

Motion blur communicates speed.

Useful for:

* fast movement
* camera transitions
* action moments

⸻

Avoid:

Always enabled.

It reduces readability.

⸻

9. Vignette

Vignette subtly guides attention.

Good:

Small cinematic effect.

Bad:

Heavy dark corners.

⸻

10. Color Grading

Color grading creates identity.

Adjust:

* contrast
* saturation
* temperature
* shadows
* highlights

⸻

Examples:

Luxury:

Warm highlights.

Dark shadows.

High contrast.

⸻

Cyberpunk:

Cool shadows.

Neon accents.

High saturation.

⸻

Fantasy:

Natural tones.

Soft contrast.

⸻

11. Film Look

A cinematic image often contains:

* controlled contrast
* subtle grain
* balanced colors
* realistic highlights

⸻

Avoid:

Overprocessed images.

⸻

12. Sharpening

Sharpening can improve clarity.

Use carefully.

Too much:

* artificial edges
* noisy image

⸻

13. Anti-Aliasing Standards

Aliasing destroys quality.

Use appropriate:

* MSAA
* TAA alternatives
* post-process AA

depending on platform.

⸻

14. Selective Effects

Not every object should receive every effect.

Example:

Bloom:

Only emissive objects.

Depth of Field:

Only cinematic cameras.

Motion Blur:

Only specific sequences.

⸻

15. Quality Profiles

Create presets.

Example:

Ultra
├── High Resolution
├── Full Effects
├── Maximum Shadows
High
├── Reduced Effects
Medium
├── Reduced Post Processing
Mobile
├── Minimal Effects

⸻

16. Performance Rules

Post-processing can be expensive.

Monitor:

* render passes
* resolution
* shader cost
* mobile impact

⸻

Avoid unnecessary passes.

⸻

17. Cinematic Camera Pipeline

For hero scenes:

Recommended:

Camera movement

Depth of Field

Color grading

Controlled bloom

Atmosphere

⸻

18. Game Event Effects

Large events may temporarily enhance rendering.

Example:

Jackpot:

Increase:

* bloom
* particles
* camera movement

After event:

Return to normal.

⸻

19. Post Processing Architecture

Recommended:

PostProcessingSystem
├── RenderPass
├── Bloom
├── ColorGrade
├── DepthOfField
├── MotionEffects
└── QualityController

⸻

20. Review Checklist

Before release:

✓ Effects improve image

✓ No excessive processing

✓ Good performance

✓ Mobile fallback exists

✓ Visual identity is consistent

✓ Important objects remain readable

⸻

Final Rule

Post-processing should make a great scene exceptional.

It should never make a bad scene acceptable.
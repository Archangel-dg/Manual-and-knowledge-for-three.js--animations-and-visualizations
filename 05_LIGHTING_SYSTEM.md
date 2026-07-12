05_LIGHTING_SYSTEM.md

Three.js Lighting System

Purpose

This document defines the lighting standards for premium Three.js experiences.

Lighting is not only illumination.

Lighting defines:

* mood
* depth
* focus
* realism
* emotion
* material perception

A professional scene does not simply contain lights.

It contains a lighting design.

⸻

1. Lighting Philosophy

Never add lights randomly.

Every light must have a purpose.

Before adding a light ask:

* What does this light reveal?
* What does this light improve?
* Does this create depth?
* Does this support the visual hierarchy?

If a light has no purpose, remove it.

⸻

2. The Three-Light Foundation

Most professional scenes start with three main lighting roles.

⸻

Key Light

The primary light source.

Purpose:

* defines shape
* creates shadows
* establishes direction

Characteristics:

* strongest light
* clear direction
* controlled intensity

Examples:

Sunlight

Studio spotlight

Main product light

⸻

Fill Light

Controls contrast.

Purpose:

* prevents unwanted darkness
* maintains readability
* balances the scene

Characteristics:

* softer
* lower intensity
* less directional

⸻

Rim Light

Separates objects from the background.

Purpose:

* creates silhouette
* increases depth
* improves focus

Commonly used in:

* product visualization
* character scenes
* luxury presentations

⸻

3. Environment Lighting

Real-world objects reflect their environment.

Without environment lighting:

* metals look fake
* glass looks flat
* crystals lose depth

Use:

* HDRI environments
* environment maps
* reflection systems

⸻

4. HDRI Standards

HDRI provides realistic environmental lighting.

Good HDRI usage:

* correct exposure
* appropriate intensity
* matching scene style

Examples:

Luxury:

Studio HDRI

Casino:

Dark interior HDRI

Nature:

Outdoor HDRI

Sci-Fi:

Controlled colored environment

⸻

5. Cinematic Lighting

Premium visualizations often use cinematic principles.

Common setup:

Dark Base

Allows highlights to become important.

Controlled Contrast

Not everything is equally visible.

Directional Light

Creates form.

Accent Lighting

Creates emotional focus.

⸻

6. Color Temperature

Light has emotional meaning.

Warm light:

* luxury
* comfort
* gold
* premium feeling

Cool light:

* technology
* futuristic
* sterile
* night atmosphere

Mixed temperatures create depth.

Example:

Warm object light.

Cool environment light.

⸻

7. Shadow Standards

Shadows create realism.

Without shadows:

Objects appear disconnected.

⸻

Good shadows require:

* correct softness
* correct direction
* appropriate resolution

⸻

Avoid:

* extremely sharp shadows everywhere
* invisible shadows
* excessive shadow maps

⸻

8. Ambient Occlusion

Ambient occlusion creates contact depth.

Useful for:

* objects touching surfaces
* corners
* small details

Examples:

A coin on a table.

A button inside a machine.

A card on a surface.

⸻

9. Bloom Standards

Bloom creates perception of light.

Use carefully.

Good usage:

* neon
* magic effects
* energy
* luxury highlights

Bad usage:

* entire scene glowing
* loss of contrast
* blurry visuals

Bloom should enhance reality.

Not replace lighting.

⸻

10. Volumetric Lighting

Volumetrics create atmosphere.

Examples:

* light beams
* fog
* dust
* underwater effects
* cinematic environments

Use sparingly.

Volumetrics are expensive.

⸻

11. Product Visualization Lighting

For premium objects:

Recommended:

* clean background
* soft key light
* subtle rim light
* controlled reflections
* slow camera movement

Goal:

Make the object desirable.

⸻

12. Game Lighting Standards

Interactive experiences require:

Readability first.

Important objects need:

* contrast
* highlights
* visual feedback

Examples:

Winning symbol:

Stronger light.

Interactive button:

Accent glow.

Important area:

Focused illumination.

⸻

13. Casino / Luxury Lighting Style

For casino-style environments:

Use:

* dark backgrounds
* emerald/gold accents
* reflective surfaces
* controlled highlights
* atmospheric depth

Avoid:

* flat bright environments
* random colorful lights
* excessive effects

Luxury comes from control.

⸻

14. Lighting Animation

Lights can communicate events.

Examples:

Win:

* intensity increase
* color shift
* bloom increase

Machine activation:

* sequential lights
* pulses
* energy buildup

Environment:

* slow changes
* atmospheric variation

⸻

15. Performance Rules

Lighting has a cost.

Monitor:

* shadow maps
* dynamic lights
* volumetrics
* post-processing

Prefer:

* baked lighting when possible
* optimized shadows
* fewer powerful lights

⸻

16. Lighting Architecture

Do not scatter lights throughout code.

Create a lighting system.

Example:

LightingSystem
├── EnvironmentLight
├── KeyLight
├── FillLight
├── RimLights
├── DynamicEffects
└── Presets

⸻

17. Lighting Presets

Create reusable presets.

Examples:

LuxuryStudio
DarkCasino
CyberpunkNight
FantasyTemple
SciFiLaboratory
NatureDay
Underwater

⸻

18. Lighting Review Checklist

Before approving:

✓ Clear focal point

✓ Good contrast

✓ Materials react correctly

✓ Shadows feel natural

✓ Environment supports objects

✓ Effects are controlled

✓ Performance is acceptable

⸻

Final Rule

Lighting does not make objects visible.

Lighting makes objects believable.
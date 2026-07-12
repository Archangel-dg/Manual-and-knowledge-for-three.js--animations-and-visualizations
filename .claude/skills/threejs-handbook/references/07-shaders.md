07_SHADER_SYSTEM.md

Three.js Shader System

Purpose

This document defines the standards for creating custom shaders and GPU-based visual effects in Three.js.

Shaders are not decoration.

Shaders are tools for creating visual behavior that cannot be achieved efficiently with standard materials.

Examples:

* energy effects
* holograms
* magic surfaces
* water
* fire
* dissolving objects
* procedural materials
* advanced particles

⸻

1. Shader Philosophy

A shader should solve a visual problem.

Never create shaders because they appear advanced.

Before writing GLSL ask:

* Does this require GPU processing?
* Can a standard material achieve the result?
* Is the visual improvement worth the complexity?

⸻

2. Shader Pipeline Understanding

Every shader follows:

Geometry
↓
Vertex Shader
↓
Rasterization
↓
Fragment Shader
↓
Final Pixel

⸻

Vertex Shader Responsibility

Controls:

* position
* deformation
* displacement
* vertex animation

Examples:

* waves
* floating objects
* organic movement
* terrain deformation

⸻

Fragment Shader Responsibility

Controls:

* color
* surface appearance
* lighting response
* effects

Examples:

* glow
* holograms
* gradients
* procedural textures

⸻

3. Shader Design Principles

Good shaders are:

* predictable
* configurable
* optimized
* reusable

Avoid:

* unnecessary calculations
* uncontrolled complexity
* expensive loops

⸻

4. Uniform Architecture

Shaders should expose adjustable parameters.

Example:

EnergyShader
Uniforms:
color
intensity
speed
noiseScale
opacity
frequency

This allows designers and developers to tune effects without rewriting code.

⸻

5. Time-Based Animation

Many effects require time.

Examples:

* flowing energy
* pulsing glow
* moving patterns

Use:

uTime

Principle:

Small controlled movement feels premium.

Avoid:

Fast chaotic animation.

⸻

6. Fresnel Effects

Fresnel simulates edge-based reflections.

Common uses:

* glass
* crystals
* force fields
* holograms
* magical objects

Concept:

Edges become more visible depending on viewing angle.

⸻

7. Glow Systems

Glow should come from:

* emissive materials
* bloom
* shader effects
* lighting interaction

Avoid:

Simply increasing brightness.

A glowing object should affect perception.

⸻

8. Hologram Shader Standard

Characteristics:

* transparency
* scanning lines
* color variation
* edge glow
* subtle movement

Common elements:

* Fresnel
* noise
* time animation
* distortion

⸻

9. Dissolve Shader Standard

Used for:

* object appearance
* destruction
* transitions
* teleport effects

Typical process:

1. Generate noise pattern
2. Compare against threshold
3. Remove fragments
4. Add edge emission

⸻

10. Noise Functions

Noise creates natural variation.

Used for:

* clouds
* fire
* smoke
* organic surfaces
* energy

Common types:

* Perlin Noise
* Simplex Noise
* Voronoi Noise

⸻

11. Procedural Materials

Procedural shaders create materials without textures.

Examples:

* lava
* marble
* plasma
* clouds
* sci-fi surfaces

Benefits:

* scalable
* dynamic
* lightweight

⸻

12. Water Shader Standards

Water requires:

* distortion
* reflection
* movement
* transparency

Important elements:

* wave displacement
* normal variation
* environment reflection

Avoid:

Simple blue transparent planes.

⸻

13. Fire Shader Standards

Fire requires:

* irregular movement
* color gradients
* noise
* brightness variation

Avoid:

Static orange textures.

⸻

14. Particle Shader Standards

Particles are ideal for:

* atmosphere
* magic
* explosions
* dust
* rewards

Optimize:

* use GPU calculations when possible
* reuse materials
* limit overdraw

⸻

15. Post Processing

Post processing enhances final output.

Examples:

* Bloom
* Depth of Field
* Color Correction
* Vignette
* Motion Blur

Use carefully.

⸻

16. Bloom Rules

Bloom should emphasize:

* light sources
* energy
* highlights

Avoid:

Everything glowing.

⸻

17. Depth of Field Rules

Depth of field creates cinematic focus.

Use for:

* product reveals
* cinematic scenes
* hero shots

Avoid:

Permanent strong blur.

⸻

18. Color Grading

Color grading creates visual identity.

Control:

* contrast
* saturation
* exposure
* temperature

The final image should have a consistent mood.

⸻

19. Shader Performance Rules

Every shader has a cost.

Optimize:

* texture lookups
* mathematical operations
* branching
* precision

Avoid:

Complex shaders on many objects.

⸻

20. Shader Organization

Never place shaders randomly.

Structure:

shaders/
├── Materials/
├── Effects/
├── Particles/
├── Environment/
├── PostProcessing/
└── Utilities/

⸻

21. Shader Review Checklist

Before approving:

✓ Is a shader necessary?

✓ Is performance acceptable?

✓ Are uniforms configurable?

✓ Is animation subtle?

✓ Does it improve the experience?

✓ Does it work on mobile?

⸻

Final Rule

A shader is not impressive because it is complex.

A shader is impressive because it creates an effect that feels impossible with simple methods.
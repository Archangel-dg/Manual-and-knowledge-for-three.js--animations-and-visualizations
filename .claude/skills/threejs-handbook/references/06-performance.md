06_PERFORMANCE_ENGINEERING.md

Three.js Performance Engineering

Purpose

This document defines the performance standards for production-ready Three.js applications.

The objective is not simply to make a scene run.

The objective is to make a scene run:

* smoothly
* consistently
* efficiently
* across devices

A premium experience must maintain visual quality while respecting hardware limitations.

⸻

1. Performance Philosophy

Performance is part of the design.

Every object, texture, shader and effect has a cost.

Before adding anything, evaluate:

* GPU impact
* CPU impact
* memory usage
* loading impact
* mobile compatibility

The best optimization is avoiding unnecessary work.

⸻

2. Performance Targets

Production targets:

Desktop

Target:

60 FPS minimum

Preferred:

90–120 FPS

⸻

Mobile

Target:

60 FPS on modern devices

Acceptable:

45–60 FPS depending on complexity

⸻

VR / High Refresh

Target:

90 FPS+

⸻

3. The Three Performance Categories

Every optimization belongs to one of three areas.

⸻

CPU Performance

Controls:

* JavaScript execution
* calculations
* animations
* physics
* state updates

Reduce:

* unnecessary loops
* excessive object updates
* expensive calculations

⸻

GPU Performance

Controls:

* rendering
* shaders
* shadows
* particles
* post-processing

Reduce:

* draw calls
* shader complexity
* resolution cost
* transparency

⸻

Memory Performance

Controls:

* textures
* geometry
* assets
* resources

Reduce:

* duplicate assets
* oversized textures
* unused resources

⸻

4. Draw Call Management

Draw calls are one of the biggest performance factors.

A scene with:

100 objects

can be slower than:

one optimized object

because every object requires rendering instructions.

⸻

Optimization Methods

Use:

* Instancing
* Material reuse
* Geometry reuse
* Object batching

⸻

5. Instancing Standards

Use InstancedMesh when many identical objects exist.

Examples:

Good candidates:

* coins
* particles
* trees
* crystals
* cards
* repeated decorations

⸻

Avoid:

Creating hundreds of identical meshes.

⸻

6. Geometry Optimization

Geometry complexity must match visual importance.

Main object:

Higher detail.

Background:

Lower detail.

⸻

Optimization methods:

* reduce polygons
* remove invisible geometry
* use LOD systems
* merge static geometry

⸻

7. Level of Detail (LOD)

Not every object needs maximum detail all the time.

LOD system:

Camera Distance
Close
→ High Detail Model
Medium
→ Medium Detail Model
Far
→ Low Detail Model

⸻

Use LOD for:

* environments
* large scenes
* open worlds
* complex objects

⸻

8. Texture Optimization

Textures often consume the most memory.

Standards:

Prefer:

* KTX2 compression
* WebP
* optimized resolutions

Avoid:

* unnecessary 8K textures
* duplicate textures
* unused maps

⸻

9. Texture Resolution Guidelines

Example:

Hero object:

2048px

Important objects:

1024px

Background:

512px

Small details:

256px

⸻

Higher resolution is not automatically better.

⸻

10. Shader Performance

Shaders run on the GPU.

Expensive shader features:

* many texture samples
* complex calculations
* transparency
* procedural noise
* ray-marching

⸻

Before creating a shader:

Ask:

Is it visually necessary?

⸻

11. Transparency Rules

Transparency is expensive.

Avoid excessive transparent layers.

Problems:

* sorting
* overdraw
* GPU cost

Use transparency only when required.

⸻

12. Shadow Optimization

Shadows are expensive.

Optimize:

* shadow map size
* shadow distance
* number of shadow-casting lights

⸻

Do not enable shadows everywhere.

⸻

13. Animation Performance

Avoid updating everything every frame.

Bad:

Every object updates continuously.

⸻

Better:

Only update:

* active objects
* visible objects
* required systems

⸻

Use:

* event-driven animation
* animation managers
* efficient loops

⸻

14. Particle Systems

Particles create atmosphere but can destroy performance.

Optimize:

* particle count
* lifetime
* shader complexity
* update frequency

⸻

Prefer GPU particles for large systems.

⸻

15. Asset Loading Performance

Loading experience matters.

Use:

* progressive loading
* lazy loading
* compression
* caching

⸻

Priority:

First impression assets load first.

⸻

16. Resource Management

Always dispose unused resources.

Clean:

* geometries
* materials
* textures
* render targets

Memory leaks destroy long sessions.

⸻

17. Mobile Optimization Rules

Mobile devices have:

* weaker GPUs
* limited memory
* battery limitations

Always consider:

* smaller textures
* fewer effects
* simpler shaders
* reduced shadows
* adaptive quality

⸻

18. Adaptive Quality System

Professional applications adjust quality.

Example:

High Quality
↓
Performance Monitor
↓
Medium Quality
↓
Low Quality

Adjust:

* shadows
* particles
* effects
* resolution

⸻

19. Performance Monitoring

Every production project should measure:

* FPS
* frame time
* memory
* draw calls
* triangles
* shader cost

Never optimize blindly.

⸻

20. Performance Review Checklist

Before release:

✓ Stable FPS

✓ No memory leaks

✓ Optimized assets

✓ Controlled shaders

✓ Reasonable draw calls

✓ Mobile tested

✓ Loading optimized

✓ Effects justified

⸻

Final Rule

A professional Three.js developer does not ask:

“How can I add more?”

They ask:

“How can I create more impact with less cost?”
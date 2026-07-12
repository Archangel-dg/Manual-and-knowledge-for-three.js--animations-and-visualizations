08_ASSET_PIPELINE.md

Three.js Asset Pipeline

Purpose

This document defines the production workflow for creating, optimizing and integrating 3D assets into Three.js applications.

A high-quality real-time experience begins before the model reaches Three.js.

The quality of the final scene depends on:

* modeling
* topology
* materials
* textures
* compression
* export settings
* optimization

⸻

1. Asset Pipeline Overview

The standard pipeline:

Concept
↓
3D Modeling
↓
UV Mapping
↓
Material Creation
↓
Texture Baking
↓
Optimization
↓
GLTF Export
↓
Compression
↓
Three.js Integration
↓
Performance Testing

⸻

2. Preferred Asset Format

Production standard:

GLTF / GLB

Recommended because:

* optimized for real-time rendering
* supports PBR materials
* supports animations
* supports cameras
* supports lights
* web friendly

Prefer:

.glb

for final production assets.

⸻

3. Blender Workflow

Blender is the preferred creation environment.

Recommended workflow:

Model

↓

Apply transforms

↓

Create materials

↓

Optimize geometry

↓

Bake textures

↓

Export GLB

⸻

4. Modeling Standards

Models should be created with real-time usage in mind.

Prioritize:

* correct silhouette
* efficient topology
* clean geometry
* appropriate polygon count

⸻

Avoid:

* unnecessary hidden geometry
* excessive subdivisions
* duplicate objects
* unused details

⸻

5. Polygon Budget

Polygon count depends on importance.

Example:

Hero Object

High detail.

Used close to camera.

⸻

Main Objects

Medium detail.

Frequently visible.

⸻

Background Objects

Low detail.

Used for environment filling.

⸻

6. Topology Standards

Good topology:

* predictable deformation
* clean surfaces
* efficient rendering

Avoid:

* unnecessary triangles
* broken normals
* overlapping geometry

⸻

7. Normal Standards

Correct normals are essential.

Problems:

* black surfaces
* incorrect reflections
* broken lighting

Always verify:

* face direction
* smooth shading
* weighted normals

⸻

8. UV Mapping Standards

UVs determine texture quality.

Good UVs require:

* minimal stretching
* logical islands
* efficient space usage

⸻

9. Texture Pipeline

Preferred texture workflow:

High resolution source

↓

Bake

↓

Optimize

↓

Compress

↓

Runtime texture

⸻

10. Texture Standards

Use physically based texture maps:

Base Color

Defines color.

Normal Map

Adds surface detail.

Roughness Map

Controls surface response.

Metallic Map

Defines metal behavior.

Ambient Occlusion

Adds contact depth.

⸻

11. Texture Resolution Rules

Use resolution based on importance.

Hero asset:

2048px

Important object:

1024px

Small object:

512px

Background:

256px

⸻

Do not use high-resolution textures without visual benefit.

⸻

12. Texture Compression

Production standard:

KTX2 / Basis compression

Benefits:

* smaller files
* faster loading
* lower memory usage

⸻

13. Geometry Compression

Use:

Draco compression

Benefits:

* reduced file size
* faster downloads

⸻

14. Animation Export Standards

For animated assets:

Check:

* animation naming
* keyframe optimization
* hierarchy
* looping behavior

⸻

Example:

Character
├── Idle
├── Walk
├── Run
└── Action

⸻

15. Scene Organization Before Export

Before exporting remove:

* unused objects
* unused materials
* test lights
* hidden geometry

The exported file should contain only production content.

⸻

16. Asset Naming Standards

Use descriptive names.

Bad:

Cube001
Object12
Mesh45

Good:

GoldenChest
CrystalShard
CasinoChip
DiamondGem

⸻

17. Material Naming

Example:

MAT_Gold_Polished
MAT_Glass_Clear
MAT_Crystal_Emerald
MAT_Metal_Black

⸻

18. Three.js Integration

Assets should be loaded through a centralized system.

Example:

AssetManager
├── ModelLoader
├── TextureLoader
├── EnvironmentLoader
└── Cache

⸻

19. Loading Optimization

Use:

* preload important assets
* lazy load secondary assets
* cache reusable resources

⸻

20. Asset Review Checklist

Before importing:

✓ Correct scale

✓ Optimized geometry

✓ Correct materials

✓ Compressed textures

✓ Clean hierarchy

✓ No unused data

After importing:

✓ Correct lighting response

✓ Correct performance

✓ Correct animation

✓ Correct interaction

⸻

Final Rule

A great Three.js scene is built twice.

First in the asset pipeline.

Second inside the application.

Poor assets cannot be fixed by code.
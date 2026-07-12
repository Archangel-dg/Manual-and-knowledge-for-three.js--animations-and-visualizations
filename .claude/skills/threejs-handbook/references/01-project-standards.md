01_PROJECT_STANDARDS.md

Three.js Project Standards

Purpose

This document defines the mandatory architecture and development standards for all Three.js projects.

The goal is to create scalable, maintainable and production-ready real-time 3D applications.

A Three.js project should not become a collection of scripts.

It should become a structured rendering system.

⸻

1. Project Architecture

Every Three.js project should separate responsibilities.

The application should be divided into:

src/
├── app/
│   ├── Application.ts
│   ├── Configuration.ts
│   └── Constants.ts
├── scene/
│   ├── SceneManager.ts
│   ├── SceneSetup.ts
│   └── Environment.ts
├── camera/
│   ├── CameraController.ts
│   └── CameraAnimations.ts
├── renderer/
│   ├── Renderer.ts
│   ├── PostProcessing.ts
│   └── Effects.ts
├── objects/
│   ├── Components/
│   ├── Models/
│   └── InteractiveObjects/
├── materials/
│   ├── MaterialLibrary.ts
│   └── CustomMaterials/
├── animation/
│   ├── AnimationManager.ts
│   ├── Timeline.ts
│   └── Controllers/
├── physics/
│   ├── PhysicsWorld.ts
│   └── Colliders/
├── assets/
│   ├── Models/
│   ├── Textures/
│   ├── HDRI/
│   └── Audio/
├── shaders/
│   ├── Vertex/
│   └── Fragment/
├── utils/
│   ├── Math/
│   ├── Helpers/
│   └── Performance/
└── main.ts

⸻

2. Component Philosophy

Every visual element should be treated as an independent system.

Examples:

A treasure chest is not:

“one mesh”

It is:

TreasureChest
├── Model
├── Materials
├── Animation
├── Interaction
├── Audio
├── Particle Effects
└── State

This allows expansion without rewriting existing code.

⸻

3. Naming Standards

Use clear descriptive names.

Bad:

obj1
mesh2
thing
temp
test

Good:

GoldenTreasureChest
MainCharacterCamera
CrystalMaterial
ExplosionParticleSystem

Names should explain purpose.

⸻

4. Scene Management

Never create everything inside one file.

Avoid:

main.ts
5000 lines

A scene should be composed.

Example:

CasinoScene
├── Environment
├── Lighting
├── Camera
├── GameObjects
├── UI
├── Effects
└── Audio

Each system controls itself.

⸻

5. Rendering Standards

Every project should define:

* Renderer settings
* Color management
* Tone mapping
* Shadow settings
* Pixel ratio handling
* Performance mode

Example principles:

Always enable correct color management.

Always handle device pixel ratio.

Never render unnecessary resolution.

⸻

6. Camera Standards

Camera is part of the experience.

Never use random camera positions.

Every camera needs:

* purpose
* composition
* movement logic
* transition behavior

Required camera systems:

* idle camera movement
* cinematic transitions
* user interaction control
* responsive adaptation

⸻

7. Animation System Standards

Do not animate objects directly everywhere.

Avoid:

object.position.x += 0.1

Create animation systems.

Preferred:

AnimationManager
↓
Object Animation Controller
↓
Timeline / State
↓
Object Transformation

Benefits:

* easier tuning
* reusable motion
* consistent timing
* better debugging

⸻

8. State Management

Every interactive object should have clear states.

Example:

Button
States:
Idle
Hover
Pressed
Disabled
Loading
Success

Animations should react to states.

⸻

9. Asset Management

All assets must follow a defined pipeline.

Preferred formats:

Models:

GLB / GLTF

Compression:

Draco

Textures:

KTX2

Images:

WebP / AVIF

Lighting:

HDRI

⸻

10. Asset Optimization Rules

Before importing:

Check:

* polygon count
* texture resolution
* material count
* animations
* file size

Never import raw production assets directly.

Optimize first.

⸻

11. Loading Strategy

Large scenes require staged loading.

Use:

* loading screens
* asset prioritization
* lazy loading
* progressive rendering

The first visual impression is critical.

⸻

12. Error Handling

Every system needs failure handling.

Examples:

Missing asset:

Fallback material.

Missing texture:

Default texture.

Failed animation:

Safe state.

Lost context:

Renderer recovery.

⸻

13. Configuration Management

Avoid hardcoded values.

Bad:

light.intensity = 3.5

Better:

LightingConfig.heroIntensity

All important values should be configurable.

⸻

14. Development Workflow

Every feature follows:

1. Concept
2. Technical design
3. Performance evaluation
4. Implementation
5. Visual refinement
6. Optimization
7. Testing

⸻

15. Production Review

Before delivery verify:

Architecture

✓ Modular

✓ Maintainable

✓ Documented

Visual

✓ Good composition

✓ Correct lighting

✓ Believable materials

Animation

✓ Smooth

✓ Intentional

✓ Physically believable

Performance

✓ Stable FPS

✓ Optimized assets

✓ Controlled memory

⸻

Final Standard

A professional Three.js project is not measured by how much it renders.

It is measured by how well every element works together.
14_THREEJS_CODE_PATTERNS.md

Three.js Code Architecture Patterns

Purpose

This document defines professional coding patterns for Three.js applications.

The goal is to create systems that are:

* scalable
* maintainable
* reusable
* performant
* easy to debug

Three.js projects should be designed as systems, not collections of scripts.

⸻

1. Architecture Philosophy

Avoid building everything inside one scene file.

Bad:

main.js
├── createScene()
├── createLights()
├── createObjects()
├── animate()
├── handleInput()
└── playEffects()

This becomes impossible to maintain.

⸻

Professional structure:

Application
↓
Systems
↓
Components
↓
Objects
↓
Effects

⸻

2. Single Responsibility Principle

Every system has one responsibility.

Example:

Bad:

GameManager
controls:
- rendering
- audio
- physics
- UI
- animations

Good:

GameManager
↓
AnimationManager
↓
AudioManager
↓
PhysicsManager
↓
UIManager

⸻

3. Application Controller Pattern

Every large project should have a central controller.

Example:

Application
├── Renderer
├── SceneManager
├── CameraManager
├── AssetManager
├── AnimationManager
├── AudioManager
├── InputManager
└── PerformanceMonitor

⸻

Responsibilities:

Application:

Controls lifecycle.

Managers:

Control systems.

Components:

Control objects.

⸻

4. Scene Manager Pattern

Scenes should not be created randomly.

Use:

SceneManager
├── Load Scene
├── Unload Scene
├── Transition Scene
├── Manage Environment
└── Cleanup Resources

⸻

Benefits:

* multiple scenes
* loading transitions
* memory control

⸻

5. Component Pattern

Objects should be composed of systems.

Example:

InteractiveCrystal
├── Mesh
├── Material
├── Animation
├── Interaction
├── Audio
└── Effects

⸻

Avoid:

One giant object class.

⸻

6. Manager Pattern

Use managers for shared systems.

Examples:

AnimationManager

Controls:

* timelines
* transitions
* sequences

⸻

AssetManager

Controls:

* loading
* caching
* disposal

⸻

AudioManager

Controls:

* sounds
* music
* volume

⸻

7. Event System Pattern

Avoid tightly connected objects.

Bad:

Object A directly controls Object B.

⸻

Better:

Event
↓
Listener
↓
Reaction

⸻

Example:

GAME_WIN
↓
CameraController
↓
Zoom Effect

⸻

Benefits:

* flexibility
* scalability
* easier debugging

⸻

8. State Machine Pattern

Interactive systems should use states.

Example:

SlotMachine
IDLE
↓
READY
↓
SPINNING
↓
STOPPING
↓
RESULT
↓
RESET

⸻

Benefits:

* predictable behavior
* fewer bugs
* easier animation control

⸻

9. Configuration Pattern

Avoid hardcoded values.

Bad:

camera.position.z = 7;

⸻

Better:

CameraConfig.heroDistance

⸻

Create:

Config
├── CameraConfig
├── LightingConfig
├── AnimationConfig
├── PerformanceConfig
└── GameConfig

⸻

10. Animation Controller Pattern

Do not animate directly from random files.

Use:

AnimationController
├── Play()
├── Pause()
├── Stop()
├── Transition()
└── Timeline()

⸻

Benefits:

* reusable animations
* synchronized events
* easier tuning

⸻

11. Resource Cleanup Pattern

Every created resource needs ownership.

Example:

Created:

Geometry

Material

Texture

RenderTarget

Must have:

Dispose()

⸻

Avoid:

Memory leaks.

⸻

12. Object Pool Pattern

Useful for repeated objects.

Examples:

* coins
* bullets
* particles
* cards

Instead of:

Create → Destroy → Create

Use:

Create → Hide → Reuse

⸻

13. Update Loop Pattern

Avoid uncontrolled frame updates.

Bad:

Everything updates every frame.

⸻

Better:

Update Loop
↓
Systems Update
↓
Visible Objects Update
↓
Render

⸻

14. Dependency Management

Systems should not know unnecessary details.

Bad:

Camera knows game logic.

⸻

Good:

Camera receives events.

⸻

15. Error Handling Pattern

Every external system needs fallback behavior.

Examples:

Asset missing:

Use fallback.

Audio unavailable:

Continue silently.

WebGL issue:

Show alternative.

⸻

16. Debug Mode Pattern

Production systems need debugging tools.

Include:

* FPS monitor
* scene inspector
* performance stats
* object visibility tools
* lighting helpers

⸻

17. Naming Standards

Use:

PascalCase:

Classes

Components

camelCase:

Variables

Functions

UPPER_CASE:

Constants

⸻

Examples:

AnimationManager
cameraController
MAX_PARTICLES

⸻

18. File Size Rules

Avoid extremely large files.

Recommended:

Small modules.

Clear responsibilities.

Reusable utilities.

⸻

19. Documentation Rules

Document:

* why something exists
* important decisions
* performance considerations

Avoid documenting obvious code.

⸻

20. Code Review Checklist

Before approving:

✓ Clear architecture

✓ No duplicated logic

✓ No unnecessary complexity

✓ Reusable systems

✓ Performance considered

✓ Easy extension

⸻

Final Rule

Professional Three.js code is not about writing more code.

It is about creating systems that continue working when the project becomes ten times larger.
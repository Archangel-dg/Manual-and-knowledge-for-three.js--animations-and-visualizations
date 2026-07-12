15_REACT_THREE_FIBER_STANDARDS.md

React Three Fiber Production Standards

Purpose

This document defines professional standards for building Three.js applications using React Three Fiber.

The objective is to combine:

* React architecture
* Three.js rendering
* component-based development
* scalable game systems
* high performance

React Three Fiber is not a replacement for Three.js.

It is a React renderer for Three.js.

⸻

1. React Three Fiber Philosophy

Use React for:

* structure
* state
* composition
* lifecycle

Use Three.js for:

* rendering
* graphics
* 3D calculations
* GPU operations

Do not fight the framework.

⸻

2. Component Architecture

Avoid one giant Canvas component.

Bad:

App.jsx
├── Camera
├── Lights
├── Player
├── Environment
├── UI
├── Effects
└── Game Logic

⸻

Professional structure:

src/
├── components/
├── scenes/
├── systems/
├── hooks/
├── materials/
├── shaders/
├── assets/
└── utils/

⸻

3. Canvas Architecture

The Canvas should be the root of the 3D experience.

Example:

Canvas
├── Scene
├── Camera
├── Lighting
├── Objects
├── Effects
└── PostProcessing

⸻

Avoid putting application logic directly inside Canvas.

⸻

4. Component Responsibility

Every 3D component should have a clear purpose.

Example:

Crystal.jsx
Responsibilities:
- create mesh
- apply material
- handle animation

Not:

* manage wallet
* handle database
* control unrelated UI

⸻

5. Hooks Pattern

Create reusable hooks for repeated behavior.

Examples:

useAnimation()
useGameState()
useInteraction()
useSound()
usePerformance()

⸻

Benefits:

* cleaner components
* reusable logic
* easier testing

⸻

6. useFrame Standards

useFrame runs every rendered frame.

Use carefully.

⸻

Good:

useFrame((state, delta)=>{
});

For:

* animation
* movement
* visual updates

⸻

Avoid:

* API calls
* heavy calculations
* React state updates every frame

⸻

7. State Management

Do not store high-frequency values in React state.

Bad:

position update
↓
setState()
↓
React rerender

⸻

Use:

* refs
* external stores
* Three.js objects

⸻

React state:

For:

* menus
* game state
* settings

⸻

Refs:

For:

* animation values
* object references
* continuous movement

⸻

8. Zustand Pattern

For complex applications use a centralized store.

Example:

GameStore
├── playerState
├── walletState
├── gameState
├── settings
└── effects

⸻

Benefits:

* predictable state
* less prop drilling
* scalable game architecture

⸻

9. Drei Usage Standards

Use Drei helpers when they improve reliability.

Common tools:

Environment

OrbitControls

PerspectiveCamera

Text

Float

ContactShadows

Bounds

Instances

⸻

Do not recreate existing solutions unnecessarily.

⸻

10. Asset Loading

Use:

Suspense

useGLTF

preloading

Example flow:

Application Start
↓
Preload Critical Assets
↓
Show Experience
↓
Lazy Load Secondary Assets

⸻

11. Loading Experience

Never show a frozen screen.

Create:

* progress indicator
* loading animation
* transition scene

⸻

Premium experiences hide loading.

⸻

12. R3F Animation Standards

Use:

* react-spring
* GSAP
* drei helpers
* custom animation systems

depending on complexity.

⸻

Simple:

useFrame

Complex:

Timeline system

⸻

13. Event Handling

Use R3F events:

Examples:

onClick
onPointerOver
onPointerOut
onPointerDown

⸻

Always provide feedback.

⸻

14. Mobile Optimization

React Three Fiber applications must adapt.

Consider:

* device pixel ratio
* shadow quality
* effect quality
* object count

⸻

Use:

AdaptiveDpr

PerformanceMonitor

conditional effects

⸻

15. Responsive Canvas

The Canvas should support:

* mobile screens
* desktop
* different aspect ratios

⸻

Avoid:

Fixed dimensions.

⸻

16. Physics Integration

Physics should be isolated.

Structure:

PhysicsSystem
├── Bodies
├── Collisions
├── Forces
└── Events

⸻

Do not mix physics logic with visual components.

⸻

17. Game Architecture Example

Production game:

Game
├── Canvas
├── World
│   ├── Environment
│   ├── Objects
│   └── Effects
├── Systems
│   ├── GameLogic
│   ├── Animation
│   ├── Audio
│   └── Physics
└── UI

⸻

18. Avoid Common R3F Mistakes

Never:

* recreate objects every render
* update React state every frame
* load assets repeatedly
* create unnecessary materials
* put all logic in components

⸻

19. Debugging Checklist

Check:

✓ React renders correctly

✓ Three.js objects cleaned up

✓ No unnecessary rerenders

✓ Stable FPS

✓ Assets cached

✓ Mobile tested

⸻

20. Final R3F Rule

React should control the experience.

Three.js should control the world.

The best applications allow both systems to do what they are designed for.
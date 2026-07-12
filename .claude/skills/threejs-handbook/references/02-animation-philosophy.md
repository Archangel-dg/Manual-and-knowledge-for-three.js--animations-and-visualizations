02_ANIMATION_PHILOSOPHY.md

Three.js Animation Philosophy

Purpose

Animation is not movement.

Animation is communication.

A high-quality Three.js experience does not simply move objects.

It creates the illusion of:

* weight
* energy
* intention
* emotion
* physical interaction
* hierarchy

Every animation should have a reason to exist.

⸻

1. The Core Animation Rule

Never move an object from point A to point B without considering:

* Why does it move?
* What caused the movement?
* What does the object weigh?
* How much energy is involved?
* How does the movement end?

A professional animation tells a story.

⸻

2. The Principles of Realistic Motion

Every premium animation follows these principles.

⸻

2.1 Anticipation

Objects prepare before performing an action.

Examples:

A button slightly moves backward before pressing.

A character shifts weight before jumping.

A card rotates slightly before flipping.

Without anticipation, movement feels artificial.

⸻

2.2 Acceleration

Real objects do not instantly reach maximum speed.

Avoid:

Start → Maximum Speed

Prefer:

Start
↓
Acceleration
↓
Maximum Velocity
↓
Deceleration
↓
Rest

⸻

2.3 Deceleration

Stopping is as important as starting.

Objects should lose energy naturally.

Bad:

Instant stop.

Good:

Smooth reduction of velocity.

⸻

2.4 Follow Through

Secondary parts continue moving after the main object stops.

Examples:

* cloth
* hair
* particles
* chains
* decorations
* lights

This creates realism.

⸻

2.5 Overlapping Motion

Not everything moves at the same time.

Professional animation uses layers.

Example:

Opening treasure chest:

1. Lock moves
2. Lid begins rotating
3. Light appears
4. Particles release
5. Camera reacts
6. Sound plays

This creates richness.

⸻

3. Animation Timing

Timing creates personality.

Fast movement:

* excitement
* energy
* danger
* action

Slow movement:

* luxury
* importance
* mystery
* elegance

⸻

Recommended timing:

Micro Interaction

100ms - 300ms

Examples:

Buttons

Hover

Small feedback

UI Transition

300ms - 700ms

Examples:

Panels

Cards

Menus

Object Animation

700ms - 2000ms

Examples:

Doors

Machines

Reveals

Cinematic Animation

2000ms+

Examples:

Hero scenes

Product reveals

World transitions

⸻

4. Easing Rules

Never use linear interpolation for visible animations.

Linear movement feels robotic.

Prefer:

* ease-out
* ease-in-out
* cubic curves
* spring motion
* physics-based motion

⸻

5. Motion Hierarchy

Not every animation has equal importance.

Define:

Primary Motion

The main action.

Example:

Slot reels spinning.

Secondary Motion

Supporting actions.

Example:

Lights flashing.

Tertiary Motion

Atmosphere.

Example:

Particles floating.

The viewer should always understand the primary motion first.

⸻

6. Weight Simulation

Objects need believable physical properties.

Heavy objects:

* slower acceleration
* longer stopping distance
* stronger impact
* deeper sound

Light objects:

* faster response
* higher frequency
* smaller movement

⸻

7. Idle Animation

Static objects feel dead.

Premium scenes use subtle life.

Examples:

Crystal:

* slow rotation
* internal glow
* tiny particles

Machine:

* vibration
* lights
* mechanical movement

Environment:

* floating dust
* atmospheric movement

Idle motion should be noticeable subconsciously.

⸻

8. Camera Animation Rules

Camera movement is one of the strongest cinematic tools.

Avoid random camera movement.

Every camera movement needs:

Purpose

Direction

Speed

Focus

⸻

Camera Movements

Push In

Creates importance.

Pull Out

Creates discovery.

Orbit

Shows object quality.

Pan

Reveals environment.

Dolly

Creates cinematic depth.

Shake

Used only for impact.

⸻

9. Interaction Animation

Every user action requires feedback.

Examples:

Button click:

* scale change
* glow
* sound
* particles

Card selection:

* lift
* rotate
* highlight

Win event:

* camera reaction
* lighting change
* particle effect
* sound layer

⸻

10. Game Animation Standards

For casino and game experiences:

Every action needs:

Preparation

Build expectation.

Action

The main event.

Result

Clear outcome.

Reward

Visual confirmation.

⸻

Example:

Slot Spin:

Preparation:

Machine activates.

Action:

Reels accelerate.

Result:

Winning combination appears.

Reward:

Lights, sound, particles, camera response.

⸻

11. Animation Systems

Do not create isolated animations.

Build reusable systems.

Required systems:

* Animation Manager
* Timeline System
* State Based Animation
* Event Driven Animation
* Camera Controller
* Particle Controller

⸻

12. Performance Rules

Animation must not destroy performance.

Avoid:

* unnecessary updates
* thousands of individual objects
* expensive calculations every frame

Prefer:

* GPU animations
* instancing
* shared timelines
* optimized update loops

⸻

13. Animation Quality Checklist

Before approving an animation:

✓ Does it have purpose?

✓ Does it feel physical?

✓ Does it use correct timing?

✓ Does it avoid linear movement?

✓ Does it communicate hierarchy?

✓ Does it have appropriate feedback?

✓ Does it maintain performance?

⸻

Final Rule

The difference between a basic Three.js project and a premium experience is not the amount of code.

It is the quality of movement.

Animation creates perception.

Perception creates quality.
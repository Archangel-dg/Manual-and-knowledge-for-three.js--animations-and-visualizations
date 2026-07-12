10_GAME_ANIMATION_SYSTEM.md

Three.js Game Animation System

Purpose

This document defines the standards for creating premium game animations in Three.js.

The objective is to create experiences that feel:

* responsive
* exciting
* satisfying
* understandable
* memorable

A game is not only mechanics.

A game is:

Input + Animation + Audio + Feedback + Emotion.

⸻

1. Game Feel Philosophy

Every player action should create a response.

The player should always understand:

* What happened?
* Why did it happen?
* What was the result?
* What should happen next?

⸻

2. The Five-Phase Event Model

Every important game event follows:

1. Preparation
↓
2. Build-up
↓
3. Main Action
↓
4. Result
↓
5. Reward

⸻

Example:

Player starts a slot spin.

Preparation:

Button animation.

Machine activation.

Lights start.

Build-up:

Reels accelerate.

Sound increases.

Main Action:

Spin animation.

Result:

Winning combination.

Reward:

Particles.

Camera effect.

Celebration.

⸻

3. Input Feedback

The first 100 milliseconds matter.

A user action must immediately create feedback.

Examples:

Button:

* compression
* sound
* glow

Card:

* movement
* highlight

Dice:

* shake
* anticipation

⸻

4. Slot Machine Animation Standards

A slot machine should not feel like rotating images.

It should feel mechanical.

⸻

Spin Sequence

Phase 1 — Activation

Duration:

200-500ms

Elements:

* button response
* lights activate
* machine wakes up

⸻

Phase 2 — Acceleration

Duration:

300-800ms

Elements:

* reels increase speed
* sound builds
* motion increases

⸻

Phase 3 — Spin

Duration:

variable

Elements:

* smooth rotation
* realistic inertia
* depth movement

⸻

Phase 4 — Deceleration

Important phase.

Reels should:

* lose speed
* create anticipation
* stop individually

⸻

Phase 5 — Result

Elements:

* symbol highlight
* particles
* camera reaction
* audio reward

⸻

5. Reel Animation Rules

Avoid:

Instant start.

Instant stop.

Linear movement.

⸻

Use:

* acceleration curves
* inertia
* overshoot
* mechanical timing

⸻

6. Winning Animation System

A win should escalate.

Bad:

Text appears.

Good:

Sequence:

1. Symbol reacts
2. Light changes
3. Camera focuses
4. Effects appear
5. Reward is displayed

⸻

7. Jackpot Event Standards

Jackpots require special treatment.

A jackpot is a rare emotional event.

Sequence:

Suspense

Slow down.

Reduce distractions.

⸻

Reveal

Focus camera.

Increase lighting.

⸻

Celebration

Particles.

Sound.

Color change.

Environmental reaction.

⸻

8. Dice Animation Standards

Dice require believable physics.

Important:

* weight
* bouncing
* friction
* rotation
* collision response

⸻

Avoid:

Random rotation without physics.

⸻

Dice sequence:

1. Throw preparation
2. Launch
3. Rotation
4. Collision
5. Bounce
6. Rest
7. Result highlight

⸻

9. Card Game Animation Standards

Cards communicate information.

Required:

* realistic movement
* controlled rotation
* readable timing

⸻

Card actions:

Draw:

Move from deck.

Flip:

Reveal information.

Select:

Lift and highlight.

Win:

Glow and emphasis.

⸻

10. Coin Animation Standards

Coins are reward objects.

Characteristics:

* metallic reflections
* physical weight
* satisfying movement

Use:

* spinning
* bouncing
* collisions
* sound layers

⸻

11. Multiplier Effects

Multipliers should create excitement.

Examples:

x2

x5

x10

⸻

Visual escalation:

Small:

Glow.

Medium:

Particles.

Large:

Camera effect.

Extreme:

Environment reaction.

⸻

12. Camera Reactions

Camera is part of gameplay.

Examples:

Small win:

Small zoom.

Big win:

Camera movement.

Jackpot:

Cinematic transition.

⸻

Never shake camera randomly.

⸻

13. Particle Reward System

Particles communicate value.

Examples:

Coins:

Gold particles.

Magic:

Energy particles.

Rare item:

Crystal particles.

⸻

Particle systems require:

* controlled amount
* meaningful timing
* optimized rendering

⸻

14. Sound Synchronization

Animation and sound must be synchronized.

Examples:

Button:

Visual press + click.

Coin:

Impact + bounce.

Win:

Effect + sound.

⸻

Synchronization creates realism.

⸻

15. Tension Management

Great games control emotional rhythm.

Use:

Fast:

Action.

Slow:

Expectation.

Pause:

Importance.

Explosion:

Reward.

⸻

16. State-Based Animation

Games should use states.

Example:

GameState
Idle
↓
Preparing
↓
Playing
↓
Resolving
↓
Reward
↓
Reset

⸻

17. Animation Architecture

Recommended:

GameAnimationSystem
├── TimelineManager
├── CameraController
├── ParticleManager
├── AudioSync
├── StateMachine
└── EffectsLibrary

⸻

18. Performance Rules

Game effects must remain responsive.

Avoid:

* too many particles
* expensive post-processing
* unnecessary animations

Prioritize:

Gameplay response over visual complexity.

⸻

19. Game Animation Checklist

Before release:

✓ Immediate feedback

✓ Clear sequence

✓ Good timing

✓ Physical feeling

✓ Reward satisfaction

✓ Performance stable

✓ Mobile compatible

⸻

Final Rule

Players do not remember code.

They remember how the game felt.
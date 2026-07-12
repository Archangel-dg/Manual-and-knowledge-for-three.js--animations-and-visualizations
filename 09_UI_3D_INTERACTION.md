09_UI_3D_INTERACTION.md

Three.js 3D UI & Interaction System

Purpose

This document defines standards for creating interactive 3D interfaces.

The goal is to combine:

* traditional UI principles
* spatial design
* animation
* user feedback
* real-time interaction

A premium interface should feel alive.

The user should understand:

* what can be interacted with
* what happened after interaction
* what is important
* what action is available

⸻

1. Interaction Philosophy

Interaction is a conversation.

Every user action requires:

Input

↓

System Response

↓

Visual Feedback

↓

Audio Feedback

↓

State Change

⸻

Never allow silent interactions.

⸻

2. The Feedback Principle

Every interaction should communicate.

Examples:

Button press:

* scale change
* glow
* sound
* animation

Card selection:

* elevation
* rotation
* highlight

Successful action:

* particles
* color change
* confirmation animation

⸻

3. Interactive Object States

Every interactive object must have defined states.

Example:

Button
Idle
↓
Hover
↓
Pressed
↓
Loading
↓
Success
↓
Disabled

Each state requires:

* visual change
* timing
* transition

⸻

4. Hover Design

Hover is not just color change.

Premium hover states use:

* position change
* scale
* lighting
* shadow
* glow
* material response

Example:

Card hover:

Before:

Flat card.

After:

* slight elevation
* small rotation
* brighter edge
* stronger shadow

⸻

5. Click / Press Animation

A click should feel physical.

Recommended:

Scale:

0.95 - 0.98

Duration:

100-200ms

Include:

* easing
* sound
* visual confirmation

⸻

6. 3D Button Standards

A premium 3D button consists of:

Geometry

Physical form.

Material

Surface identity.

Lighting

Depth and focus.

Animation

Response.

Audio

Confirmation.

⸻

7. Spatial UI

3D interfaces should respect space.

Consider:

* distance
* depth
* scale
* perspective
* readability

⸻

Avoid:

* floating text everywhere
* unnecessary panels
* clutter

⸻

8. Camera-Aware UI

UI should adapt to the camera.

Examples:

A menu panel:

* follows camera smoothly

A game object:

* remains readable

A floating label:

* faces user

⸻

9. Card Interaction Standards

Cards require special treatment.

Common states:

Hidden

Back side visible.

Preview

Slight lift.

Selected

Scale increase.

Revealed

Rotation animation.

Reward

Glow and effects.

⸻

10. Card Flip Animation

A premium card flip requires:

Sequence:

1. anticipation
2. rotation start
3. midpoint transition
4. reveal
5. settle movement
6. feedback effect

⸻

Avoid:

Instant rotation.

Linear movement.

⸻

11. Casino Interface Standards

Casino interfaces require:

* immediate readability
* clear actions
* strong feedback
* controlled excitement

Important elements:

Bet amount

Balance

Action button

Result

Rewards

⸻

12. Game Feel Principles

Every game action should contain:

Input

Player action.

Build-up

Expectation.

Event

Main action.

Result

Outcome.

Reward

Emotional confirmation.

⸻

13. Touch Interaction

Mobile interaction requires:

* larger targets
* clear feedback
* no precision requirement

Minimum principles:

Buttons must be easy to hit.

Important actions must be reachable.

Animations must remain smooth.

⸻

14. Gesture Interaction

Possible gestures:

Tap

Swipe

Drag

Hold

Rotate

Zoom

⸻

Every gesture needs:

* visual response
* predictable behavior
* cancellation possibility

⸻

15. Cursor Interaction

Desktop experiences can use cursor feedback.

Examples:

Object hover:

* cursor change
* object response

Interactive area:

* highlight

⸻

16. Audio Feedback

Sound reinforces interaction.

Examples:

Button:

short click

Card:

paper movement

Coin:

metal impact

Win:

reward sound

⸻

Audio should support.

Never overwhelm.

⸻

17. Animation Timing Standards

Micro interactions:

100-300ms

UI transitions:

300-700ms

Major events:

700-2000ms

Cinematic:

2000ms+

⸻

18. UI Performance Rules

Avoid:

* hundreds of animated DOM elements inside 3D scenes
* unnecessary render updates
* expensive effects everywhere

Prefer:

* reusable components
* event-driven updates
* optimized animations

⸻

19. Accessibility

3D does not remove accessibility requirements.

Consider:

* readable contrast
* understandable states
* alternative information
* clear hierarchy

⸻

20. UI Review Checklist

Before approving:

✓ Clear interaction

✓ Good feedback

✓ Smooth animation

✓ Correct hierarchy

✓ Mobile friendly

✓ Performance acceptable

✓ Consistent style

⸻

Final Rule

A great interface does not tell the user what happened.

It makes the user feel what happened.
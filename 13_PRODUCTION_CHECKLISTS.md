13_PRODUCTION_CHECKLISTS.md

Three.js Production Checklists

Purpose

This document defines the mandatory review process before any Three.js project, scene, animation or feature is considered complete.

A feature is not finished when it works.

A feature is finished when it meets:

* technical standards
* visual standards
* performance standards
* user experience standards

⸻

1. Pre-Development Checklist

Before writing code:

Concept

✓ Is the purpose clearly defined?

✓ Is the user experience understood?

✓ Is the visual goal described?

✓ Are references available?

⸻

Technical Planning

✓ Is the architecture defined?

✓ Are reusable systems identified?

✓ Are performance requirements considered?

✓ Are assets planned?

⸻

Visual Planning

✓ Camera style defined?

✓ Lighting style defined?

✓ Material style defined?

✓ Animation style defined?

⸻

2. Scene Quality Checklist

Before approving any scene:

⸻

Composition

✓ Clear focal point

✓ Good balance

✓ Strong depth perception

✓ Correct object placement

✓ No unnecessary clutter

⸻

Camera

✓ Camera position intentional

✓ Movement feels natural

✓ Smooth transitions

✓ Correct perspective

✓ Comfortable viewing experience

⸻

Environment

✓ Background supports subject

✓ Atmosphere improves scene

✓ Scale feels believable

✓ Depth layers exist

⸻

3. Material Checklist

Every important object:

✓ Correct material type

✓ Realistic roughness

✓ Correct reflections

✓ Appropriate texture detail

✓ Physically believable response

⸻

Check:

Metal

✓ Reflective

✓ Correct roughness

✓ Environment visible

Glass

✓ Transmission

✓ Refraction

✓ Thickness perception

Crystal

✓ Edge highlights

✓ Internal depth

✓ Controlled glow

⸻

4. Lighting Checklist

Verify:

✓ Key light exists

✓ Fill light supports readability

✓ Rim light creates separation

✓ Environment lighting works

✓ Shadows are believable

✓ Contrast is intentional

⸻

Avoid:

✗ Flat lighting

✗ Random lights

✗ Overexposure

✗ Everything equally bright

⸻

5. Animation Checklist

Every animation:

✓ Has a purpose

✓ Uses proper timing

✓ Has acceleration

✓ Has deceleration

✓ Feels physical

✓ Provides feedback

⸻

Check:

Anticipation

✓ Exists where necessary

Follow Through

✓ Secondary motion exists

Weight

✓ Objects feel believable

⸻

6. Interaction Checklist

Every interaction:

✓ Has visual feedback

✓ Has state management

✓ Has clear response

✓ Works on touch devices

✓ Has appropriate timing

⸻

States:

Idle

Hover

Active

Success

Error

Disabled

⸻

7. Performance Checklist

Before release:

Rendering

✓ Stable FPS

✓ Controlled draw calls

✓ Optimized shadows

✓ Optimized post-processing

Assets

✓ Compressed textures

✓ Optimized models

✓ No unused resources

Code

✓ No unnecessary updates

✓ No memory leaks

✓ Efficient loops

⸻

8. Mobile Checklist

Every project must consider:

✓ Touch interaction

✓ Screen size

✓ GPU limitations

✓ Battery usage

✓ Loading speed

⸻

Mobile adjustments:

Reduce:

* particles
* shadows
* effects
* texture resolution

when necessary.

⸻

9. Code Quality Checklist

Verify:

✓ Modular architecture

✓ Clear naming

✓ Reusable systems

✓ No duplicated logic

✓ Documented important systems

⸻

Avoid:

Large files.

Hidden dependencies.

Magic numbers.

Unclear state changes.

⸻

10. Asset Checklist

Before importing assets:

✓ Correct format

✓ Correct scale

✓ Optimized geometry

✓ Optimized textures

✓ Correct materials

✓ Clean hierarchy

⸻

11. Audio Checklist

Verify:

✓ Sound matches action

✓ Timing is synchronized

✓ Volume is balanced

✓ No repetitive annoyance

✓ Mobile behavior works

⸻

12. Game Experience Checklist

For interactive games:

✓ Input feels responsive

✓ Results are clear

✓ Rewards feel satisfying

✓ Progression is understandable

✓ Important events feel special

⸻

13. Final AAA Review

Ask:

Visual

Does this look premium?

Motion

Does this feel alive?

Interaction

Does this feel responsive?

Performance

Does this run smoothly?

Architecture

Can this grow?

⸻

14. Release Checklist

Before publishing:

✓ Production build tested

✓ Multiple devices tested

✓ Performance measured

✓ Assets verified

✓ Errors removed

✓ Loading optimized

✓ User experience reviewed

⸻

Final Rule

Never ship the first working version.

The first version proves functionality.

The final version creates quality.
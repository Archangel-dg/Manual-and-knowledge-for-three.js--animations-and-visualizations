00_CORE_PRINCIPLES.md

Three.js Production Handbook

Core Principles

These principles are mandatory for every Three.js project in this repository.

They define the quality standard expected from every scene, animation, interaction and rendering pipeline.

If a decision conflicts with one of these principles, reconsider the implementation.

⸻

Principle 1 — Purpose Before Technology

Technology exists to support the experience.

Never add visual effects simply because they are possible.

Every object, animation, particle system, shader, post-processing effect and interaction must have a clear purpose.

Ask before implementing:

* What does this improve?
* Does this help the user?
* Does this strengthen the visual story?
* Is it worth the performance cost?

If the answer is unclear, remove it.

⸻

Principle 2 — Simplicity Wins

Simple systems outperform complicated systems.

Prefer:

* fewer objects
* reusable components
* modular architecture
* predictable scene graphs
* clean update loops

Avoid unnecessary abstraction.

Avoid over-engineering.

Complex visuals should emerge from well-designed systems—not from complicated code.

⸻

Principle 3 — Performance Is a Feature

Performance is part of the user experience.

A visually impressive scene that drops frames is considered unfinished.

Every implementation must consider:

* GPU workload
* CPU workload
* memory usage
* loading speed
* bandwidth
* battery usage
* mobile hardware

Performance optimization begins before writing code.

Never postpone optimization until the end of the project.

⸻

Principle 4 — Motion Has Meaning

Animation is communication.

Motion should explain:

* interaction
* hierarchy
* focus
* feedback
* transitions
* emotional tone

Avoid decorative motion.

Every animation should improve understanding.

⸻

Principle 5 — Realistic Timing

Nothing starts instantly.

Nothing stops instantly.

Everything accelerates.

Everything decelerates.

Objects possess apparent weight.

Heavy objects move differently than light objects.

Large objects require more time to change direction.

Timing creates realism.

⸻

Principle 6 — Composition Before Detail

A simple scene with excellent composition is superior to a complex scene with poor composition.

Prioritize:

* visual hierarchy
* silhouette
* spacing
* balance
* rhythm
* framing
* depth

Never attempt to solve composition problems with additional assets.

⸻

Principle 7 — Lighting Creates Emotion

Lighting is the primary storytelling tool.

Every light source must have a purpose.

Light should:

* guide attention
* create depth
* define materials
* support composition
* establish mood

Avoid flat lighting.

Avoid random lighting.

Avoid excessive brightness.

Darkness is equally important.

⸻

Principle 8 — Materials Should Feel Physical

Materials define credibility.

Always prefer physically based rendering.

Every material should communicate:

* age
* wear
* surface quality
* roughness
* reflectivity
* density

Avoid unrealistic parameter combinations.

⸻

Principle 9 — Consistency Builds Quality

Every screen should feel like it belongs to the same product.

Maintain consistency in:

* lighting
* shadows
* colors
* typography
* spacing
* animation timing
* interaction patterns
* materials
* camera language

Consistency is more valuable than novelty.

⸻

Principle 10 — Guide the User’s Attention

Users should never wonder where to look.

Use:

* lighting
* movement
* contrast
* color
* scale
* depth
* focus
* timing

to intentionally direct attention.

Every frame should have a clear focal point.

⸻

Principle 11 — Build Modular Systems

Everything should be reusable.

Design systems instead of isolated solutions.

Prefer:

* reusable animation controllers
* shared material libraries
* reusable camera rigs
* modular scene components
* centralized configuration

Never duplicate logic.

⸻

Principle 12 — Mobile First

Desktop performance is not the target.

Mobile performance defines success.

Every feature must justify:

* GPU cost
* texture memory
* shader complexity
* post-processing cost
* particle count
* shadow quality

If it performs well on mobile, it will usually perform well everywhere.

⸻

Principle 13 — Readability Is Part of Performance

Readable projects are easier to optimize.

Readable projects are easier to extend.

Readable projects contain fewer bugs.

Prioritize:

* descriptive names
* small components
* predictable folder structures
* documented utilities
* consistent formatting

Code quality directly influences production speed.

⸻

Principle 14 — Quality Over Quantity

One outstanding animation is better than twenty average animations.

One believable material is better than ten unrealistic materials.

One polished interaction is better than many unfinished interactions.

Never maximize feature count.

Maximize perceived quality.

⸻

Principle 15 — Continuous Evaluation

Every implementation should be reviewed before completion.

Review:

* visual quality
* animation quality
* composition
* lighting
* material realism
* responsiveness
* performance
* maintainability
* accessibility

Nothing is finished after implementation.

Everything is refined until it reaches production quality.

⸻

Final Rule

The objective is not to build a Three.js application.

The objective is to create an experience that feels intentional, premium, performant and memorable.

Every technical decision should support that objective.
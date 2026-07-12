04_MATERIAL_SYSTEM.md

Three.js Material System

Purpose

This document defines the standards for creating realistic, premium and physically believable materials in Three.js.

Materials are not colors.

Materials communicate:

* physical properties
* age
* quality
* environment
* emotional perception

A viewer should understand what an object is made of without explanation.

⸻

1. Physically Based Rendering Philosophy

All production materials should follow PBR principles.

The material should behave like the real-world equivalent.

Important properties:

* Base Color
* Metalness
* Roughness
* Normal Detail
* Ambient Occlusion
* Transmission
* Clearcoat
* Thickness
* Environment Reflection

⸻

2. Material Quality Hierarchy

A material is created through multiple layers.

Layer 1 — Base Identity

What is the object made of?

Examples:

Gold

Glass

Wood

Stone

Fabric

Plastic

Crystal

⸻

Layer 2 — Surface Response

How does light interact?

Examples:

Smooth

Rough

Polished

Damaged

Wet

Transparent

⸻

Layer 3 — Imperfections

Real objects are never perfect.

Add:

* scratches
* micro roughness
* fingerprints
* dust
* small variations

Imperfections create realism.

⸻

3. Metal Standards

Metal is defined by reflection.

Examples:

Gold

Silver

Copper

Steel

⸻

Metal Rules

Metalness:

Usually 1.0

Base color:

Defines metal type.

Roughness:

Defines polish level.

⸻

Luxury Gold Example

Characteristics:

* high reflection
* warm highlights
* medium-low roughness
* realistic environment reflection

Avoid:

Pure yellow color.

Plastic-looking gold.

⸻

4. Glass Standards

Glass requires:

* transparency
* refraction
* environment reflection
* thickness simulation

Important properties:

Transmission

IOR

Thickness

Roughness

⸻

Glass Types

Clear glass:

High transmission.

Frosted glass:

Higher roughness.

Colored glass:

Transmission with tinted absorption.

⸻

Avoid:

Simple opacity transparency.

It usually looks unrealistic.

⸻

5. Crystal Standards

Crystal materials require:

* internal depth
* reflections
* edge highlights
* controlled transparency

Recommended techniques:

* Fresnel effects
* transmission
* environment maps
* subtle emissive glow

⸻

6. Gemstone Standards

Gemstones need:

* sharp reflections
* strong highlights
* internal color variation
* high-quality lighting

Examples:

Diamond

Ruby

Emerald

Sapphire

⸻

Diamond characteristics:

Very high reflection.

Strong edge highlights.

High clarity.

Requires good environment lighting.

⸻

7. Plastic Standards

Plastic is often incorrectly created.

Plastic is not simply shiny.

Characteristics:

* dielectric material
* moderate roughness
* soft highlights
* subtle surface variation

Examples:

Buttons

Controllers

Modern devices

⸻

8. Wood Standards

Wood requires:

* directional grain
* roughness variation
* natural color variation

Avoid:

Flat brown material.

⸻

9. Stone Standards

Stone requires:

* irregular surface
* roughness
* color variation
* normal detail

Examples:

Marble

Granite

Rock

⸻

10. Fabric Standards

Fabric requires:

* soft light response
* micro detail
* high roughness

Examples:

Cloth

Leather

Velvet

⸻

11. Wet Materials

Water and wet surfaces require:

* stronger reflections
* lower roughness
* environment response

Examples:

Rain

Ocean

Wet stone

⸻

12. Emissive Materials

Emission should create light perception.

Do not simply increase brightness.

Use:

* bloom
* surrounding light
* contrast
* color control

Examples:

Neon

Magic effects

Energy objects

⸻

13. Shader Enhancement

Default materials are enough for many objects.

Custom shaders are justified for:

* energy effects
* holograms
* dissolving
* procedural surfaces
* advanced particles

Never create shaders only to appear advanced.

⸻

14. Environment Reflections

Reflections define realism.

Production scenes should use:

* HDR environment maps
* realistic lighting environments
* reflection probes when required

A reflective object without a good environment looks fake.

⸻

15. Material Performance Rules

Materials have performance costs.

Avoid:

* unnecessary shader complexity
* too many unique materials
* huge textures
* excessive transparency

Prefer:

* material reuse
* texture compression
* optimized shaders
* shared environments

⸻

16. Material Library Standard

Create reusable material presets.

Example:

MaterialLibrary
├── LuxuryGold
├── PolishedMetal
├── Crystal
├── Glass
├── Neon
├── Wood
├── Stone
├── Fabric
└── Plastic

Every project should build upon this library.

⸻

17. Material Review Checklist

Before approving a material:

✓ Does it behave physically?

✓ Does lighting react correctly?

✓ Does roughness feel realistic?

✓ Are reflections believable?

✓ Are imperfections present?

✓ Is performance acceptable?

⸻

Final Rule

A great model with poor materials looks cheap.

A simple model with excellent materials can look premium.

Materials define perception.
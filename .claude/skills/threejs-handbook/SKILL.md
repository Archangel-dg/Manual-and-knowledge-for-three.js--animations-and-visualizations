---
name: threejs-handbook
description: >-
  Production handbook and mandatory operating standard for ALL Three.js / WebGL / GPU
  real-time 3D work. Use this WHENEVER a task involves three.js, react-three-fiber (R3F),
  @react-three/drei, WebGL/WebGPU, GLSL/TSL shaders, GLTF/GLB models, HDRI/PBR materials,
  lighting, post-processing, InstancedMesh, 3D animations, camera rigs, particles,
  physics (Rapier / cannon-es), scene composition, or 3D visualizations — in any project.
  Triggers include: "three.js", "threejs", "react three fiber", "r3f", "drei", "webgl",
  "webgpu", "glsl shader", "gltf", "glb", "hdri", "pbr material", "orbitcontrols",
  "instancedmesh", "postprocessing / bloom", "3D scene", "3D animation", "3D model viewer".
  Apply it before writing or reviewing any such code.
---

# Three.js Production Handbook

You are acting as a multidisciplinary real-time 3D production team — **Technical Director,
Graphics Engineer, Gameplay Engineer, Technical Artist, Lighting Artist, UI/UX Designer,
Performance Engineer, and QA Reviewer** — not a code generator.

The objective is never "generate Three.js code." The objective is: **design and implement the
highest-quality real-time experience possible** — visually exceptional, technically robust,
performant on mobile, and maintainable.

This SKILL.md is the always-on operating standard. Load the matching `references/` chapter
whenever you need depth for a specific domain (routing table at the bottom).

---

## The Prime Directive

**Never immediately start writing code.** First understand → design → evaluate → then implement.

Before any Three.js task, silently answer:
1. **Experience type?** (product showcase, game/casino, hero animation, landing page, sci-fi UI, Web3 viewer, installation…)
2. **Target device?** (mobile-first is the default assumption unless told otherwise)
3. **Performance budget?** (Desktop 60–120 FPS, Mobile stable 60 FPS)
4. **What should the user *feel*?** (luxury, excitement, trust, curiosity, reward, wonder)

If these are unclear and the answer changes the implementation, ask. Otherwise pick the sensible
premium default, state the assumption, and proceed.

---

## Non-Negotiable Rules

These override convenience. If a decision conflicts with one, reconsider the implementation.

### Animation
- **Everything moves. Nothing teleports. Everything accelerates and decelerates.**
- **Never use linear easing** for visible motion — it feels robotic. Prefer ease-out / ease-in-out / cubic / spring / physics-based.
- Motion must communicate **weight** — heavy objects accelerate slowly and stop over a longer distance.
- Use **anticipation**, **follow-through**, and **overlapping motion**. Layer motion (primary → secondary → tertiary); the viewer must read the primary action first.
- Timing bands: micro-interaction **100–300ms**, UI transition **300–700ms**, object animation **700–2000ms**, cinematic **2000ms+**.
- Static objects feel dead — add **subtle idle life** (slow rotation, breathing light, drifting particles).
- Never animate transforms ad-hoc from scattered files (`object.position.x += 0.1`). Route through an animation system/controller.

### Materials (always PBR)
- Prefer physically based rendering. Materials communicate age, wear, roughness, reflectivity, density.
- **Avoid pure black, pure white, pure saturated colors, and perfect mirror surfaces.**
- Add controlled **imperfections** (micro-roughness variation, scratches, subtle normal detail) — realism comes from controlled randomness.
- **Glass = transmission + IOR + thickness + roughness**, never simple opacity.
- **Metal = metalness ~1.0**, type defined by base color, polish by roughness, and it *must* reflect an environment (HDRI). A reflective object without a good environment looks fake.
- Reuse materials via a **MaterialLibrary**; don't create many unique materials.

### Lighting (a design, not scattered lights)
- **Never place a light without a purpose.** Every light reveals, shapes, separates, or sets mood.
- Start from the three-light foundation: **Key** (shape/direction), **Fill** (controls contrast), **Rim** (separates from background).
- Add **environment/HDRI** lighting for realistic reflections.
- Prefer **dark base + controlled contrast** over flat even brightness. Never overexpose. Darkness is a tool.
- Warm vs cool temperature carries emotion; mixing temperatures creates depth.

### Performance (a feature, decided during design)
- A beautiful scene that drops frames is **unfinished**. **Mobile performance defines success.**
- **Minimize draw calls** — reuse geometry, reuse materials, and use **InstancedMesh** for repeated objects (coins, particles, cards, trees).
- Match geometry/texture detail to visual importance; use **LOD** for distant/complex objects.
- Textures: prefer **KTX2/Basis** compression and **WebP/AVIF**; geometry: **Draco**. Right-size resolution (hero 2048, important 1024, background 512, small 256). Bigger is not better.
- Transparency, shadows, volumetrics, and post-processing are **expensive** — use only where justified; provide mobile fallbacks and an **adaptive quality** path.
- **Dispose** every geometry, material, texture, and render target you create. Pool repeated objects (create → hide → reuse).
- Don't update everything every frame — update only active/visible systems. **Profile before optimizing; optimize before shipping.**

### Composition & Visual Quality
- Every frame needs a **clear focal point** and readable hierarchy — never let all elements compete equally.
- Build **depth layers** (foreground / midground / background). A flat scene feels artificial.
- **Composition before detail** — a simple, well-composed scene beats a detailed, poorly-composed one. Never fix composition by adding assets.

### Code & Architecture
- Design **systems, not scripts.** Application → Managers → Components → Objects → Effects. Never a 5000-line `main`.
- **Single responsibility**, small modules, descriptive names (`GoldenTreasureChest`, not `obj1`).
- **No magic numbers** — centralize in Config objects (CameraConfig, LightingConfig, AnimationConfig…).
- Prefer state machines, event-driven communication, managers, object pools. Avoid monolithic files, duplicated logic, hidden dependencies.
- Naming: `PascalCase` classes/components, `camelCase` vars/functions, `UPPER_CASE` constants.

### React Three Fiber (when used)
- React controls structure/state/lifecycle; Three.js controls rendering/graphics/GPU. Don't fight the framework.
- **Never call `setState` every frame.** High-frequency values live in **refs / external stores (Zustand) / Three objects**, not React state.
- `useFrame` is for visual updates only — no API calls, heavy math, or React state writes inside it.
- Use **Suspense + useGLTF** and preloading; use **drei** helpers instead of reinventing them; use `AdaptiveDpr` / `PerformanceMonitor` for mobile.
- Never recreate objects/materials every render or load assets repeatedly.

### Interaction & Audio
- **No silent interactions.** Every user action: Input → Response → Visual feedback → (Audio) → State change.
- Every interactive object has explicit states (Idle / Hover / Pressed / Loading / Success / Disabled), each with its own transition.
- Click feel: scale ~0.95–0.98 over 100–200ms with easing. Mobile: large touch targets, smooth animation.
- Audio must be **synchronized with the physical event** (not after it), match the material, and support — never overwhelm.

### Shaders & Post-Processing (justify every one)
- Write a custom shader only when a standard material can't achieve the result efficiently. Never "to look advanced."
- Expose tunable **uniforms**; drive motion with `uTime`; keep animation subtle. Optimize texture lookups, math, branching, precision. Must work on mobile.
- Post-processing **refines** a good render — order is geometry → materials → lighting → camera → post. Never use effects to rescue weak fundamentals.
- **Bloom only on emissive/important elements** (not the whole scene). DoF/motion blur only for specific cinematic moments, never permanently on.

---

## Mandatory Workflow

Follow this order for any non-trivial Three.js task:

1. **Requirement analysis** — experience type, device, performance target, desired feeling.
2. **Handbook review** — mentally review relevant chapters (always: Core Principles, Project Standards, Animation, Visual Quality, Performance; plus any domain-specific ones).
3. **Scene planning** — hierarchy, lighting concept, camera behavior, animation timeline, interaction model, performance budget, assets.
4. **Architecture design** — design systems top-down (Application → Managers → Components → Objects), never bottom-up.
5. **Visual direction** — lock color palette, lighting/material/camera/motion language for consistency.
6. **Implementation order**: Scene → Camera → Lighting → Materials → Objects → Interaction → Animation → Audio → Effects → Optimization. **Never begin with effects.**
7. **Performance validation** — draw calls, textures, memory, shaders, FPS, loading, mobile. Continuously, not just at the end.
8. **UX review** — is interaction obvious? does feedback exist? does motion feel natural & purposeful?
9. **Production review** — pass the checklists (`references/13-production-checklists.md`).
10. **Refinement loop** — iterate on visual quality, performance, architecture, animation, accessibility, consistency.

**Decision rule:** when multiple solutions exist, choose the one with the highest maintainability,
performance, visual quality, and reusability — and the lowest unnecessary complexity.

---

## Self-Review Before Presenting Code

Ask, and refine before delivering if any answer is "no":
- Does this follow the handbook?
- Would this scale to 10× the size?
- Would this run smoothly on mobile?
- Is this visually premium and intentional?
- Is there unnecessary complexity?
- Can another developer understand this?

Every delivery is reviewed across: Visual Quality · Animation Quality · Performance ·
Accessibility · Code Quality · Architecture · Maintainability. Only deliver work that satisfies
every category. **Never ship the first working version** — the first version proves functionality;
the final version creates quality.

---

## Reference Routing

Load the relevant chapter for depth (they contain the full standards, examples, and per-domain
review checklists):

| When the task involves… | Read |
|---|---|
| Foundational rules / any Three.js decision | `references/00-core-principles.md` |
| Project structure, folders, scene management, config | `references/01-project-standards.md` |
| Motion, easing, timing, weight, camera moves | `references/02-animation-philosophy.md` |
| Composition, hierarchy, color, FOV, atmosphere | `references/03-visual-quality.md` |
| PBR materials (metal, glass, crystal, wood, fabric…) | `references/04-materials.md` |
| Lighting design, HDRI, shadows, cinematic lighting | `references/05-lighting.md` |
| FPS, draw calls, instancing, LOD, memory, mobile | `references/06-performance.md` |
| GLSL shaders, Fresnel, noise, dissolve, water, fire | `references/07-shaders.md` |
| Modeling, GLTF/GLB export, KTX2, Draco, textures | `references/08-asset-pipeline.md` |
| 3D UI, buttons, hover/click, cards, touch, gestures | `references/09-ui-interaction.md` |
| Game feel, slot/dice/coin animation, jackpots | `references/10-game-animation.md` |
| Sound design, spatial audio, layering, sync | `references/11-audio.md` |
| Tone mapping, bloom, DoF, color grading, AA | `references/12-post-processing.md` |
| Final review before shipping any feature | `references/13-production-checklists.md` |
| Architecture patterns, managers, state machines, pooling | `references/14-code-patterns.md` |
| React Three Fiber, drei, hooks, useFrame, Zustand | `references/15-react-three-fiber.md` |
| Rapier / cannon-es, bodies, colliders, dice/plinko | `references/16-physics.md` |
| Reusable scene templates (reveal, casino, sci-fi…) | `references/17-scene-templates.md` |
| Claude's full step-by-step production workflow | `references/18-workflow.md` |

**Final rule:** A shader/effect/asset is not impressive because it is complex — it is impressive
because it makes the experience feel intentional, premium, performant, and memorable.

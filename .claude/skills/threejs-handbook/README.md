# threejs-handbook — Claude Code Skill

This turns the **Three.js Production Handbook** in this repo into a self-activating
[Claude Code Skill](https://code.claude.com/docs). Once installed, Claude Code automatically
applies these production standards **whenever it works with Three.js / R3F / WebGL / shaders /
3D — in any project**, not just this one.

## What's inside

```
threejs-handbook/
├── SKILL.md              # Always-loaded operating standard (rules + workflow + routing)
└── references/           # Full handbook chapters, loaded on demand for depth
    ├── 00-core-principles.md   … 18-workflow.md
```

`SKILL.md`'s `description` field is what triggers activation — it lists Three.js-related
keywords (three.js, react-three-fiber, drei, webgl, glsl, gltf, hdri, pbr, instancedmesh,
bloom, 3D scene/animation…). When your request matches, the skill loads; Claude then reads the
relevant `references/` chapter when it needs domain detail.

## Install globally (recommended — makes it active in every project)

From the repository root, run the bundled installer:

```bash
./install.sh          # macOS / Linux (Git Bash / WSL on Windows)
```

```powershell
.\install.ps1         # native Windows PowerShell
```

It copies the skill into `~/.claude/skills/` and prints the next steps. Prefer to do it by
hand? Copy it into your personal Claude Code skills directory:

```bash
mkdir -p ~/.claude/skills
cp -R .claude/skills/threejs-handbook ~/.claude/skills/
```

Restart Claude Code (or start a new session). Verify it's registered:

```bash
ls ~/.claude/skills/threejs-handbook
```

To update later, re-run `./install.sh` (or the `cp -R` command) after pulling changes.

## Use it in a single project only

Skills in a project's `.claude/skills/` are available when Claude Code runs in that repo.
Copy the folder into any project's `.claude/skills/` to scope it there:

```bash
cp -R .claude/skills/threejs-handbook /path/to/your/project/.claude/skills/
```

## Invoke it explicitly

Auto-activation aside, you can force it any time:

```
/threejs-handbook
```

## Keeping the handbook and skill in sync

The chapters under `references/` are copies of the numbered `NN_*.md` files at the repo root.
If you edit a chapter at the root, mirror the change into
`.claude/skills/threejs-handbook/references/` (and re-copy to `~/.claude/skills/` if installed
globally).

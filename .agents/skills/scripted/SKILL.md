---
name: scripted
description: >-
  Creates high-retention video tutorial scripts and generates Microsoft Word (.docx)
  documents matching the exact typography (Aptos 14pt), one-action-per-line cadence,
  hook structures, failure bridges, and outro patterns of the SAAD SCRIPTS library.
  Use when the user asks to write, rewrite, or format tutorial scripts or generate .docx files
  for YouTube, Shorts, or tech guides (Android, Samsung, HyperOS, Windows, Mac, Discord, WhatsApp).
---

# Scripted: Tutorial Scriptwriting & Word Document Generator

This skill teaches the agent how to write, format, and compile video tutorial voiceover scripts that match the exact structural DNA and typographical standards of the `SAAD SCRIPTS` library.

---

## 1. Core Principles & Cadence Rules

Every script authored under this skill must adhere to these non-negotiable rules:

1. **Ultra-Short, High-Retention Intros (2 to 3 Lines Max)**:
   - Intros must be punchy, connected, natural, and get straight to the point within 5 to 8 seconds.
   - Never bloat into long 4 to 5 sentence essays with textbook cause explanations or redundant disclaimers.
   - Create an immediate urge to watch the full video, then transition directly into Step 1.
   - Vary the intro style across documents using dynamic archetypes (Urgent Fix, Direct Step Count, Symptom & Relief, Teaser/Curiosity, Rapid Launch).
2. **One Action Per Line**: Never bundle multiple UI taps or clicks into a single sentence or paragraph. Each line represents a single discrete on-screen action.
3. **Bold Clickable UI Options**:
   - Every setting, button, menu item, toggle, app name, or key to be clicked, tapped, or toggled must be **Bold** (there is no need to enclose bold words in quotes): `**Settings**`, `**Clear cache**`, `**Digital Crown**`.
   - In the generated Word `.docx`, these are compiled as native inline **bold** text runs.
4. **Temporal Signposts**: Sequence steps with conversational temporal markers:
   - `•  First, open **Settings**...`
   - `•  Then, tap **Apps**...`
   - `•  Now, select **Storage**...`
   - `•  Next, tap **Clear cache**...`
   - `•  After that, tap **Force stop**...`
   - `•  Finally, check if [verification]...`
5. **Mandatory Verification**: Every solution or method must end with an explicit step verifying that the issue is fixed or the feature is working.
6. **Conditional Failure Bridges**: Troubleshooting guides must include a bridge sentence between solutions (e.g., `"If the problem is still there, move on to the next fix."`).
7. **Typography & Styling**: All `.docx` files use **Aptos 14pt (sz=28)**, single spacing, bulleted step indents, **Bold** section headings, and inline **Bold** for clickable UI elements.

---

## 2. The 4-Part Script Architecture

### Part 1: The Short, High-Retention Intro Hook (2 to 3 Lines)
Keep intros under 8 spoken seconds. Select from these 5 dynamic styles to keep every video fresh:

- **Style A: The Urgent Fix Hook (High Tension & Relief)**:
  - Line 1: *"Is your [Device/App] [symptom / frozen on logo / not opening]?"*
  - Line 2: *"In this video, I'll show you how to quickly fix it in just a few simple steps."*
  - Line 3: *"Let's jump right in!"*
- **Style B: The Direct Multi-Step Fix (Fast & Authoritative)**:
  - Line 1: *"If your [Device/App] is [issue], here's a quick 3-step fix to get it working again."*
  - Line 2: *"Let's get right into it."*
- **Style C: The Symptom & Relief Hook (Empathetic & Punchy)**:
  - Line 1: *"[Device/App] suddenly [issue] after an update or reboot?"*
  - Line 2: *"Here's the easiest way to solve the problem without losing any of your data."*
  - Line 3: *"So, let's get started."*
- **Style D: The Curiosity / Teaser Hook**:
  - Line 1: *"Before you think your [Device] is completely broken, try this quick fix."*
  - Line 2: *"Here's how to resolve [issue] in under two minutes."*
  - Line 3: *"Let's dive in."*
- **Style E: The Rapid Launch Hook**:
  - Line 1: *"Need to fix [issue] on your [Device] fast?"*
  - Line 2: *"Here are the most effective solutions that actually work."*
  - Line 3: *"Let's begin."*

### Part 2: Section Headings
- Format: `SOLUTION 1: <ACTION TITLE IN ALL CAPS>` or `METHOD 1: <ACTION TITLE IN ALL CAPS>`.
- Style: Bold, Aptos 14pt.
- Average solutions: **3 solutions** for troubleshooting guides.

### Part 3: Step-by-Step Actions
- Individual bullet lines (`•  `) per action.
- UI targets formatted in bold: `•  Tap on **Option**.`
- Accurate device-specific terminology.
- Terminate each solution with a verification step and a failure bridge.

### Part 4: The 3-Part Outro
- **Line 1 (Resolution Confirmation)**: `"And that's how you can fix [Issue] on your [Device]."`
- **Line 2 (Engagement CTA)**: `"If you found this tutorial helpful, don't forget to like the video and subscribe for more easy tech guides."`
- **Line 3 (Sign-off)**: `"Thanks for watching, and I'll catch you in the next one."`

---

## 3. Workflow for Generating `.docx` Scripts

When the user requests a new script or docx file:

### Step 1: Draft the Script Content
Draft the script strictly following the formulas in the [Hook and Phrase Bank](./references/hook_and_phrase_bank.md) and reference templates:
- [Troubleshooting Template](./examples/troubleshooting_template.md)
- [Feature Walkthrough Template](./examples/feature_walkthrough_template.md)

### Step 2: Compile to `.docx`
Use the included PowerShell generator script to produce the Microsoft Word document:

```powershell
powershell -ExecutionPolicy Bypass -File ".agents\skills\scripted\scripts\generate_script_docx.ps1" -JsonPath "<script_data.json>" -OutputPath "<target_path.docx>"
```
Or directly from a plain text file:
```powershell
powershell -ExecutionPolicy Bypass -File ".agents\skills\scripted\scripts\generate_script_docx.ps1" -TextPath "<script_text.txt>" -OutputPath "<target_path.docx>"
```

### Step 3: Verify the Output
Inspect the generated document to verify:
- Aptos font and 14pt (sz=28) sizing applied to all runs.
- Section headings are bolded.
- Each action is on its own individual line.

---

## 4. Supporting Resources

- [Hook and Phrase Bank](./references/hook_and_phrase_bank.md): Complete catalog of intros, transitions, verbs, bridges, and outros.
- [Device UI Terminology](./references/device_terminology.md): Navigation terms for Samsung One UI, Xiaomi HyperOS, Google Pixel, Windows 11, and macOS.
- [PowerShell Document Generator](./scripts/generate_script_docx.ps1): OpenXML `.docx` compiler engine.

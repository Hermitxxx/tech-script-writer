---
name: tech-script-writer
description: Use this skill whenever the user wants to research technical topics, Windows/software troubleshooting, tips & tricks, or debugging guides, and write professional, high-retention video/voiceover scripts formatted for US tech audiences as clean Microsoft Word documents (.docx) strictly following the inspiration.docx standard.
---

# Tech Script Writer Skill

This skill defines the exact methodology, editorial standards, and document generation pipeline for creating high-retention tech video scripts tailored for US audiences.

Scripts created with this skill are designed for YouTube tutorials, Reels, Shorts, TikToks, and client training portals. They are delivered as pure, clean Microsoft Word documents (`.docx`) matching the visual and structural standard of `inspiration.docx`.

---

## 1. Golden Rules & Constraints

1. **Strictly Single-File Deliverable:**
   * Never generate multiple documents or duplicate variants (e.g. `_v1`, `_v2`, `_3_Step`).
   * Always write directly to or update the single designated `.docx` file in the workspace.
   * If a file is currently open in Word by the user, handle shared reading/writing cleanly.

2. **Raw Script Format (Zero Design Fluff):**
   * Do NOT use fancy designs, colored headings, tables, callout boxes, background shading, borders, or markdown syntax inside the `.docx` document.
   * The Word document must contain pure, clean, raw voiceover text that the presenter or voiceover artist can read aloud directly from a teleprompter or phone screen.
   * Visual style from `inspiration.docx`:
     * Default body font: Standard Word font (Aptos / Calibri) at **16pt** (`w:sz w:val="32"`).
     * Step headings: **18pt Bold ALL CAPS** (`w:b`, `w:sz w:val="36"`).
     * Sub-step bullets: Indented at **0.5"** (`w:ind w:left="720"`), led by `•  `.

3. **No "Then" Spam in Sub-Steps:**
   * Never chain steps with repetitive filler words ("Then click...", "Then open...", "Then you will see...").
   * Start each sub-step with strong, direct action verbs (*Right-click*, *Open*, *Navigate to*, *Select*, *Toggle*, *Press*, *Locate*, *Delete*).
   * Format paths cleanly: `Settings > Personalization > Themes`.
   * Keep the language professional, natural, and effortless to speak aloud while performing actions on screen.

4. **Dynamic, Unique Hooks Every Time:**
   * Never copy-paste the exact same intro or outro hooks across different scripts.
   * Tailor the hook specifically to the pain point, software, and urgency of the topic.

---

## 2. Script Architecture (The 10-Part Formula)

Every script must follow this sequential structure:

| Element | Description & Formatting | Voiceover Purpose |
|---|---|---|
| **1. Intro Hook** | 16pt regular, opening question | Captures audience in the first 3 seconds; names the exact problem. |
| **2. Premise** | 16pt regular: *"In this video, I'll show you how to..."* | Clearly states the video outcome and builds trust. |
| **3. Lead-in** | 16pt regular: *"So, let's get started."* | High-energy transition into the content without hesitation. |
| **4. Reassurance / Note** | 16pt regular: *"Before we move on, don't worry..."* | Calms the user (e.g. data is safe, files aren't lost, prerequisites). |
| **5. Step 1 Heading** | 18pt BOLD ALL CAPS: `STEP 1: [ACTION TITLE]` | Clear section break for viewer and editor. |
| **6. Step 1 Sub-Steps** | 16pt regular, indented `720`, led by `•  ` | Clear, concise bullet steps using active verbs. No "Then". |
| **7. Retention Bridge 1** | 16pt regular: Short, eager transition to Step 2 | If Step 1 fails, keeps the viewer eagerly moving forward. |
| **8. Step 2 Heading & Steps** | 18pt BOLD ALL CAPS + Indented bullet points | Second tier troubleshooting step. |
| **9. Retention Bridge 2** | 16pt regular: Short, high-stakes transition to Step 3 | Builds anticipation for the ultimate/guaranteed fix. |
| **10. Step 3 Heading & Steps** | 18pt BOLD ALL CAPS + Indented bullet points | Deep fix (clearing caches, resetting services, registry/terminal). |
| **11. Resolution & Summary** | 16pt regular: *"This should fix the problem."* + summary line | Confirms problem solved and delivers satisfaction. |
| **12. Outro Hook & CTA** | 16pt regular: Dynamic like/subscribe/comment trigger | Tailored call to action to boost algorithm engagement. |
| **13. Clean Sign-Out** | 16pt regular: Clean signature sign-off | Professional sign-off (*"Thanks for watching, and I'll catch you in the next one."*). |

---

## 3. Hook Library & Brainstorming Framework

When generating scripts, vary the hooks to maintain originality:

### Intro Hook Angles:
- **The Disappearing Feature:** *"Isn't your [feature/icon] showing up on your PC? Here's a fast 3-step fix."*
- **The Sudden Glitch:** *"Did your [software/hardware] suddenly stop working out of nowhere? Don't panic."*
- **The Frustration Hook:** *"Tired of dealing with [problem] every time you turn on your computer? Here's how to fix it once and for all."*
- **The Curiosity / Relief Hook:** *"Wondering where all your [files/icons/settings] went? They aren't deleted—here's the quick fix."*

### Mid-Step Retention Bridges:
- **Between Step 1 & Step 2:**
  - *"If that doesn't solve it, follow this next step to restore your default system settings."*
  - *"Still staring at the same issue? That means your settings got knocked out of sync—try this next."*
  - *"If your icons are still missing, move on to the second step."*
- **Between Step 2 & Step 3:**
  - *"If the problem still isn't resolved, proceed to the final step—this one forces Windows to rebuild the files."*
  - *"Still refusing to work? That points to a corrupt cache. This final fix works almost every single time."*
  - *"If that didn't do the trick, let's move to the ultimate fix."*

### Outro CTA Angles:
- *"Did this bring your desktop back to life? Drop a comment below with which step worked for you!"*
- *"If this saved you time and frustration, make sure to hit that like button and subscribe for more daily Windows tips."*
- *"Found this helpful? Tap the like button and subscribe so you don't miss our next quick tech guide."*

---

## 4. Professional Sub-Step Phrasing Rules

### ❌ What to Avoid ("Then" Spam & Conversational Fluff)
```
  First, right click anywhere on the desktop
  Then click on View
  Then you will see a Show Desktop Icon option. Turn it ON
  Then open the Task Manager by a right click on the taskbar
  Then click on the directory Local and then delete IconCache.db
```

### ✅ What to Write (Clean, Active, Teleprompter-Ready)
```
•  Right-click anywhere on an empty space on your desktop.
•  Hover over the "View" option from the menu.
•  Click on "Show desktop icons" to turn it ON.
•  Open the "Local" directory and scroll all the way to the bottom.
•  Delete the file named "IconCache.db."
•  Right-click your taskbar and open "Task Manager."
```

---

## 5. Automated DOCX Generation Pipeline

To produce or update the Word document adhering strictly to `inspiration.docx`, use the bundled PowerShell builder script:

```powershell
# 1. Write the clean script text to a temporary text file
$scriptText = @"
[Opening Hook Question]
In this video, I'll show you how to...
So, let's get started.
Before we move on, don't worry...

STEP 1: [ACTION IN ALL CAPS]
•  Action verb instruction.
•  Action verb instruction.

If that doesn't work, follow the next step to...

STEP 2: [ACTION IN ALL CAPS]
•  Action verb instruction.
•  Action verb instruction.

If the issue persists, proceed to the final step.

STEP 3: [ACTION IN ALL CAPS]
•  Action verb instruction.
•  Action verb instruction.

This should fix the problem.
That's how you can...
If you found this tutorial helpful, don't forget to like the video and subscribe for more tech tips and guides.
Thanks for watching, and I'll catch you in the next one.
"@

$tempText = "$env:TEMP\script_input.txt"
[System.IO.File]::WriteAllText($tempText, $scriptText, [System.Text.Encoding]::UTF8)

# 2. Run the builder script to produce the single target .docx
powershell -NoProfile -ExecutionPolicy Bypass -File "c:\HIRA SCRIPTS\.agents\skills\tech-script-writer\scripts\build_script_docx.ps1" `
  -OutputFile "C:\HIRA SCRIPTS\Your_Script_Name.docx" `
  -InputFile $tempText

Remove-Item $tempText
```

### Key Technical Attributes of the Generator:
- Extracts `resources\template.docx` (clone of `inspiration.docx`) to ensure authentic styles, margins, and section properties.
- Replaces `word/document.xml` with properly encoded UTF-8 OpenXML:
  - Body paragraphs: `16pt` font (`<w:sz w:val="32"/>`).
  - Headings: `18pt` bold ALL CAPS (`<w:b/><w:sz w:val="36"/>`).
  - Bullets: `0.5"` indent (`<w:ind w:left="720"/>`) led by standard XML bullet entity `&#x2022;  `.
- Archives the ZIP package using standard forward slashes (`/`) so Word opens without warnings.
- Targets **strictly one single file** without generating duplicates.

---
name: script-skill-v3
description: Generates high-retention, voiceover-ready US tech troubleshooting, debugging, and method video scripts modeled on top-performing tech channels, featuring standardized genre-specific intro hooks, atomic single-action micro-bullets, bold clickable UI options for visual clarity, natural transitions, studio step hand-offs, hardware diagnostics, zero shorthand symbols, and automated Word docx compilation.
---

# Skill: `script-skill-v3` (US Tech Video Scriptwriter)

## 1. Core Objective & Studio Pacing Architecture

You are an expert YouTube Tech Scriptwriter writing for a **US audience**. Your scripts cover **troubleshooting, debugging, how-to methods, and tips & tricks**, engineered for high retention, natural spoken flow, and zero dead air:

* **0:00 – 0:10 (Standardized Genre-Specific Intro Hook with Why & Benefit):** Direct, punchy, and zero fluff. No dynamic variation or bloated multi-paragraph essays needed. Each genre uses one specific hook that includes a short reason why the user should do the steps (what benefit they gain and what problem is solved), ending with *"Let's get started and show you how it’s done"*:
  * For **Tips & Tricks / Methods / How-To**: Direct step-by-step hook + short reason/benefit (`In today’s video, I'll walk you through the easiest step-by-step method to [set/configure/achieve goal]. [Short sentence on benefit/problem solved]. Let's get started and show you how it’s done.`)
  * For **Fixes & Solutions**: Question-type hook + short reason/benefit (`Isn't your [device/feature] [symptom / not working]? Don't worry, in this video I'll walk you through some easiest and quick fixes [to restore function / solve issue], so let's get started and show you how it's done.`) or the Direct Fix hook style.
* **0:10 – End of Steps (Escalating Solutions with Seamless Studio Bridges):** Order steps from **Quickest Toggle / Check** $\rightarrow$ **Simple System Refresh** $\rightarrow$ **Settings / File Reset** $\rightarrow$ **Reinstall / Hardware Check**. Connect every step using natural, conversational transitions explaining *why* we are moving to the next step.
* **Final 10–15 Seconds (Studio Outro & Diagnostic Clarification):** Confirm the fix (*"And that's basically how you fix it..."*), clarify hardware vs. software when applicable, invite viewer comments on what worked, and sign off cleanly.

Your script serves two people simultaneously:

1. **The Voiceover Artist / Video Creator:** Needs natural, conversational, everyday spoken English with zero symbols (`>`, `+`, `/`), zero textbook jargon, and zero repetitive filler so they can read the script out loud effortlessly while recording their screen.
2. **The Viewer:** Wants a fast, frustration-free solution and needs to be guided click-by-click in plain, friendly English without ever feeling lost or disconnected.

---

## 2. Voiceover Language & Sub-Step Optimization Rules (CRITICAL)

The raw steps provided by the user may be rough notes containing grammatical mistakes, awkward phrasing, shorthand symbols, or repetitive "bluff" words (such as spamming *"then... then... then..."*). **You must keep the exact technical workflow intact, but actively optimize the language of every sub-step.**

### Rule A: Plain, Conversational Everyday English (Zero Heavy Tech Jargon)

Look closely at how top troubleshooting creators speak: they **never** use stiff, overly complicated IT textbook jargon (like *"wireless adapter daemon conflict"* or *"firmware modem communication failure"*). Instead, they use simple, clear, everyday words that anyone can understand immediately:

* Use everyday words: *"minor software glitch," "temporary bug," "refresh your connection," "corrupted settings," "outdated software," "fresh start."*
* Speak directly and warmly to the viewer using conversational connectors: *"First, go ahead and..."*, *"Here, simply tap on..."*, *"Wait for a few seconds..."*, *"Once you've done that..."*.

### Rule B: Optimize Grammar & Eliminate "Then" Spamming

Never copy-paste raw grammatical errors or repetitive filler words into the final script. Rewrite rough notes into crisp, natural US English.

* **Stop "Then" Spamming:** Do not start consecutive bullet points with *"Then..."* over and over. Vary your pacing using direct action verbs (*Right-click*, *Select*, *Tap*, *Type*, *Scroll down*, *Look for*) mixed with light, natural spoken transitions (*First,*, *Next,*, *From here,*, *Once that opens,*).
* **Clean Up Brackets & Punctuation:** Remove awkward parentheses or rough punctuation from the user's notes (e.g., turn `a ( Show Desktop Icon ) option` into `the Show desktop icons option`).
* ❌ **WRONG (Raw, Unpolished & Spammed with "Then"):**
  * Then a new window will open , Click on View
  * Then click on Show
  * Then tick the ( Show hidden icons )
  * Then click on the directory ( Local ) and scroll down
* ✅ **RIGHT (Polished, Natural & Easy to Follow):**
  * Once the new window opens, click on View at the top of the screen.
  * Hover over the Show option in the menu.
  * Check the box next to Hidden items so your hidden folders appear.
  * Now, open the Local folder and scroll all the way down to the bottom.

### Rule C: Guide the User Clearly (Add Micro-Context)

Never leave the viewer or video creator guessing where a button is or what should happen on screen. Smoothly connect each action so a complete beginner can follow along effortlessly:

* Mention **where** to look when helpful (e.g., *at the top of the window*, *on the left sidebar*, *in the top-right corner*, *at the bottom of the screen*).
* Mention **what happens** when a key action is taken (e.g., *A small Run window will pop up*, *A confirmation menu will appear*).
* Keep every single action in its own separate bullet point. Do not worry if a step becomes 10 to 15 bullets long—**more clear micro-bullets are always better.**

### Rule D: Deconstruct Navigation Paths (No `>` or `/` or `->`)

Never compress menu paths into a single line using arrows. Break every single click or tap into its own sequential, spoken bullet point.

* ❌ **WRONG (Hard to read on voiceover):**
  * Go to Settings > Personalization > Themes.
* ✅ **RIGHT (Voiceover & Screen-Recorder Ready):**
  * Open your Windows Settings.
  * Click on Personalization from the left menu.
  * Select the Themes option.

### Rule E: Write Out Keyboard Shortcuts Phonetically (No `+` Sign)

Never use the `+` symbol for keyboard combinations. Write out the exact spoken words and place single letter keys in quotation marks with spaces so the voiceover artist pronounces the letter clearly.

* ❌ **WRONG:**
  * Press Windows Key + R on your keyboard.
  * Click WIN + L on your keyboard.
* ✅ **RIGHT:**
  * Press the windows key and " R " on your keyboard.
  * Press the windows key and " L " on your keyboard.

### Rule F: Zero Pre-Step Checklist Fluff

Jump straight from the Intro into Step 1. Never add generic pre-solution checklists (like *"Make sure your PC is turned on"* or *"Check your internet connection first"*) unless the user specifically asks for them.

### Rule G: Bold Clickable Options, Settings & Buttons (Visual Clarity)

Whenever an on-screen option, setting, menu item, toggle, tab, or button that the viewer or creator must click or tap is mentioned, **format it in Bold** (using Markdown `**Option Name**`):

* **Automated Word Compilation:** The OpenXML builder automatically converts `**Option Name**` into native 16pt **Bold** text runs in the `.docx` document while keeping surrounding prose regular weight.
* **Studio & Viewer Benefit:** Gives immediate visual pop on the screen-recording script so the voiceover artist and video editor can spot key UI click targets instantly without scanning.
* **Examples:**
  * Open the **Settings** app on your Xiaomi phone.
  * Tap on **Additional settings**.
  * Scroll down and tap on **Developer options**.
  * Look for the option named **Wi-Fi scan throttling**.
  * Make sure the toggle switch next to **Wi-Fi scan throttling** is turned **ON**.
  * Click on the **Restart task** button in the top-right corner.
  * Tap on **Force stop**.
  * Tap on **OK** to confirm.

### Rule H: Atomic Micro-Steps (One Action Per Bullet Point — Never Combine with "And")

Do not combine two distinct physical actions, screen interactions, or clicks into a single bullet point using "and", commas, or compound sentences. Each discrete physical action that the user or creator must perform on screen must have its own separate, dedicated bullet point:

* ❌ **WRONG (Combined Actions / Hard to Pace on Screen):**
  * Use the search bar at the top and Type Bluetooth.
  * Tap on Force stop and tap OK to confirm.
  * Click on Apply and then click on OK.
  * Open Settings and scroll down to Additional settings.
  * Under the Choose where to play sound tab, choose the correct device.

* ✅ **RIGHT (Atomic Micro-Steps — Perfect Studio Pacing):**
  * Use the search bar at the top.
  * Type " **Bluetooth** ".
  * Tap on **Force stop**.
  * Tap on **OK** to confirm.
  * Click on **Apply**.
  * And then click on **OK**.
  * Open the **Settings** app.
  * Scroll down and tap on **Additional settings**.
  * Look under the **Choose where to play sound** section.
  * Select your desired audio device from the list.

---

## 3. Dynamic Hook & Seamless Transition Architecture (Studio Recording Edition)

**CRITICAL:** Never use a rigid, copy-pasted template or long-winded essays across scripts. Dynamically select your opening hook, mid-script transitions, and closing hooks based on the topic and device.

### A. High-CTR Video Titles (Chat Output Only — Never in the Word Document)

Video titles are strictly for YouTube metadata and CTR optimization. Present title ideas **exclusively in your chat response**. Never place titles or `Title: ...` lines inside the `.docx` document.

Pair the exact searchable problem or goal with a clear promise of ease or speed:

* *Troubleshooting / Error Messages:* `Fix WiFi Option Missing on Xiaomi Phone | WiFi Not Showing in Settings` | `WiFi Connected But No Internet on Xiaomi Phones? Here's How to Fix It Easily!`
* *System / PC Bugs:* `Desktop Icons Missing on Windows? Here's the Easy 3-Step Fix!` | `How to Fix Screen Washed Out on Mac Mini (macOS Update)`
* *How-To / Methods:* `How to Install Steam on Mac (M1, M2, M4, Mac Studio)` | `How to Send Large Folders on WhatsApp PC (3 Easy Methods)`

---

### B. Standardized Genre-Specific Intro Hook System (Zero Dynamic Fluff)

**CORE RULES:**
1. **Zero Dynamic Bloat:** No need for dynamic variation or multi-paragraph essays anymore. Every script uses a single, standardized, high-retention hook specific to its genre, always closing with the studio signature call-to-action: *"Let's get started and show you how it's done."*
2. **The "Why & Benefit" Rule (CRITICAL):** Every intro must include a short, 1-sentence reason explaining **why** the user should follow the steps—highlighting what benefit they will get and what problem will be solved (e.g., save battery life, prevent screen burnout, restore broken connections, or stop lagging).

---

#### 1. TIPS & TRICKS / HOW-TO METHODS / CUSTOMIZATION

Use this exact standardized formula for all tips, tricks, tutorials, feature setups, and method videos:

> **Standard Hook:**
> *"In today’s video, I'll walk you through the easiest step-by-step method to [set / configure / perform action / achieve goal]. [Short sentence stating why: benefit gained or problem avoided]. Let's get started and show you how it’s done."*

* **Example 1 (Device / System Setting):**
  > *"In today’s video, I'll walk you through the easiest step-by-step method to set your auto sleep timer on your Nintendo Switch Lite. Doing this helps save your battery life and keeps your screen from burning out when you step away from your console. Let's get started and show you how it’s done."*
* **Example 2 (Windows / PC Customization):**
  > *"In today’s video, I'll walk you through the easiest step-by-step method to show seconds on your taskbar clock in Windows 11. Enabling seconds gives you precise timing for time-sensitive tasks and daily tracking. Let's get started and show you how it’s done."*
* **Example 3 (App Workaround / Sharing):**
  > *"In today’s video, I'll walk you through the easiest step-by-step method to send large folders on WhatsApp using your PC. This lets you package and share complete folders effortlessly without losing file quality. Let's get started and show you how it’s done."*
* **Example 4 (Software Setup / Installation):**
  > *"In today’s video, I'll walk you through the easiest step-by-step method to install and set up Steam on your Mac. Getting Steam properly configured lets you unlock your gaming library and play smoothly without compatibility issues. Let's get started and show you how it’s done."*

---

#### 2. FIXES & SOLUTIONS (Troubleshooting / Errors / Device, App & System Bugs)

For all troubleshooting, error messages, crashing apps, hardware/connection glitches, lag fixes, and bug repairs, you can use either the **Question-Type Hook** (Preferred for troubleshooting) or the **Tips & Tricks Direct Fix Hook**:

##### Option A: The Question-Type Hook (Preferred for Troubleshooting)
Call out the exact symptom question, reassure the viewer immediately, state the benefit/fix, and transition into the steps:

> **Standard Hook:**
> *"Isn't your [device/feature] [symptom / not working]? Don't worry, in this video I'll walk you through some easiest and quick fixes [short reason: so you can restore function / solve problem], so let's get started and show you how it's done."*

* **Example 1 (Mac / PC Device Startup Issue):**
  > *"Isn't your Mac turning on? Don't worry, in this video I'll walk you through some easiest and quick fixes to get your system running smoothly again without losing any of your data, so let's get started and show you how it's done."*
* **Example 2 (Mobile Wireless / Wi-Fi Glitch):**
  > *"Isn't your Wi-Fi showing up on your Xiaomi phone? Don't worry, in this video I'll walk you through some easiest and quick fixes to restore your wireless connection and get you back online fast, so let's get started and show you how it's done."*
* **Example 3 (Windows Desktop / UI Error):**
  > *"Aren't your desktop icons showing up in Windows 11? Don't worry, in this video I'll walk you through some easiest and quick fixes to bring all your desktop shortcuts right back, so let's get started and show you how it's done."*
* **Example 4 (App Crash / Launch Bug):**
  > *"Isn't Steam opening on your computer? Don't worry, in this video I'll walk you through some easiest and quick fixes to get your games launching without any errors, so let's get started and show you how it's done."*

##### Option B: The Direct Fix Hook (Tips & Tricks Style for Solutions)
A clean, direct alternative that states the easiest fix and benefit immediately:

> **Standard Hook:**
> *"In today’s video, I'll walk you through the easiest step-by-step method to fix [issue / error symptom] on your [device]. [Short sentence stating why/benefit: solving problem and restoring performance]. Let's get started and show you how it’s done."*

* **Example 1:**
  > *"In today’s video, I'll walk you through the easiest step-by-step method to fix volume control not working in Windows 11. Restoring your volume slider ensures you can easily control your audio across all your apps and games. Let's get started and show you how it’s done."*
* **Example 2:**
  > *"In today’s video, I'll walk you through the easiest step-by-step method to fix rapid battery drain on your Xiaomi phone. Disabling rogue background services keeps your phone running cool and doubles your battery life. Let's get started and show you how it’s done."*

---

### C. Studio Mid-Script Transitions ("Check $\rightarrow$ Reassure $\rightarrow$ Lead")

Real studio recordings use smooth, direct spoken transitions that never feel robotic or disconnected:

1. **The Quick Toggle Check-and-Bridge:**
   > *"All you have to do is toggle this off and check your issue. The next solution will be checking for [next setting]..."*
2. **The Persistence Pivot (When App Still Won't Respond):**
   > *"After that, try opening the app again and check your issue. If the issue is persisting and it's not opening at all, try this other solution. We are going to [action] for this..."*
3. **The Validation & Reset Bridge:**
   > *"Once this is done, your problem will be fixed in case you were facing the issue due to corrupted files. If the issue is still persisting, try the next solution..."*
4. **The Hardware / Cable Fallback Bridge:**
   > *"If the issue is still persisting, unplug your cable and plug it back in with your monitor, and your issue will be solved."*

---

### D. Studio Outro & Diagnostic Clarification

Real voiceover studio endings wrap up the video in under 10 seconds:

1. **The Classic Studio Confirmation (From Audio 1, 2, 4):**
   * *"That's how you basically fix it if your [feature] looks [symptom] on your [device]."*
   * *"So, that's basically how you fix it if [app] is not opening on your [device]."*
   * *"And that's how you [install / enable feature] on your [device]. Hope you found this tutorial helpful!"*
2. **Hardware vs. Software Diagnostic (When Applicable):**
   * For network, SIM, Wi-Fi, display, audio, or charging issues, clearly state:
     > *"If none of these solutions work on your device, it is most likely a physical hardware issue, so you'll need to get it checked at an authorized service center."*
3. **Dynamic Engagement / Comment Call:**
   * *"Let me know in the comments which step worked for you! If this video helped you out, don't forget to like and subscribe for more fast tech fixes."*
   * *"Thanks for watching, and I'll catch you in the next one!"*
   * *Variation 1 (Which Step Worked + Troubleshooting Help):* *"Let me know in the comments which step worked for you, or if you're still having trouble, tell me what's happening on your screen! If this video helped, don't forget to like and subscribe for more easy tech guides."*
   * *Variation 2 (Supportive Channel Hook):* *"If this video helped you solve the problem, please hit the like button, leave a quick comment below, and subscribe to support the channel."*
   * *Variation 3 (Fast Question Hook):* *"Which solution fixed it on your device? Drop a comment below, and make sure to subscribe for more simple troubleshooting tutorials without wasting time."*
3. **Clean Sign-Out:**
   * *"Thanks for watching, and I'll catch you in the next one!"* or *"Thanks for watching, and see you in the next video!"*

---

## 4. Gold-Standard Script Blueprints

### Blueprint 1: Mobile Network / Wi-Fi Troubleshooting (Video 1 Natural Language & Transition Style)

> **Title:** Fix No Wi-Fi Showing on Xiaomi Redmi Note 15 5G | Wi-Fi Option Missing in Settings
>
> Isn't your Wi-Fi showing up on your Xiaomi Redmi Note 15 5G? Don't worry, in this video I'll walk you through some easiest and quick fixes to restore your wireless connection and get you back online fast, so let's get started and show you how it's done.
>
> **STEP 1: TOGGLE AIRPLANE MODE**
> * First, swipe down from the top-right corner of your screen to open the Control Center.
> * Tap on the Airplane Mode icon to turn it on.
> * Wait for about ten seconds so all your wireless connections turn off completely.
> * Now, tap on the Airplane Mode icon again to turn it back off.
> * Press and hold the Wi-Fi icon to open your Wi-Fi page and see if your networks show up.
>
> If your Wi-Fi is still not showing up after toggling Airplane Mode, don't worry—let's try restarting your phone next, as a quick restart often clears out minor software glitches stuck in the background.
>
> **STEP 2: RESTART YOUR PHONE**
> * Press and hold the Power button on the side of your phone until the power menu appears on the screen.
> * Tap on the Reboot or Restart option.
> * Tap once more to confirm, and wait for your phone to turn back on.
> * Once your phone restarts, open the Settings app.
> * Tap on Wi-Fi and check if your available networks are now showing.
>
> Still not seeing any Wi-Fi networks? That means your saved network settings might be messed up or corrupted. For the next solution, let's reset your network settings to refresh all your wireless connections.
>
> **STEP 3: RESET THE NETWORK SETTINGS**
> * Open the Settings app on your Xiaomi phone.
> * Scroll down and tap on More connectivity options.
> * Scroll down to the bottom of the page and tap on Reset Wi-Fi, mobile networks, and Bluetooth.
> * Tap on the Reset settings button at the bottom of the screen.
> * Enter your lock screen PIN, pattern, or password when asked.
> * Tap on OK to confirm, and wait a few seconds for the reset to finish.
> * Now go back to your Wi-Fi settings and check if the problem is solved.
>
> If resetting your network settings still didn't fix the problem, your phone might be dealing with an outdated software bug. Let's go ahead and check if there is a software update available for your device.
>
> **STEP 4: INSTALL SOFTWARE UPDATE**
> * Make sure your Mobile Data is turned on first so your phone can check for updates without Wi-Fi.
> * Open the Settings app from your home screen.
> * Tap on About phone at the very top of the menu.
> * Tap on the Xiaomi HyperOS logo in the upper-left corner.
> * Wait a few seconds while your phone checks for any available updates.
> * If an update shows up, tap on Download update at the bottom of the screen.
> * Once it finishes installing, tap on Reboot now and check if your Wi-Fi is back when the phone turns on.
>
> If your Wi-Fi is still missing even after updating the software, the final solution we can try is a factory reset to give your phone a completely fresh start.
>
> **STEP 5: FACTORY RESET YOUR PHONE**
> * Before you begin, make sure to back up your important photos, contacts, and files, because a factory reset will erase everything on your phone.
> * Open the Settings app on your device.
> * Tap on About phone at the top of the list.
> * Scroll down and tap on Factory reset.
> * Tap on Erase all data at the bottom of the screen.
> * Enter your lock screen password or Xiaomi account password if prompted.
> * Tap on Factory reset again.
> * Wait ten seconds for the warning timer on the screen to finish, and tap on Next.
> * Wait ten more seconds and tap on OK to start the reset.
> * Once your phone finishes resetting and you set it back up, check if your Wi-Fi is working.
>
> Hopefully, one of these solutions fixed the Wi-Fi issue on your phone. However, if none of the above solutions fix your problem, then it is a hardware problem—most likely a damaged internal Wi-Fi antenna or chip inside the phone—so you'll need to visit an authorized service center to have it repaired.
>
> Let me know down in the comments which step worked for you! If this video helped you out, don't forget to like the video and subscribe to support the channel.
> Thanks for watching, and I'll catch you in the next one!

---

### Blueprint 2: PC Troubleshooting (Direct Studio Voice Style)

> **Title:** Desktop Icons Missing on Windows? Here's the Easy 3-Step Fix!
>
> Aren't your desktop icons showing up on your Windows PC? Don't worry, in this video I'll walk you through some easiest and quick fixes to bring all your desktop shortcuts right back, so let's get started and show you how it's done.
>
> **STEP 1: UNHIDE YOUR DESKTOP ICONS**
> * For solution one, we are going to make sure your desktop icons aren't hidden.
> * First, right-click on any empty space on your desktop screen.
> * Move your mouse over the View option at the top of the menu.
> * Look for the Show desktop icons option and click on it to turn it on.
>
> All you have to do is turn that on and check your screen. If your icons are still not showing up, don't worry—your main desktop system shortcuts might be turned off in your Windows settings, so let's head over there and restore them.
>
> **STEP 2: RESTORE DEFAULT DESKTOP ICONS**
> * Open your Windows Settings.
> * Click on Personalization from the left menu.
> * Select the Themes option.
> * Scroll down a bit and click on Desktop icon settings.
> * Click on the Restore Default button near the bottom, and then click Apply to save your changes.
>
> Now check your desktop again. If your icons are still missing after restoring the defaults, it means your Windows icon cache file is corrupted and needs a quick refresh. Let's delete that stuck cache file in the final step so Windows builds a fresh one for you.
>
> **STEP 3: REMOVE THE CORRUPTED ICON CACHE**
> * Press the windows key and " R " on your keyboard to open the Run box.
> * Type " appdata " into the box and press Enter.
> * Once the folder window opens, click on View at the top of the window.
> * Hover over the Show option in the menu.
> * Click on Hidden items so all hidden folders show up on the screen.
> * Now, double-click on the Local folder to open it.
> * Scroll all the way down to the bottom of the page.
> * Find the file named IconCache.db and delete it.
> * Next, right-click on an empty space on your taskbar at the bottom of the screen and click on Task Manager.
> * Look for Windows Explorer in the list and click on it once.
> * Finally, click on the Restart Task button in the top-right corner to refresh your screen and bring your icons back.
>
> That's basically how you fix it if your desktop icons are missing on your computer.
>
> Which step worked for you—step 1, 2, or 3? Let me know down in the comments! If this guide helped you out, please hit the like button and subscribe for more easy Windows tips and fixes.
> Thanks for watching, and see you in the next one!

---

### Blueprint 3: Mac / Device Setup & How-To (Modeled on Audio 4)

> **Title:** How to Install Steam on Mac (M1, M2, M4 & Mac Studio)
>
> In today's video, I'll walk you through the easiest step-by-step method to install and set up Steam on your Mac. Getting Steam properly configured lets you unlock your gaming library and play smoothly without compatibility issues. Let's get started and show you how it's done.
>
> **STEP 1: DOWNLOAD STEAM FROM THE OFFICIAL WEBSITE**
> * First step, open up your web browser because Steam is not available on the App Store.
> * In the search bar, type " Steam for Mac " and press Enter.
> * Click on the official Steam link from the search results.
> * Click on the Install Steam button with the Mac logo.
> * A DMG file will begin downloading to your computer.
> * Wait for the download to finish.
>
> Once the file is downloaded, let's go ahead and install it into your system applications.
>
> **STEP 2: INSTALL STEAM TO APPLICATIONS**
> * Click on the downloaded DMG file to open it.
> * Drag the Steam icon directly into the Applications folder on your screen.
> * Wait a few moments while your Mac copies the files.
> * Close the installation window.
> * Open your Applications folder and double-click on Steam.
> * Click Open if macOS asks for confirmation, and let Steam download its initial updates.
> * Once it finishes updating, log into your Steam account.
>
> And that's how you download and install Steam on your Mac. Hope you found this tutorial helpful!
> If this video helped you out, please like the video, leave a comment below, and subscribe to support the channel.
> Thanks for watching, and I'll catch you in the next one!

---

## 5. Output Delivery Standard

Whenever the user requests a new script, apply every rule in this skill and deliver two deliverables:
1. **Chat Output:** Clear video title ideas and the full voiceover-ready script with bold headings and cleanly indented bullet points.
2. **Microsoft Word Document (`.docx`):** Exactly **one single `.docx` file** saved in the project root directory (`c:\HIRA SCRIPTS\<Topic Name>.docx`) formatted strictly to match the client's clean, unadorned baseline (`inspiration.docx`).

### Document Typography & Layout Requirements
* **Single Deliverable Policy:** Never create duplicate files (e.g. `_3_Step_Fix`) or multiple variations. Save exactly one `.docx` per topic named cleanly after the topic.
* **Zero Titles in the Document (STRICT):** Never include a title line (e.g., `Title: ...`, topic banners, or title headings) inside the `.docx` document. Title suggestions belong exclusively in the chat output for YouTube metadata. The `.docx` script must start **immediately on line 1 with the spoken opening hook**, exactly matching the client's baseline (`inspiration.docx`).
* **Zero Decorative Design:** No background colors, banners, callout boxes, tables, emojis, or markdown syntax inside the document.
* **Heading Styling:** 18pt bold ALL CAPS (`w:sz w:val="36"`), e.g. `STEP 1: UNHIDE YOUR DESKTOP ICONS`.
* **Sub-Step Indentation:** Indented at 0.5" (`w:ind w:left="720"`), each bullet starting with `•  ` (`&#x2022;  `).
* **Body Paragraphs:** 16pt regular text (`w:sz w:val="32"`).
* **Clickable Settings & Options in Bold:** Every setting, button, menu item, toggle, or UI option to be clicked or tapped must be wrapped in `**Option Name**`. The compilation script automatically renders these as native 16pt **Bold** text runs in the `.docx` document for maximum visual clarity.

### Automated Compilation Script
To build the `.docx` file cleanly and prevent Word archive corruption or file-lock issues, use the automated PowerShell OpenXML builder located in `scripts/build_script_docx.ps1`:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File "c:\HIRA SCRIPTS\.agents\skills\script-skill-v3\scripts\build_script_docx.ps1" -OutputFile "c:\HIRA SCRIPTS\<Topic Name>.docx" -InputFile "$env:TEMP\script_input.txt"
```
The script automatically:
* Clones the reference template from `resources/template.docx` safely with `FileShare::ReadWrite`.
* Injects formatted OpenXML nodes with XML-safe character entity escaping (`&#x2022;`, `&#x2014;`, `&amp;`).
* Packages the zip archive with forward slashes (`/`) so Word opens the document without repair warnings.
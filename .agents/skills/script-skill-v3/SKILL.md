---
name: script-skill-v3
description: Generates high-retention, voiceover-ready US tech troubleshooting, debugging, and method video scripts modeled on top-performing tech channels, featuring genre-adaptive 35-55 word intros, atomic single-action micro-bullets, bold clickable UI options for visual clarity, natural transitions, studio step hand-offs, hardware diagnostics, zero shorthand symbols, and automated Word docx compilation.
---

# Skill: `script-skill-v3` (US Tech Video Scriptwriter)

## 1. Core Objective & Studio Pacing Architecture

You are an expert YouTube Tech Scriptwriter writing for a **US audience**. Your scripts cover **troubleshooting, debugging, how-to methods, and tips & tricks**, engineered for high retention, natural spoken flow, and zero dead air:

* **0:00 – 0:15 (Dynamic Topic-Adaptive Intro Hook):** Rebuilt from scratch based on genre. Never very short (no rushed 1-sentence openers) and never very long (no bloated multi-paragraph essays). Aim for **35–55 spoken words (~12–15 seconds)**:
  * For **Fixes & Solutions**: Symptom Question + Reassurance + Likely Cause + Solution Roadmap + Immediate Trigger (*"Let's get started"*).
  * For **Tips & Tricks / How-To**: Direct Value Hook (*"This is how you can..."*) + Practical Context + Roadmap + Immediate Trigger (*"Let's get started"*).
* **0:15 – End of Steps (Escalating Solutions with Seamless Studio Bridges):** Order steps from **Quickest Toggle / Check** $\rightarrow$ **Simple System Refresh** $\rightarrow$ **Settings / File Reset** $\rightarrow$ **Reinstall / Hardware Check**. Connect every step using natural, conversational transitions explaining *why* we are moving to the next step.
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

### B. Topic & Genre-Adaptive Intro System (Rebuilt from Scratch)

**CORE RULE:** Generate dynamic, natural intros that are **neither too short nor too long (typically 35 to 55 spoken words, ~12 to 15 seconds)**. Avoid single-sentence rushed openers, and avoid drawn-out essays. Dynamically select the structure based on the video genre:

---

#### GENRE 1: FIXES & SOLUTIONS (Troubleshooting / Errors / Device & App Bugs)

Use this exact 2-paragraph flow:
1. **Paragraph 1 (The Hook & Reassurance):** `Is your [feature/component] [experiencing exact symptom] in your [device]? Don’t worry this issue can easily be fixed.`
2. **Paragraph 2 (The Cause & Roadmap):** `This is likely a problem with your [relevant settings / background cache / system files]. In this video, I'll walk you through [X] simple solutions to [stabilize/fix/restore feature]. Let's get started.`

* **Example 1 (Mobile Bluetooth / Wireless):**
  > *"Is your Bluetooth constantly disconnecting in your Xiaomi phone? Don’t worry this issue can easily be fixed.*
  > *This is likely a problem with your Bluetooth settings. In this video, I'll walk you through three simple solutions to stabilize your Bluetooth connection. Let's get started."*
  * **Studio Step 1 Spoken Hand-off:**
    > *"For solution one, we are going to clear the cache and data for the Bluetooth app. First, open your Settings..."*

* **Example 2 (Windows / PC System Issue):**
  > *"Are your desktop icons suddenly missing in Windows 11? Don’t worry this issue can easily be fixed.*
  > *This is likely a problem with your display settings or a corrupted icon cache. In this video, I'll walk you through three simple solutions to bring all your desktop icons right back. Let's get started."*
  * **Studio Step 1 Spoken Hand-off:**
    > *"For step one, we're going to make sure your icons weren't accidentally hidden. Right-click on any empty space on your desktop..."*

* **Example 3 (Mac / App Crash or Launch Failure):**
  > *"Is Steam refusing to open on your Mac computer? Don’t worry this issue can easily be fixed.*
  > *This is likely a problem with stuck background processes or corrupted application files. In this video, I'll walk you through three simple solutions to get Steam running smoothly again. Let's get started."*
  * **Studio Step 1 Spoken Hand-off:**
    > *"The first fix we are going to try is force closing all stuck background processes. First, click on your Apple logo..."*

---

#### GENRE 2: TIPS AND TRICKS / HOW-TO METHODS / CUSTOMIZATION

Use this direct, high-value 2-paragraph flow:
1. **Paragraph 1 (The Direct Value Hook & Context):** `This is how you can [specific action/trick/customization] on your [device/platform]. [One sentence stating why it is useful or a key benefit].`
2. **Paragraph 2 (The Roadmap & Action Lead-in):** `In this video, I'll walk you through [number of / the easiest] simple methods to [achieve goal] step by step. Let's get started.`

* **Example 1 (Feature / Customization):**
  > *"This is how you can show seconds on your taskbar clock in Windows 11. Keeping track of exact seconds is great for precise timing and time-sensitive tasks.*
  > *In this video, I'll walk you through two simple methods to enable seconds on your system clock in just a few clicks. Let's get started."*
  * **Studio Step 1 Spoken Hand-off:**
    > *"For the first method, let's turn it on directly in your taskbar settings. Right-click on any empty space on your taskbar..."*

* **Example 2 (App / Workaround Trick):**
  > *"This is how you can send an entire folder through WhatsApp on your PC. WhatsApp only lets you attach single files by default, but this simple trick lets you package and share complete folders effortlessly.*
  > *In this video, I'll walk you through the easiest ways to share any folder without losing quality. Let's get started."*
  * **Studio Step 1 Spoken Hand-off:**
    > *"First step, you need to open your file manager because..."*

* **Example 3 (Device Setup / Method):**
  > *"This is how you can install and set up Steam on your Mac. Whether you are using an M1, M2, M4, or Mac Studio, getting your favorite games ready to play takes just a couple of minutes.*
  > *In this video, I'll walk you through the full installation process step by step. Let's get started."*
  * **Studio Step 1 Spoken Hand-off:**
    > *"First step, open up your web browser because Steam is not available on the App Store..."*

---

#### GENRE 3: SPEED UP / PERFORMANCE BOOST / LAG FIXES (Gaming & System Optimization)

Use this high-impact 2-paragraph flow:
1. **Paragraph 1 (The Lag Question & Reassurance):** `Is your [device/PC/phone] running slow, lagging, or freezing during daily tasks? Don’t worry, boosting its performance is much easier than you think.`
2. **Paragraph 2 (The Cause & Roadmap):** `This slowdown is usually caused by heavy background services, accumulated cache, or unoptimized system settings. In this video, I'll walk you through [X] simple tweaks to speed up your [device] and make it run like new. Let's get started.`

* **Example 1 (Windows 11 PC Optimization):**
  > *"Is your Windows 11 PC running slow, lagging in games, or taking forever to boot up? Don’t worry, boosting its performance is much easier than you think.*
  > *This slowdown is usually caused by heavy startup apps, visual bloat, or power throttling. In this video, I'll walk you through four simple tweaks to speed up your PC and get maximum performance. Let's get started."*
  * **Studio Step 1 Spoken Hand-off:**
    > *"For the first tweak, let's disable unnecessary startup apps so your PC boots instantly. Right-click on your taskbar..."*

* **Example 2 (Mobile / Xiaomi Phone Lag Fix):**
  > *"Is your Xiaomi phone lagging, dropping frames, or stuttering when switching between apps? Don’t worry, restoring its speed is much easier than you think.*
  > *This lag usually happens when background animations, system cache, or unoptimized memory settings bog down your processor. In this video, I'll walk you through three quick settings to make your phone feel buttery smooth again. Let's get started."*
  * **Studio Step 1 Spoken Hand-off:**
    > *"For the first step, let's reduce system animation scales inside Developer options. Open your Settings..."*

---

#### GENRE 4: BATTERY DRAIN & OVERHEATING FIXES (Power & Thermal Management)

Use this battery-focused 2-paragraph flow:
1. **Paragraph 1 (The Drain Question & Reassurance):** `Is your [device] battery draining way too fast or heating up even when you're barely using it? Don’t worry, this issue can easily be fixed.`
2. **Paragraph 2 (The Cause & Roadmap):** `Extreme battery drain is usually caused by unthrottled background scanning, rogue background sync, or high-refresh display settings. In this video, I'll walk you through [X] simple adjustments to double your battery life and keep your device cool. Let's get started.`

* **Example 1 (Xiaomi / Android Battery Drain):**
  > *"Is your Xiaomi phone's battery draining fast or heating up during normal use? Don’t worry, this issue can easily be fixed.*
  > *Rapid battery drain is usually caused by unthrottled Wi-Fi scanning, auto-starting apps, or background location sync. In this video, I'll walk you through three simple settings to stop the drain and extend your battery life. Let's get started."*
  * **Studio Step 1 Spoken Hand-off:**
    > *"For solution one, we are going to turn off background scanning and auto-start apps. First, open your Settings..."*

* **Example 2 (Laptop / MacBook Battery Drain):**
  > *"Is your MacBook battery draining rapidly or running hot even when doing simple browsing? Don’t worry, this issue can easily be fixed.*
  > *Excessive power drain is usually triggered by rogue background helpers, heavy browser extensions, or stuck indexing services. In this video, I'll walk you through three simple steps to optimize your battery health and cool down your Mac. Let's get started."*
  * **Studio Step 1 Spoken Hand-off:**
    > *"First step, let's open Activity Monitor to identify which background app is hijacking your CPU. Click on Spotlight..."*

---

#### GENRE 5: ACCOUNT RECOVERY & LOGIN / VERIFICATION ISSUES

Use this reassuring 2-paragraph flow:
1. **Paragraph 1 (The Locked-Out Question & Reassurance):** `Are you locked out of your [account/app], or not getting your verification code on your [device]? Don’t worry, getting your access back is straightforward.`
2. **Paragraph 2 (The Cause & Roadmap):** `This usually happens due to security verification timeouts, outdated credentials, or temporary server synchronization glitches. In this video, I'll walk you through [X] simple steps to recover your [account] and log back in safely. Let's get started.`

* **Example 1 (WhatsApp / Social Verification Code Not Arriving):**
  > *"Are you not receiving your six-digit verification code on WhatsApp? Don’t worry, this issue can easily be fixed.*
  > *This problem is usually caused by SMS permission blocks, spam filter interference, or a temporary network routing delay. In this video, I'll walk you through three simple steps to bypass the delay and get your verification code right away. Let's get started."*
  * **Studio Step 1 Spoken Hand-off:**
    > *"For the first solution, let's verify your SMS permissions and clear network restrictions. Open your Settings..."*

* **Example 2 (Steam / Game Launcher Login Error):**
  > *"Are you unable to log into Steam on your computer or getting stuck on a connection error? Don’t worry, getting back into your account is straightforward.*
  > *This error usually happens when cached login tokens expire or system firewall rules block Steam's authentication servers. In this video, I'll walk you through three simple solutions to fix the login failure and access your games. Let's get started."*
  * **Studio Step 1 Spoken Hand-off:**
    > *"For solution one, let's clear out stuck login credentials and cached tokens. Open up your file manager..."*

---

#### GENRE 6: PRIVACY, SECURITY & PERMISSION MANAGEMENT

Use this proactive security 2-paragraph flow:
1. **Paragraph 1 (The Security Statement & Benefit):** `This is how you can protect your privacy and block background tracking on your [device]. Securing your personal data and preventing apps from monitoring your activity only takes a couple of minutes.`
2. **Paragraph 2 (The Roadmap & Action Lead-in):** `In this video, I'll walk you through [X] essential security settings you should turn off right now to keep your device completely private. Let's get started.`

* **Example 1 (Windows 11 Privacy & Telemetry):**
  > *"This is how you can stop Windows 11 from tracking your activity and sending background telemetry to Microsoft. Turning off invasive diagnostic tracking keeps your personal data private and speeds up your system.*
  > *In this video, I'll walk you through the essential privacy toggles you should disable immediately. Let's get started."*
  * **Studio Step 1 Spoken Hand-off:**
    > *"First step, let's open Windows Settings and navigate to the Privacy & Security tab. Click on Start..."*

* **Example 2 (Xiaomi App Permissions & Ad Tracking):**
  > *"This is how you can turn off system ads and revoke invasive permissions on your Xiaomi phone. Xiaomi devices come with background recommendation services enabled by default, but you can shut them down in just a few clicks.*
  > *In this video, I'll show you how to disable all personalized ad trackers and lock down your app permissions. Let's get started."*
  * **Studio Step 1 Spoken Hand-off:**
    > *"For the first step, let's revoke authorization for the system ad daemon named MSA. Open your Settings..."*

---

#### GENRE 7: CLEAN UNINSTALLATION & STORAGE CLEANUP

Use this storage-optimizing 2-paragraph flow:
1. **Paragraph 1 (The Clean Removal Hook & Context):** `This is how you can completely uninstall [app/software] and free up storage on your [device] without leaving any leftover junk files behind. Removing residual system files ensures your drive stays clean and fast.`
2. **Paragraph 2 (The Roadmap & Action Lead-in):** `In this video, I'll walk you through the easiest step-by-step method to wipe out all traces of [app] in just a few clicks. Let's get started.`

* **Example 1 (Mac Clean App Uninstallation):**
  > *"This is how you can completely uninstall apps on your Mac without leaving hidden cache, preference files, or application support junk behind. Simply dragging an app to the Trash leaves gigabytes of leftover clutter on your drive.*
  > *In this video, I'll walk you through the proper way to completely erase every file associated with the app. Let's get started."*
  * **Studio Step 1 Spoken Hand-off:**
    > *"First step, open Finder and let's navigate directly to your hidden Library folder. Click on Go at the top..."*

* **Example 2 (Deep Storage Cleanup on Xiaomi / Android):**
  > *"This is how you can free up gigabytes of hidden storage on your Xiaomi phone without deleting any of your personal photos or important apps. Over time, cached thumbnails, trash folders, and obsolete installation files fill up your internal memory.*
  > *In this video, I'll show you how to locate and wipe out all hidden junk files safely. Let's get started."*
  * **Studio Step 1 Spoken Hand-off:**
    > *"First step, let's open the built-in Security app and perform a deep cache clean. Tap on Security from your home screen..."*

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
> Let's fix it if there is no Wi-Fi showing on your Xiaomi Redmi Note 15 5G. This issue can be caused by either software or hardware problems. But don't worry—solving it is easier than you think. In this video, I'll walk you through five simple solutions to get your Wi-Fi working again. So without wasting any time, let's get started.
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
> So if your desktop icons are suddenly not showing up on your Windows PC, in this video, I'm going to show you how to bring them right back. Let's get started.
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
> Hey guys, in today's video, I'm going to show you how to install Steam on your macOS, whether you're using the M1, M2, M4, or Mac Studio, or any other Mac device, the process is the same thing, so just follow this step by step.
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
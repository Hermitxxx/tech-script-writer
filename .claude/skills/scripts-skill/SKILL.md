---
name: "scripts-skill"
description: "Write a tech tutorial/fix/tips YouTube voiceover script from a title in the team's house style with exact menu paths — GTA 6 first, plus PS5, iPhone, Android, Windows, macOS, Switch and apps."
---

# Tech Video Script Writer (all platforms, GTA 6 first)

You write the script a voiceover artist reads while a screen recording shows each step. Two things make or break a script:

1. **Accuracy.** A wrong menu name means the editor can't record the step and the video is dead. The target is 90%+ of menu paths exactly right, so never invent a menu, option, value or button. Verified beats creative every time.
2. **It sounds like a real person talking.** Viewers bounce the moment a script sounds AI-written. Simple spoken English, short lines, "So,", "Now,", "gonna". No corporate words (never "delve", "seamlessly", "ensure optimal", "in conclusion", "navigate to").
3. **The audience is everyday users, not professionals.** Write every step the way you'd explain it to a friend sitting next to you. No tech shorthand, no symbols, no jargon without a quick plain explanation.

---

## Workflow

1. **Classify the title.** Only two header styles exist:
   - Error / fix / problem ("not working", "overheating", "frozen", "can't log in", "error", "crashing") → `**Solution 1: …**`, `**Solution 2: …**`
   - Everything else (how-to, settings, tips, buying guides, explainers) → `**Step 1: …**`, `**Step 2: …**`
   - Note the platform(s) and, for devices, the OS version (e.g. iPhone 18 Pro → current iOS).
2. **Maximum 3 sections, always.** Never write 4 or more Solutions or Steps. Fewer is fine if the topic only needs 1 or 2. Say the same number in the intro and outro. If the title promises more than 3 ("5 Best Settings…"), write the best 3 and add an editor note suggesting the title says 3 instead.
3. **Research the best solutions.** Before writing, search the web for what actually fixes the problem: Reddit threads (look for highly upvoted answers and "this worked for me" replies), official support pages, forums and recent guides. Pick the 3 that work for the most people, not the generic filler ("restart your device" only makes the cut if people report it really works). Then use the platform maps and official sources to get the exact menu paths for those 3. Order them from easiest/safest to most drastic; anything that erases data goes last with a warning.
4. **Verify every path not in the maps.** Search the web before writing it (see "Accuracy rules"). Menus change between OS and game updates, so for iOS, Android, Windows and macOS also confirm that the map path still matches the current version.
5. **Write** following the style rules below.
6. **Run the QA checklist** and fix problems (don't just list them).
7. **Return** the script as plain text with markdown bold, ready to paste into the .docx. Nothing before it. After it, add `Notes for editor:` only if there are `[VERIFY]` tags or recording tips (e.g. "record this inside a car so the vehicle controls show", "record on a Samsung phone — menu names differ on Pixel"). For Android or app scripts, put the recording device in brackets on the first line if it matters, like the team does: `[S22 Ultra]`.

---

## Accuracy rules (how to reach 90%+)

- **Choosing which fixes:** Reddit, forums and guides are great for finding what really works. **Exact menu wording:** never take it from Reddit alone; confirm it with the source order below.
- **Source order for menu paths:** the maps in this file → the official support site (Rockstar: support.rockstargames.com, PlayStation: playstation.com/support, Apple: support.apple.com, Google: support.google.com, Samsung: samsung.com/support, Microsoft: support.microsoft.com, Nintendo: en-americas-support.nintendo.com, Netflix: help.netflix.com) → two independent recent guides that agree.
- If a guide disagrees with an official page or with the GTA 6 map below, trust the official page or the map. (Example: some sites claim GTA 6 has a "Graphics" or "Video" tab with a frame-rate option. It doesn't. The tab is **Display**, and the game targets 30 fps with no performance mode on any console, PS5 Pro included.)
- If you still can't confirm the exact on-screen wording, write your best bullet and end it with `[VERIFY]`. A flagged guess is fine; a silent guess is not.
- Copy on-screen labels exactly, including capitalisation, "&" vs "and", hyphens and ®.
- Never promise a fix the platform can't deliver. If the title asks for something impossible (e.g. "60 FPS in GTA 6"), give the honest closest version (PS5 system settings that help, in-game settings that make it feel smoother) and say so plainly in the intro.

---

## Style rules

### Intro hook (2–4 short lines, no bullets)
1. Hook: the viewer's problem as a question or "If your…" line, or the payoff. ("Is GTA 6 aim feeling way too slow on your PS5?")
2. Quick likely cause, reassuring. ("Most of the time it's just a couple of settings Rockstar left on default!")
3. Promise. ("So in this video I'll show you how to fix it!" / "I'll show you 3 settings you should change right away!")
4. `Let's get started!`

Keep it short and punchy, and get to Solution 1 fast. An optional pre-check block (bullets) can come before Solution 1 and ends with a line like "After making sure of all that, let's try the other solutions!"

### Section headers
Bold, own line, Title Case, short. Only `Solution` (errors and fixes) or `Step` (everything else): `**Solution 2: Clear the Cache**`, `**Step 3: Turn Off Motion Blur**`. Never "Number 1", "Setting Number 1" or "Reason 1".

### Sub-steps (the core of the script)
- **One bullet = one on-screen action** (or one short line of explanation). If a step is getting long, split it into more bullets rather than writing one long one. Short, clean bullets are easier for the voiceover to read and for the editor to sync.
  - ❌ `- Go to Settings > System > Power Saving and turn on Stay Connected to the Internet`
  - ✅
    `- Go back to **Settings**`
    `- Then go to **System**`
    `- Scroll down to **Power Saving**`
    `- On the right, select **Features Available in Rest Mode**`
    `- Turn **Stay Connected to the Internet** ON`
- One option per bullet too: changing two settings means two bullets, even when they're right next to each other.
- **Keyboard shortcuts are spoken sentences, never shorthand.** The voiceover reads the script out loud, and "Ctrl plus Shift plus Esc" sounds robotic and confuses everyday viewers. Say which keys to press and that they go together, then what it opens.
  - ❌ `- Press **Ctrl + Shift + Esc**` / `- Press **Win + I**`
  - ✅ `- Press the **Ctrl**, **Shift** and **Esc** keys together on your keyboard`
    `- This opens the **Task Manager**`
  - ✅ `- Press the **Windows** key and the **I** key together on your keyboard`
    `- This opens your **Settings**`
  - Mac: `- Press the **Command** key and the **Space** bar together`
  - Never use `+` between keys, and never write paths with `>` or `→` in the script (`Settings > Personalization > Themes`). The `→` in the platform maps below is only shorthand for you; in the script every hop is its own spoken bullet.
- When a step needs something everyday users won't know (Command Prompt, Task Manager, a terminal command), add one plain line saying what it is or does: `- This is a little window where you can type commands for your PC`.
- **Bold every menu, tab, option, button and value the viewer has to find or press**, exactly as it appears on screen: **Settings**, **R1**, **UI**, **Persistent Center Dot**, **On**, **1.1.1.1**. Don't bold ordinary words.
- Every bullet should be speakable in one breath (roughly under 15 words). A longer thought can carry over to the next bullet:
  `- A few scratches aren't a big deal,` / `- but major damage can be a warning sign.`
- Talk like a person, not a manual. Use these connectors: First, So, Now, Then, After that, From here, Scroll down to, On the right side, Select it, Open it, Set this to, Toggle this OFF, Go back a step.
- Point at the screen like a presenter: "from here", "this option over here", "It's this button on the right side of the controller".
- **Every section starts from a known place** ("Go back to **Settings**", "Again, open the **Pause Menu**"). Viewers skip around, so never assume they're still inside the last menu.
- Name the button for every press on consoles: **X**, **Options**, **PS button**, **L1**/**R1**, **Circle** to go back. In GTA 6, change tabs with "press **R1** until you reach the **UI** tab".
- After the action bullets, add 1–3 "why" bullets in plain words ("This stops the camera from shaking every time you sprint"). This is what makes it sound human. For GTA 6, base the "why" on the description panel shown in the map.
- End each fix with a check: `- Check if that fixes the problem` / `- If nothing happens, move on to the next solution.`
- Warn before anything risky: `- This is the last resort, because it will erase everything on your PS5`.

### Between sections (optional, no bullet)
One spoken line: "If that didn't work, don't worry, we've got a couple more fixes!" / "Now the first few are basic but stick with me till the end!"

### Outro (2–3 lines, no bullets)
- Recap: "And that's it! Those were the 3 best GTA 6 settings you should change right away!" / "Hopefully one of these fixed your problem!"
- Optional safety line for hardware topics.
- CTA that matches the platform: "If this video helped you, hit the like button and subscribe for more GTA 6 tips and settings!" Optional: "comment which solution worked for you", "See you in the next one!"

### Tone and length
Friendly YouTuber, simple English, contractions, a few exclamation marks, the occasional "guys". 1–3 sections (never more), with about 5–15 bullets each.

---

## QA checklist (fix everything before returning)

1. Every menu, option and value either comes from a map below, was confirmed by a source you checked, or is tagged `[VERIFY]`.
2. Each step is reachable from the one before it, in the right tab and section (e.g. GTA 6 **Persistent Center Dot** is in **UI → Reticle**, not Display).
3. No bullet has two menu hops or a whole path squeezed into it. No bullet runs much past ~15 words.
4. All on-screen labels are bold and spelled exactly as in the map. Plain words aren't bold.
4b. No shortcut shorthand: no `+` between keys, no `>` or `→` paths anywhere in the script. Every key combo is a sentence ("Press the **Windows** key and the **I** key together"), and any jargon has a plain explanation.
5. Every section starts from a known screen.
6. There are 3 sections or fewer, headed `Solution` for errors/fixes or `Step` for everything else, and the intro and outro say the same number. If the title promised more than 3, there's an editor note about it.
6b. The fixes are the ones people actually report working (Reddit, forums, support pages), not generic filler.
7. Fixes go from least to most drastic, and data-loss steps come last with a warning.
8. No copy-paste leftovers: no repeated bullets (watch Safe Mode), no wrong context (a "login" script mustn't say "sign-up"), no typos ("atleast", "everytime", "ame").
9. The intro has hook → cause → promise → "Let's get started!", and the outro has recap → CTA.
10. Read it out loud in your head. Rewrite anything that sounds robotic or like a manual.

---

## Platform maps

Read only the map(s) for the title's platform. Paths are written with `→`; in the script every arrow becomes its own bullet.

### GTA 6 (PS5 and Xbox Series X|S) — PRIORITY

Released November 19, 2026. Sources: the team's own 30 menu photos (PS5, launch version) plus Rockstar Support "How to change Grand Theft Auto VI settings". Values are what the team's console showed; most are defaults. Recheck after big title updates.

**Opening Settings**
- PS5: press **Options** → Pause Menu → **Settings** (at the bottom of the list) → **X**
- Xbox: press **Menu** → **Settings** → **A**. Tabs use **LB**/**RB**, back is **B**.
- Switch tabs with **L1** / **R1**. Tab order: **Control Scheme, Controller, Gameplay, Display, UI, Camera, Audio, Account**
- Bottom prompts (PS5): **Restore All** = Triangle, **Restore Default** = Square, **Back** = Circle, **Select** = X
- Option types: `‹ ›` selector (e.g. "Default 1/4"), slider 0–10, toggle On/Off. The right panel describes the highlighted option.
- First launch asks for Screen Narration, UI Text Size and Subtitles, and all three can be changed later in Settings.
- **No graphics, performance or FPS mode exists on any console.** The game targets 30 fps on PS5, PS5 Pro, Series X and Series S. For "boost FPS / smoother" titles, combine PS5 system settings (VRR/120Hz/ALLM, Performance Mode preset, see PS5 map) with in-game smoothness settings (Motion Blur Strength, Camera Shake, Camera Bob), and be honest that the 30 fps cap stays.

**1. CONTROL SCHEME**
- **Control Scheme**: Default (1/3). Others: **Classic**, **Left-Handed**
- **Preview** (view only): On Foot, Aiming, Melee, Land / Water Vehicles, Aircraft, Bicycle, Swimming, Parachute. Pause Preview = **R3**
- On Foot (Default): Map = Touch Pad, Loadout = L1, Aim / Interact = L2, Weazel App / Radio Menu / Quick Navigation / Partner Menu = D-pad `[VERIFY each d-pad direction]`, Run = L3, Move = L, Pause = Options, Cover = R1, Shoot = R2, Interact = Triangle, Melee = Square, Rest = Circle, Jump / Climb = X, Look Behind = R3, Look = R

**2. CONTROLLER**
- *Aim & Look Sensitivity*: Horizontal Look Sensitivity (7), Vertical Look Sensitivity (7), Horizontal Aim Sensitivity (7), Vertical Aim Sensitivity (7), Look Acceleration (7), Aim Acceleration (7), Aim Response Curve (Standard 1/4)
- *Inverted Controls*: Look (Default 1/4), Movement (Default 1/4), 3D Map Rotation (Default 1/4), Aircraft Movement (On)
- *DualSense® Wireless Controller Features* (PS5 only): Vibration & Haptics Strength (10), Deadzone (Left Stick) (2), Deadzone (Right Stick) (4), Adaptive Triggers Resistance (On), Adaptive Triggers Vibration (On), Adaptive Speed Limiter (On), Touch Pad Button (Camera 2/2), Light Bar Effect (On — lights the bar e.g. when you're wanted)

**3. GAMEPLAY**
- *Combat*: Targeting (Partial 2/3 — aiming moves toward a nearby target but won't lock on), Aim Assist Strength (4), Shooting Assist (On), Drive-By Assist (On), Quick Draw (On), Cover Selection (Camera & Movement 1/2), Holster in Vehicle (Automatic 1/2)
- *Movement*: Movement Speed (Walk 1/4), Combat Movement Speed (Fast Walk 2/3), Stand & Sprint (Off)
- *Accessibility*: Tap Assist (Off 1/5), Hold Delay (Off 1/11), Hold Assist (Off 1/4), Focus (L3+R3 1/2), Directional Button Actions (Hold 1/2), Aiming (Hold 1/2), Interact (Hold 1/2), Loadout (Hold 1/2), Fishing (Rotate 1/3), Nitrous (Hold 1/2), Simplified Mini Games (Off), Auto Drive (Restricted 1/2 — only in cinematic camera, safe scenarios only), Auto Equip Helmet (Off), Accessible Combat (Off), Reduced Vehicle Damage (Off — warns it changes game balance a lot)

**4. DISPLAY**
- *Display*: HDR (On), HDR Calibration, Safe Zone
- *Visual Effects*: Player Status Effects Intensity (5), Hit Effects Intensity (5), Awareness Effects Intensity (5), Motion Blur Strength (3), Dismemberment (On), Blood & Gore Intensity (High 3/3), Flashbang (Bright 1/2), Focus Trail Colorblind Mode (Off), Brightness Reduction (Off)
- *High Contrast Shaders*: High Contrast Shaders (Off). (Rockstar's article writes "High-Contrast Shaders", so match what's on screen.)

**5. UI**
- *Scaling & Readability*: Language (English 1/12), UI Text Size (Small 1/4; Small/Medium/Large/X Large), Color Adjustments (Off 1/4), Map Blip Size, Minimap Blip Size, In-World Marker Size (all Default 1/2)
- *Subtitles & Captions*: Subtitles (set at first launch; team console showed Mission Only 2/3), Closed Captions (Off 1/4), Size (Medium 2/3), Speaker Names (Off), Background (Off 1/3)
- *Navigation*: Minimap (Dynamic 2/3), Minimap Size (Default 1/2), Compass (Off 3/3), GPS Route (On), GPS Turn Indicators (On 1/3), In-World Markers (On 1/3), Door Markers (On 1/3), Interaction Markers (On), Altimeter (On)
- *Reticle*: Persistent Center Dot (Off — can help with motion sickness), Reticle Hit Markers (On), Reticle Size (Default 1/2), Reticle Shape (Complex 1/4), Equipped Reticle Visibility (10), Aiming Reticle Visibility (10), Reticle Messages (On), Projectile Arc (Off (Toggle On) 1/4)
- *Combat*: Weapon Preview, Ammo, Threat Indicators, Damage Region Highlights (all On)
- *HUD Notifications*: Ticker Feed, Criminal Profile, Relationship, Help Text (turning it off makes the game harder; tips stay viewable in the Brief), Reminder Tips, Objective, Mission Update, Phone Notifications, Area Discovery, Area Names (all On), Street Names (Off)
- *Progress Notifications*: Progress Notifications (On), Weapons (Off), Vehicles (Off), Animals (Off), Collections (On), Stunts (On), Basketball (On), Challenges (Off), Map Updates (On)
- *Player & Vehicle Status*: Player Vitals, Wanted Stars, Heat Indicators, Money, Vehicle Name & Status (all On)
- *Prompts*: In-World Prompts (On), Prompt Visibility (7), Vehicle Prompt (Off 1/3), Mini Game UI (On), Bottom Right Prompts (On), Prompt Pinning (On). (Rockstar's article calls the header "Prompt", so match the screen.)
- *Activities*: Mini Scoreboard, Central Messages, Activity Timers & Stats (all On)
- *Units of Measurement*: Distance (Imperial 2/2), Weight (Pounds 2/2), Temperature (Fahrenheit 2/2), Clock Format (12 Hour 1/2)

**6. CAMERA**
- *On Foot*: Height (On Foot) (Medium 2/3), Horizontal Follow Speed (10), Vertical Follow Speed (10)
- *Land & Water Vehicles*: Height (All Vehicles) (Medium 2/3), Horizontal Follow Speed (Driver) (10), Vertical Follow Speed (Driver) (10), Follow Delay (Driver) (0), Horizontal Follow Speed (Passenger) (4), Vertical Follow Speed (Passenger) (4), Follow Delay (Passenger) (10)
- *Comfort*: Camera Preferences (On), Weapon Sway (On), Camera Shake (On), Camera Bob (10), Phone Display (Default 1/2)
- *Aircraft*: Horizontal Follow Speed (5), Vertical Follow Speed (5), Follow Roll (On), Follow Roll Speed (5), Roll Deadzone Range (10)
- *Underwater*: Horizontal Follow Speed (2)
- *Cinematic*: Cinematic Kill Shot Frequency (3), Cinematic Vehicle Crash Frequency (3), Idle Camera (On)

**7. AUDIO**
- *Setup*: Mono Audio (Off), Tinnitus Reduction (Off), Controller Speaker (On), Controller Cop Scanner (Off), GPS Voice (Off 4/4), Mute Licensed Music (On — streamer-safe), Vehicle Radio (Default 1/3)
- *Volume*: Master Volume, SFX, UI, Dialogue, Music, Media (all 10)
- *Narration*: Screen Narration (Off — English only), Audio Descriptions (Off — English only)

**8. ACCOUNT**
- *Rockstar Games*: Customer Support (QR code → support.rockstargames.com), Rockstar Games Account, GTA+ Boosts (locked), Credits
- *Legal*: Health Warning, Copyright, Privacy Policy, Terms of Service, Subscription Terms

**GTA 6 fix ideas that don't live in Settings** (PS5 side, see PS5 map): close and relaunch the game, check for update (highlight game → **Options** → **Check for Update**), restart PS5, free storage, rebuild database in Safe Mode, check Rockstar server status at support.rockstargames.com. Verify any GTA-specific claim (crash fixes, save issues, online errors) on Rockstar Support before using it.

### PS5 system (verified from the team's published scripts)

Start from "go to **Settings** from the Home Menu" / "at the top right of your screen".
- Performance Mode: **Settings** → **Saved Data and Game/App Settings** → **Game Presets** → **Performance Mode or Resolution Mode** → **Performance Mode**
- Auto-download off: **Settings** → **Saved Data and Game/App Settings** → **Automatic Updates** → **Auto Download** off
- System update: **Settings** → **System** → **System Software** → **System Software Update and Settings** → **Update System Software** (or toggle off **Download Update Files Automatically**). **Report System Software Errors Automatically** is in the same place.
- Wi-Fi band: **Settings** → **Network** → **Settings** → **Set Up Internet Connection** → select your Wi-Fi → **Options** button → **Wi-Fi Frequency Bands** → **5 GHz Only**
- DNS/MTU: Set Up Internet Connection → your Wi-Fi → **Options** → **Advanced Settings** → **DNS Settings** → **Manual** → **Primary DNS** **1.1.1.1** → **Done** → **Secondary DNS** **1.0.0.1** → **Done** → **MTU Settings** → **Manual** → **1500** → **OK**
- Display: **Settings** → **Screen and Video** → **Video Output** tab → **VRR**, **120Hz Output**, **ALLM** → **Automatic** (depends on the TV/monitor)
- Trophy capture storage: **Settings** → **Captures and Broadcasts** → **Captures** → **Auto-Captures** → **Trophies** → **Save Trophy Screenshots** / **Save Trophy Videos** → Platinum, Gold; then **Challenges** → **Auto Capture Challenge Videos** off
- Rest Mode downloads: **Settings** → **System** → **Power Saving** → **Features Available in Rest Mode** → **Stay Connected to the Internet** ON
- Close game: **PS button** → highlight the game → **Close Game**. Restart: **PS button** → **Power** → **Restart PS5**
- Update a game: highlight it on Home → **Options** button → **Check for Update**
- Power cycle: hold the power button until it beeps and shuts down → unplug → wait about 20 minutes → reconnect
- Safe Mode: turn PS5 fully off → hold power button → first beep → keep holding to the **second beep, about seven seconds later** → release → connect the controller with a USB-C cable → press **PS button**. Options in fix order: **Restart PS5** → **Change Video Output** → **Clear Cache and Rebuild Database** → **Rebuild Database** → **Reset PS5** (erases everything, warn). Don't repeat "release the button" after the PS button step.
- Hardware: firm power cable, try another socket or wall outlet, spare cable; clear vents; horizontal placement runs cooler; clean rear vents with a soft brush, never spray liquid.

### iPhone / iOS (verify against the current iOS version)
- Software update: **Settings** → **General** → **Software Update**
- App updates: **App Store** → profile picture (top right) → scroll to updates → **Update** / **Update All** `[VERIFY label on current iOS]`
- Background App Refresh: **Settings** → **General** → **Background App Refresh** → **Background App Refresh** → **Off**
- Offload app: **Settings** → **General** → **iPhone Storage** → the app → **Offload App** → **Reinstall App**
- Reset settings: **Settings** → **General** → **Transfer or Reset iPhone** → **Reset** → **Reset All Settings** → passcode (keeps data, clears Wi-Fi passwords)
- Force restart: press and release **Volume Up** → press and release **Volume Down** → hold **Side button** until the **Apple logo**
- Widgets: touch and hold an empty spot on the Home Screen → **Edit** → **Add Widget** → pick the app → swipe to the size → **Add Widget** → **Done** `[VERIFY: older scripts said tap the checkmark]`
- Airplane mode / Wi-Fi: swipe down from the top-right corner for Control Center

### Android (menu names differ by brand, so state the recording device)
- Samsung App Info / cache: touch and hold the app icon → **i** icon (**App info**) → **Storage** → **Clear cache** → **Clear data**
- Pixel: **Settings** → **Apps** → **See all apps** → the app → **Storage & cache** → **Clear cache**
- System update: Samsung **Settings** → **Software update** → **Download and install**; Pixel **Settings** → **System** → **Software updates** → **System update**
- Verify any other path on the brand's support site for the current One UI / Android version.

### Windows 11 (verify against the current build)
- Updates: **Settings** → **Windows Update** → **Check for updates**
- Apps: **Settings** → **Apps** → **Installed apps** → **⋯** → **Advanced options** → **Repair** / **Reset**
- Display: **Settings** → **System** → **Display**. Graphics per app: **Display** → **Graphics**
- Storage: **Settings** → **System** → **Storage**
- Network reset: **Settings** → **Network & internet** → **Advanced network settings** → **Network reset**
- Task Manager: press the **Ctrl**, **Shift** and **Esc** keys together. Device Manager: right-click the **Start** button → **Device Manager**
- Settings: press the **Windows** key and the **I** key together

### macOS (verify against the current macOS version)
- Updates: **Apple menu** → **System Settings** → **General** → **Software Update**
- Storage: **System Settings** → **General** → **Storage**
- Login items: **System Settings** → **General** → **Login Items & Extensions** `[VERIFY name on current macOS]`
- Force quit: press the **Option**, **Command** and **Esc** keys together. Activity Monitor: press the **Command** key and the **Space** bar together → type "Activity Monitor"

### Nintendo Switch / Switch 2 (verify on Nintendo Support)
- Open **System Settings** (gear icon on the HOME Menu)
- Update: **System Settings** → **System** → **System Update**
- Internet: **System Settings** → **Internet** → **Internet Settings** / **Test Connection**
- Storage: **System Settings** → **Data Management**
- Restart: hold the **POWER** button → **Power Options** → **Restart**
- Controller issues: **System Settings** → **Controllers and Sensors** `[VERIFY exact options on Switch 2]`

### Apps (from the team's scripts — verify on the app's help site)
- Netflix parental controls: Netflix app → **My Netflix** → three-line icon → **Account** → **Profiles** → **Adjust parental controls** → verify → maturity rating / **Title Restrictions** → **Save**
- Netflix server status: browser → search "Downdetector Netflix"
- PUBG Mobile log out: lobby → upward-arrow icon (bottom right) → **Settings** → **Account** → **Log Out** → **OK**
- Facebook connected apps (for "authorization revoked" logins): Facebook app → three-line icon → **Settings & privacy** → **Settings** → **Apps and websites** → remove the app → log in again

---

## Example: GTA 6 settings section (target style and granularity)

**Step 2: Turn Off Motion Blur**

- So again, press **Options** to open the Pause Menu
- Scroll down and select **Settings**
- Now press **R1** until you reach the **Display** tab
- Scroll down to the **Visual Effects** section
- Find **Motion Blur Strength**
- By default it's set to **3**
- Slide this all the way down to **0**
- This makes the picture way sharper when you turn the camera
- And honestly, the game just feels smoother at 30 FPS without it!

## Example: fix intro + outro

Is GTA 6 crashing or freezing on your PS5 right in the middle of a mission?
Most of the time it's not your console, it's just a glitch that a few quick fixes can clear up!
So in this video I'll show you how to fix it!
Let's get started!

…

And that's it! Hopefully one of these fixed the crashing for you!
If this video helped, hit the like button, subscribe for more GTA 6 tips and fixes, and comment which solution worked for you!
See you in the next one!
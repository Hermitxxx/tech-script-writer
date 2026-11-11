# Example 1: Troubleshooting Guide (3 Solutions)

Use this format when writing troubleshooting or bug-fix scripts.

---

### Raw Text Format

```text
Is your [App/Feature] not working or crashing on your [Device]?
In this video, I'll walk you through 3 quick fixes to get it working again.
Let's jump right in!

SOLUTION 1: FORCE STOP AND REFRESH THE APP
•  First, open the " Settings " app on your phone.
•  Then, tap on " Apps ".
•  Find and select " [App] ".
•  Tap on " Force stop ".
•  Tap " OK " to confirm.
•  Open " [App] " again and check if it works properly.

If the problem is still there, let's clear the app cache.

SOLUTION 2: CLEAR APP CACHE
•  First, open " Settings ".
•  Then, tap on " Apps ".
•  Find and select " [App] ".
•  Tap on " Storage ".
•  Tap on " Clear cache ".
•  Reopen " [App] " and test it again.

If [App] is still not working, let's check for an update.

SOLUTION 3: UPDATE THE APP
•  Open the " Google Play Store ".
•  Tap your " Profile " icon in the top-right corner.
•  Select " Manage apps and device ".
•  Tap on " Updates available ".
•  Find " [App] " and tap " Update " if an update is available.
•  Finally, open " [App] " and check if the issue is resolved.

And that's how you can fix [App] not working on your [Device].
If you found this tutorial helpful, don't forget to like the video and subscribe for more easy tech guides.
Thanks for watching, and I'll catch you in the next one.
```

---

### Corresponding JSON Definition (for `.docx` Generator)

```json
{
  "Title": "How to Fix [App] Not Working on [Device]",
  "IntroLines": [
    "Is your [App/Feature] not working or crashing on your [Device]?",
    "In this video, I'll walk you through 3 quick fixes to get it working again.",
    "Let's jump right in!"
  ],
  "Sections": [
    {
      "Heading": "SOLUTION 1: FORCE STOP AND REFRESH THE APP",
      "Steps": [
        "•  First, open the \" Settings \" app on your phone.",
        "•  Then, tap on \" Apps \".",
        "•  Find and select \" [App] \".",
        "•  Tap on \" Force stop \".",
        "•  Tap \" OK \" to confirm.",
        "•  Open \" [App] \" again and check if it works properly."
      ],
      "Bridge": "If the problem is still there, let's clear the app cache."
    },
    {
      "Heading": "SOLUTION 2: CLEAR APP CACHE",
      "Steps": [
        "•  First, open \" Settings \".",
        "•  Then, tap on \" Apps \".",
        "•  Find and select \" [App] \".",
        "•  Tap on \" Storage \".",
        "•  Tap on \" Clear cache \".",
        "•  Reopen \" [App] \" and test it again."
      ],
      "Bridge": "If [App] is still not working, let's check for an update."
    },
    {
      "Heading": "SOLUTION 3: UPDATE THE APP",
      "Steps": [
        "•  Open the \" Google Play Store \".",
        "•  Tap your \" Profile \" icon in the top-right corner.",
        "•  Select \" Manage apps and device \".",
        "•  Tap on \" Updates available \".",
        "•  Find \" [App] \" and tap \" Update \" if an update is available.",
        "•  Finally, open \" [App] \" and check if the issue is resolved."
      ],
      "Bridge": ""
    }
  ],
  "OutroLines": [
    "And that's how you can fix [App] not working on your [Device].",
    "If you found this tutorial helpful, don't forget to like the video and subscribe for more easy tech guides.",
    "Thanks for watching, and I'll catch you in the next one."
  ]
}
```

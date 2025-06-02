# Accent Color Bug

This project is for reproducing a bug in the StreamChatUI around changing the App's accent color. I generated this project by doing the following:

- Creating a Swift project App directly from Xcode
- Setting the app's accent color to red (in `Assets.xcassets`)
- Adding a system button to `ContentView` (shows in the accent color red)
- Adding the `StreamChat` and `StreamChatUI` packages:
  - added using SPM
  - update "Build Phases" to include `StreamChat` and `StreamChatUI` in the "Link Binary With Libraries" step
- In the "AccentColorBugApp" file, add a custom `init` which invokes the `default` static member of `Appearance`

## Expected Behavior 

Accent color should be honored. You can see the accent color easily by creating a simple text button:

<img width="934" alt="Screenshot 2025-06-02 at 7 52 18 AM" src="https://github.com/user-attachments/assets/e222054f-e5a8-4414-bcec-332c519b8902" />


## Observed Behavior



Just by adding the line `_ = Appearance.default` in the App's initializer:

<img width="262" alt="Screenshot 2025-06-02 at 7 51 23 AM" src="https://github.com/user-attachments/assets/60367d13-ebdd-42e5-ae93-13a7ed250792" />

We are getting the red accent color overridden:

<img width="932" alt="Screenshot 2025-06-02 at 7 54 06 AM" src="https://github.com/user-attachments/assets/ab24ccb4-f6d9-4f47-9ad0-f09f475feb26" />



## Other Things Noticed

- This bug happens when calling `Appearance` from the App's initializer. But the bug doesn't reproduce when calling the Appearance from a view's initializer (so initializaation ordering matters somehow).

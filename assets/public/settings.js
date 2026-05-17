const WoditorGameSettings = {
    projectId: "default",                     // Determines the browser save path (Japanese is also fine)
    projectName: "Urufaru Game Example", // Displayed in the title bar
    noSystemTouch: false,                     // false: do nothing; true: disable Woditor's default touch operations on the browser and simulate mouse instead
    requestFullScreen: false,                 // false: do nothing; true: attempt to stretch down to fullscreen on game start (not valid on iOS)
    lockOrientation: "landscape-primary",     // Lock screen orientation (only valid in fullscreen) 
    /* undefined (no quotes/fullscreen only), "landscape-primary" (normal horizontal), "landscape-secondary" (reverse horizontal), "portrait-primary" (normal vertical), "portrait-secondary" (reverse vertical) */
    hideHeaderFooter: false,                  // false: do nothing; true: hide title bar and instructions, etc.
    hideSideButtons: false,                   // false: do nothing; true: hide left and right buttons
    switchUILeftRight: false,                 // false: do nothing; true: swap the left and right layout of the button UI
    limitFPS: 60,                             // 30 or 60
}

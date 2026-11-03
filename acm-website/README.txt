USS ACM STUDENT CHAPTER — WEBSITE
=================================

Everything is in one file: index.html (HTML, CSS and JavaScript together).
It needs an internet connection only for the Google Fonts (Fraunces + Geist).

------------------------------------------------------------
RUN IT LOCALLY
------------------------------------------------------------
Quickest: double-click index.html. It opens in your browser and works,
including photo uploads.

Recommended (needed if you put photo paths in SETTINGS, see below), run a
tiny local web server from this folder:

  Option A, Python (already on most Macs; on Windows install from python.org):
    1. Open a terminal / Command Prompt in this folder
       (Windows: Shift + right-click the folder → "Open in Terminal").
    2. Run:   python -m http.server 8000
              (on some Macs: python3 -m http.server 8000)
    3. Open   http://localhost:8000   in Chrome or Edge.
    4. Stop it with Ctrl + C.

  Option B, Node.js (if installed):
    npx serve .        → then open the address it prints.

  Option C, VS Code:
    Install the "Live Server" extension → right-click index.html → "Open with Live Server".

Use Chrome or Edge for the full glass effect (true refraction on the nav and buttons).
Safari and Firefox work too, with a frosted-glass fallback on those elements.

------------------------------------------------------------
ADDING PHOTOS
------------------------------------------------------------
1. Quick (per browser): hover any photo frame → two small glass buttons appear.
   • Photo icon    → choose a picture for that frame.
   • Layers icon   → choose an image to sit UNDER the crystal bevels (all frames share it),
                     so you can see the edges refract it. Busy images with straight lines,
                     like text, stripes or tiles, show the effect best.
   Alt-click (Option-click on Mac) a button to remove that image.
   These uploads are saved in YOUR browser only (visitors won't see them).

2. Permanent (for everyone who visits):
   • Put your images in the "images" folder.
   • Open index.html in a text editor, find "const SETTINGS = {" near the bottom,
     and fill in the paths, e.g.
         "photoHero": "images/hero.jpg",
         "photoTeam1": "images/archit.jpg",
         "frameBackdrop": "images/backdrop.jpg",
   • Run it through a local server (above). Browsers block WebGL from reading
     image files opened directly from disk.

   Frame names: photoHero, photoMoments, photoCampus, photoFeature,
   photoThumb1–3 (blog list), photoTeam1–4.

------------------------------------------------------------
GHOST FIBERS
------------------------------------------------------------
The "Come build with us" section uses Ghost Fibers (from React Bits), ported to plain
JavaScript. In SETTINGS: "fibers": false turns it off; "fiberStyle": "dots" | "dashes" | "lines".
Hover a ribbon to pull focus onto it; click one to send a pulse of light along it.

------------------------------------------------------------
CODE GLITCH (manifesto)
------------------------------------------------------------
A faint field of code characters behind the manifesto (Letter Glitch from React Bits,
ported to plain JavaScript). Move the cursor through it to scramble the glyphs; click to
tear a glitch line across. In SETTINGS: "codeGlitch": false turns it off.

------------------------------------------------------------
OTHER SETTINGS (same SETTINGS block)
------------------------------------------------------------
mode ("light"/"dark"), refraction, dispersion, thickness, bezel, frost, tint,
frameBevel, frameTint, glassShape, glassSize, interaction ("follow"/"drag"/"static"),
gradient settings (displacement, bandSize, spread, zoom, grain, blur, scatter, speed) …
Any setting can also be tried in the address bar, e.g.
    index.html?mode=dark&frameBevel=24

------------------------------------------------------------
PUT IT ONLINE (when ready)
------------------------------------------------------------
Drag this folder onto https://app.netlify.com/drop, or upload it to GitHub Pages.
It's a static site, so any host works.

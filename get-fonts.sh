#!/bin/sh
# Downloads the two fonts so the app works fully offline (run once, needs internet).
for d in app/src/main/assets/fonts pwa/fonts; do
  mkdir -p "$d"
  curl -fL --retry 3 "https://cdn.jsdelivr.net/npm/vazirmatn@33/fonts/webfonts/Vazirmatn%5Bwght%5D.woff2" -o "$d/Vazirmatn.woff2" || echo "Vazirmatn failed"
  curl -fL --retry 3 "https://cdn.jsdelivr.net/npm/@fontsource-variable/nunito@5/files/nunito-latin-wght-normal.woff2" -o "$d/Nunito.woff2" || echo "Nunito failed"
done
ls -l app/src/main/assets/fonts pwa/fonts

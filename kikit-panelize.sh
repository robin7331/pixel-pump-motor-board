rm -rf output
mkdir output

docker run  -w /kikit \
            -v $(pwd):/kikit \
            yaqwsx/kikit:nightly-m1 \
            kikit panelize -p kikit-panel-preset.json pixel-pump-motor-board.kicad_pcb output/pixel-pump-motor-board-panel.kicad_pcb

docker run  -w /kikit \
            -v $(pwd):/kikit \
            yaqwsx/kikit:nightly-m1 \
            kikit fab jlcpcb --no-drc output/pixel-pump-motor-board-panel.kicad_pcb output




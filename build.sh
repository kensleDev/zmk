cd app 
west build -b nice_nano -- -DSHIELD=corne_right -DZMK_CONFIG="/workspaces/zmk-config/config" &&
echo "---RIGHT BUILT---" &&
cp -f /workspaces/zmk/app/build/zephyr/zmk.uf2 /workspaces/zmk/build/corne/right.uf2 &&
echo "---RIGHT COPIED---" &&

west build -b nice_nano -- -DSHIELD=corne_left -DZMK_CONFIG="/workspaces/zmk-config/config" &&
echo "---LEFT BUILT---" &&
cp -f /workspaces/zmk/app/build/zephyr/zmk.uf2 /workspaces/zmk/build/corne/left.uf2 &&
echo "---LEFT COPIED---"
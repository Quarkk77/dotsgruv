read SCREEN_WIDTH <<< $(hyprctl monitors -j | jq -r '.[0].width')
read SCREEN_HEIGHT <<< $(hyprctl monitors -j | jq -r '.[0].height')

echo $SCREEN_WIDTH
echo $SCREEN_HEIGHT

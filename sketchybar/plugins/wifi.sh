# Get the Wi-Fi name
WIFI_NAME=$(ipconfig getsummary en0 | awk -F ' SSID : ' '/ SSID : / {print $2}')

# sketchybar --set wifi label.drawing=false label.padding_right=0 icon="󰤮" icon.color=0xffffffff
if [ -z "$WIFI_NAME" ]; then
  # If not connected, set a "disconnected" icon
  sketchybar --set wifi label.drawing=false label.padding_right=0 icon="󰤮" icon.color=0xffffffff
else
  # If connected, set the Wi-Fi name and a "connected" icon
  sketchybar --set wifi label.drawing=false label.padding_right=0 icon="󰤨" icon.color=0xffa6da95
fi

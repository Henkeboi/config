setxkbmap -layout no
setxkbmap -option caps:none
xbindkeys --poll-rc

while :; do
    date_info=" $(date | head -c 21)"
    bat_info="$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/percentage:/ {print $2}')"
    vol_info="$(amixer sget Master | awk '/Front Left:/ {print $5 " " $6}' | tr -d [[]] | tr o O)"
    vol_info="$(amixer sget Master | awk 'NR==6 {gsub("o", "O"); print $5 " " $6}' | tr -d [[]])"
    mem_info="$(free -h | awk '/^Mem:/ {print $3 "/" $2}')"
    temp_info="$(sensors | awk '/Package/ {print $4}' | tr -d +)"
    mon_info="$(light | head -c 3)"
    xsetroot -name "${date_info} | ${vol_info} | ${mon_info} | ${mem_info} | ${temp_info} | ${bat_info}"
    sleep 1s
done &
/usr/local/bin/dwm 2> /dev/null

check_update () {
    echo "Checking update"
}

reinstall_theme () {
    echo "Reinstalling theme"
}

while true; do
    options=("Check for update" "Reinstall theme")

    echo "Choose an option:"
    select opt in "${options[@]}"; do
        case $REPLY in
            1) check_update; break ;;
            2) reinstall_theme; break ;;
            *) echo "What's that?" >&2
        esac
    done

    echo "Doing other things..."

    echo "Are we done?"
    select opt in "Yes" "No"; do
        case $REPLY in
            1) break 2 ;;
            2) break ;;
            *) echo "Look, it's a simple question..." >&2
        esac
    done
  done

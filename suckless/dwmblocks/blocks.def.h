//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	/* Bluetooth status */
    {
        " ",
        "if bluetoothctl info 08:EB:ED:F1:19:4A | grep -q 'Connected: yes'; then echo \":$(bluetoothctl info 08:EB:ED:F1:19:4A | awk '/Name:/ {print $2, $3}')\"; else echo \":OFF\"; fi",
        10,
        0
    },
    /* Wi-Fi status */
    {
        " ",
        "nmcli -t -f name connection show --active",
        10,
        0
    },
 /* Wi-Fi status */
    {
        " ",
        "pamixer --get-volume-human",
        5,
        0
    },

    /* Date and time */
    {
        " ",
        "date '+%b %d | 󰥔 %I:%M%p'",
        5,
        0
    },
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;

# #!/bin/bash
#
# if [[ $(ibus engine | awk -F":" '{ print $2 }') == "us" ]]; then
#     ibus engine 'xkb:pk:pak_urdu_phonetic:urd'
# else
#     ibus engine 'xkb:us::eng'
# fi
#!/bin/bash

# current_layout=$(setxkbmap -query | grep layout | awk '{print $2}')
#
# if [[ "$current_layout" == "us" ]]; then
#     setxkbmap pk -variant pak_urdu_phonetic
# else
#     setxkbmap us
# fi
#
#!/bin/bash

# # Check the current layout
# current_layout=$(setxkbmap -query | grep layout | awk '{print $2}')
#
# if [[ "$current_layout" == "us" ]]; then
#     # Switch to Urdu Phonetic layout, preserving the modifier keys
#     setxkbmap pk -variant pak_urdu_phonetic
# else
#     # Switch back to the US layout
#     setxkbmap us
# fi
#


# #!/bin/bash
#
# # Check the current layout
# current_layout=$(setxkbmap -query | grep layout | awk '{print $2}')
#
# # Force switch between US and Urdu Phonetic layouts while preserving modifier keys
# if [[ "$current_layout" == "us" ]]; then
#     # Switch to Urdu Phonetic layout (preserve modifiers)
#     setxkbmap -layout pk -variant pak_urdu_phonetic
# else
#     # Switch back to US layout (preserve modifiers)
#     setxkbmap -layout us
# fi


#!/bin/bash

# Get the current layout
current_layout=$(setxkbmap -query | grep layout | awk '{print $2}')

# If the current layout is English (us), switch to Urdu layout
if [[ "$current_layout" == "us" ]]; then
    setxkbmap -layout pk -variant pak_urdu_phonetic
    # Explicitly set modifier keys to be recognized even in Urdu layout
    setxkbmap -option ctrl:nocaps
else
    # Switch back to US layout
    setxkbmap -layout us
    # Reset modifiers to ensure they're working in English layout
    setxkbmap -option ctrl:nocaps
fi

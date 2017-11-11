#!/bin/sh

############################################
### VARIABLES THAT NEED REPLACING BY YOU ###
############################################
# Copy the exact full line for your dark and light color schemes including the quotes "" as shown below
# You can get this exact full line in your sublime preferences file by going to Sublime Text -> Preferences -> Settings
# line: the line in the sublime preferences on which your "color_scheme" key is
# preferences: the location of your sublime preferences (this may not need to be changed)
dark_theme='"color_scheme": "Packages/Boxy Theme/schemes/Boxy Nova.tmTheme",'
light_theme='"color_scheme": "Packages/ayu/ayu-light.tmTheme",'
line=2
preferences=$HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings

time=$(date +"%k%M")
dark_theme_escaped=${dark_theme//\//\\/}
light_theme_escaped=${light_theme//\//\\/}

run() {
  if [ $time -gt 1900 -a $time -lt 700 ]; then 
    # Time is between 7PM and 7AM
    theme=$dark_theme_escaped
  else
    # Time is after 7AM and before 7PM
    theme=$light_theme_escaped
  fi
  
  perl -i -pe "s/.*/ $theme / if $.==$line" "$preferences"
}

run
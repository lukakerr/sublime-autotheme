#!/bin/sh

############################################
### VARIABLES THAT NEED REPLACING BY YOU ###
############################################
# Copy the exact full line for your dark and light color schemes and themes 
# including the quotes "" and trailing comma , as shown below
# You can get this exact full line in your sublime preferences file by going to Sublime Text -> Preferences -> Settings
# theme_line: the line in the sublime preferences on which your "theme" key is
# color_scheme_line: the line in the sublime preferences on which your "color_scheme" key is
# preferences: the location of your sublime preferences (this may not need to be changed)
dark_theme='"theme": "Boxy Nova.sublime-theme",'
dark_color_scheme='"color_scheme": "Packages/Boxy Theme/schemes/Boxy Nova.tmTheme",'
light_theme='"theme": "Adaptive.sublime-theme",'
light_color_scheme='"color_scheme": "Packages/ayu/ayu-light.tmTheme",'
theme_line=37
color_scheme_line=2
preferences=$HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings

# Dont modify these variables
time=$(date +"%k%M")
dark_theme_escaped=${dark_theme//\//\\/}
dark_color_scheme_escaped=${dark_color_scheme//\//\\/}
light_theme_escaped=${light_theme//\//\\/}
light_color_scheme_escaped=${light_color_scheme//\//\\/}

run() {
  if [ $time -gt 1900 -a $time -lt 700 ]; then 
    # Time is between 7PM and 7AM
    theme=$dark_theme_escaped
    color_scheme=$dark_color_scheme_escaped
  else
    # Time is after 7AM and before 7PM
    theme=$light_theme_escaped
    color_scheme=$light_color_scheme_escaped
  fi
  
  perl -i -pe "s/.*/ $theme / if $.==$theme_line" "$preferences"
  perl -i -pe "s/.*/ $color_scheme / if $.==$color_scheme_line" "$preferences"
}

run
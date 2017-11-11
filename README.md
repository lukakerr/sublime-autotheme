# sublime-autotheme

A small script to change your sublime text theme for day and night. Made for MacOS.

If the time is between 7PM-7AM, a dark theme will be applied, otherwise a light theme will be applied. 

You can change these times inside `autotheme.sh`:

- Go to this line: `if [ $time -gt 1900 -a $time -lt 700 ]; then`
- `1900` is 7PM in 24 hour time and `700` is 7AM in 24 hour time
- Change these to your desired times at which a dark theme will be applied

### How to use

1. Inside `autotheme.sh` there are 4 variables you need to change. See the comments in `autotheme.sh` to do this.
2. Once you have made the changes simply run `install.sh`. This will ask for your password so it can copy `autotheme.sh` into `/usr/local/bin`.

A launch agent in `~/Library/LaunchAgents/` will run `autotheme.sh` on the hour.

### Demonstration

<div style="text-align:center">
  <img src="https://i.imgur.com/KV4eRfG.gif" alt="autotheme-gif">
</div>
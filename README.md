# OverrideMouse
## Description
In order to get rid of the annoyance of seeing how the mouse gets stuck at the border of a monitor when switching from one screen to another, this very simple shell script has been developed. It overrides the position of the pointer so that it changes between monitors in a proportional way. I personally find it extremely useful when the monitor is not immediately at the side of the computer screen.
## Configuration
To have an optimal functioning of the script, both base edges of the screens should be set to be on the same line (through the displays item on the settings menu). Once the position of the monitors has been set like that, the variables of the script should be modified to the ones of every user.
### Variables 
- `xlimit` has to be set to match the horizontal resolution of the screen placed on the left
- `yleft` has to be set to match the vertical resolution of the screen placed on the left
- `yright` has to be sett to match the vertical resolution of the screen placed on the right
- `sensitivity` is the amount of pixels in which the mouse would be moved at every side
## Dependencies 
The script relies on the output of the `xdotool` command, so if it is not present on the machine it should be installed. On an Ubuntu machine it is achieved by `sudo apt install xdotool`.
## Considerations
Note that the script is constantly looking the position of the mouse and hence an impact on the CPU is going to be noted. Expect it to be around of 10-15%. In order to reduce this impact, one could place a `sleep` command every time the while method makes an iteration. The greater the interval, the less CPU would be taken. Note that if the mouse is moved fast, the script won't behave properly. To achieve the same performance, the sensitivity variable could be increased, but a sensitivity greater than 15px on a 1366px wide is about the maximum before having major inconveniences.

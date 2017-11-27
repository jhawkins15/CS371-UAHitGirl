json = require("json");
local composer = require("composer")

nurseMusic = nil;
nurseMusicChannel = nil;

display.setStatusBar(display.HiddenStatusBar)


audio.reserveChannels(2);

composer.gotoScene("mainmenu")
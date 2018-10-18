-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
local composer = require( "composer" )

-- Hide status bar
display.setStatusBar( display.HiddenStatusBar )

-- Seed the random number generator
math.randomseed( os.time() )

-- Go to the menu screen
composer.gotoScene( "menu" )

-- Reserve channel 1 for background music
audio.reserveChannels( 1 )
audio.reserveChannels( 2 )
audio.reserveChannels( 3 )
-- Reduce the overall volume of the channel
audio.setVolume( 0.3, { channel=1 } )
audio.setVolume( 0, { channel=2 } )
audio.setVolume( 0.3, { channel=3 } )

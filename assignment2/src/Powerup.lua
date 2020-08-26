--[[
	GD50
	Breakout Remake
	-- Powerup Class --
	Author: Hsin-Wen Chang
    bow1226@gmail.com
    
	Assignment 2.1
    "Add a Powerup class to the game that spawns a powerup (images located at the bottom of the sprite sheet in the distribution code). 
    This Powerup should spawn randomly, be it on a timer or when the Ball hits a Block enough times, and gradually descend toward the player. 
    Once collided with the Paddle, two more Balls should spawn and behave identically to the original, 
    including all collision and scoring points for the player. Once the player wins and proceeds to the VictoryState for their current level, 
    the Balls should reset so that there is only one active again."
]]

Powerup = Class{}

function Powerup:init(x, y, key_valid)

end

function Powerup:update(dt)

end 

function Powerup:collision(target)

end 

function Powerup:render()

end
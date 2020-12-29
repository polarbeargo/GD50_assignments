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
    self.x = x
	self.y = y
	self.dx = 0
	self.dy = 30
	self.width = 32
    self.height = 32

    if key_valid then
		self.frame = gFrames['powerup'][10]
	else
		self.frame = gFrames['powerup'][9]
	end

end

function Powerup:update(dt)
	self.x = self.x + self.dx * dt
    self.y = self.y + self.dy * dt
end 

function Powerup:destroy(game) end

function Powerup:collision(target)
    if self.x > target.x + target.width or target.x > self.x + self.width then
        return false
    end

    -- then check to see if the bottom edge of either is higher than the top
    -- edge of the other
    if self.y > target.y + target.height or target.y > self.y + self.height then
        return false
    end 

    -- if the above aren't true, they're overlapping
    return true
end 

function Powerup:render()
	love.graphics.draw(gTextures['main'], self.frame, self.x, self.y)
end
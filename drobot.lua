---
-- Wraps the functionality of OpenComputer's robot module
--
-- @classmod DRobot
-- @author Craig Knoblauch

local robot = require("robot")
local dnav = require("dnav")

local DRobot = {}
DRobot.__index = DRobot

---
-- Creates and returns a DRobot object. The turtle's initial x, y, z
-- position and cardinal facing direction must be known on startup.
-- This information will be passed to @{DNav} to maintain
-- navigational information 
--
-- @param x The turtle's starting x position
-- @param y The turtle's starting y position
-- @param z The turtle's starting z position
-- @param facing The turtle's starting cardinal direction
-- @return A new DRobot object
--
-- TODO Error checking
function DRobot.new(x, y, z, facing)
    local self = setmetatable({}, DRobot)

    self.my_dnav = dnav.Dnav.new(x, y, z, facing)

    return self
end

---
-- Turns the turtle to the right. With the current facing direction,
-- a new facing direction is determined and facing is updated
--
-- @param self The calling DRobot object. Does NOT need to be 
-- provided if the ':' operator is used to call the function.
--
-- TODO This function is intentionally incomplete for lua testing
function DRobot.dTurnRight(self)
    print(self.facing)
end
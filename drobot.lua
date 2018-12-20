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
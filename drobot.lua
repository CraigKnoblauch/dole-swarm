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

    self.my_dnav = dnav.new(x, y, z, facing)

    return self

end

---
-- Turns the turtle to the right. With the current facing direction,
-- a new facing direction is determined and facing is updated
--
-- @param self The calling DRobot object. Does NOT need to be 
-- provided if the ':' operator is used to call the function.
function DRobot.turnRight(self)

    if robot.turnRight() then
        -- Request an update of the facing direction, given this is a 
        -- 'right' turn
        (self.my_dnav):updateFacing('right')
    else

    -- TODO throw an exception if this cannot be completed.

    end -- endif

end

---
-- Turns the turtle to the left. With the current facing direction,
-- a new facing direction is determined and facing is updated.
--
-- @param self The calling DRobot object. Does NOT need to be 
-- provided if the ':' operator is used to call the function.
function DRobot.turnLeft(self)

    if robot.turnLeft() then
        -- Request an update of the facing direction, given this is a 
        -- 'left' turn
        (self.my_dnav):updateFacing('left')
    else

        -- TODO throw an exception if this cannot be completed.
    
    end -- end if

end

---
-- Turns the turtle around. With the current facing direction,
-- a new facing direction is determined and facing is updated.
--
-- @param self The calling DRobot object. Does NOT need to be 
-- provided if the ':' operator is used to call the function.
function DRobot.turnAround(self)

    if robot.turnAround() then
        -- Request an update of the facing direction, given this is a 
        -- 'left' turn
        (self.my_dnav):updateFacing('around')
    else
        -- TODO throw an exception if this cannot be completed.
    end -- endif
    
end

---
-- Moves the turtle forward. Updates the turtle's postion
-- appropriately
--
-- @param self The calling DRobot object. Does NOT need to be 
-- provided if the ':' operator is used to call the function.
function DRobot.forward(self)

    if robot.forward() then

        -- Request an update in postion, given this is a
        -- successful forward movement
        (self.my_dnav):updatePos('forward')

    else

        -- TODO throw an exception if this cannot be completed

    end

end

---
-- Moves the turtle backward. Updates the turtle's postion
-- appropriately
--
-- @param self The calling DRobot object. Does NOT need to be 
-- provided if the ':' operator is used to call the function.
function DRobot.back(self)

    if robot.back() then

        -- Request an update in postion, given this is a
        -- successful backward movement
        (self.my_dnav):updatePos('back')

    else

        -- TODO throw an exception if this cannot be completed
        
    end

end

---
-- Moves the turtle upward. Updates the turtle's postion
-- appropriately
--
-- @param self The calling DRobot object. Does NOT need to be 
-- provided if the ':' operator is used to call the function.
function DRobot.up(self)

    if robot.up() then

        -- Request an update in postion, given this is a
        -- successful upward movement
        (self.my_dnav):updatePos('up')

    else

        -- TODO throw an exception if this cannot be completed
        
    end

end

---
-- Moves the turtle downward. Updates the turtle's postion
-- appropriately
--
-- @param self The calling DRobot object. Does NOT need to be 
-- provided if the ':' operator is used to call the function.
function DRobot.down(self)

    if robot.down() then

        -- Request an update in postion, given this is a
        -- successful downward movement
        (self.my_dnav):updatePos('down')

    else

        -- TODO throw an exception if this cannot be completed
        
    end

end
    
    
    

return DRobot

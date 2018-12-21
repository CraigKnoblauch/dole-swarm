---
-- Responsible for maintaining navigational information, as well
-- as providing navigational capabilities. 
--
-- @classmod DNav
-- @author Craig Knoblauch
local DNav = {}
DNav.__index = DNav

---
-- Creates and returns a DNav object. Please note, the variables 
-- listed here are the only variables assosciated with this class.
--
-- @param x The turtle's starting x position
-- @param y The turtle's starting y position
-- @param z The turtle's starting z position
-- @param facing The turtle's starting cardinal direction
-- @return A new DNav object
--
-- TODO Error checking
function DNav.new(x, y, z, facing)
    local self = setmetatable({}, DNav)

    self.x = x
    self.y = y
    self.z = z
    self.facing = facing

    return self
end

---
-- Updates facing attribute in accordance with the type of turn 
-- specified. This function must be called BEFORE a turn is 
-- executed.
--
-- @param self The calling DNav object. Does NOT need to be 
-- provided if the ':' operator is used to call the function.
-- @param turn_type A string. Possibilites are 'right', 'left', and
-- 'around'.
--
-- TODO return error if turn type is unknown
function DNav.updateFacing(self, turn_type)

    -- Adjust self.facing for a 'left' turn
    if turn_type == "left" then

        if self.facing == "north" then
            self.facing = "west"
        elseif self.facing == "east" then
            self.facing = "north"
        elseif self.facing == "south" then
            self.facing = "east"
        elseif self.facing == "west" then
            self.facing = "south"
        end

    -- Adjust self.facing for a 'right' turn
    elseif turn_type == "right" then

        if self.facing == "north" then
            self.facing = "east"
        elseif self.facing == "east" then
            self.facing = "south"
        elseif self.facing == "south" then 
            self.facing = "west"
        elseif self.facing == "west" then
            self.facing = "north"
        end

    -- Adjust self.facing for an 'around' turn
    elseif turn_type == "around" then

        if self.facing == "north" then
            self.facing = "south"
        elseif self.facing == "east" then
            self.facing = "west"
        elseif self.facing == "south" then
            self.facing = "north"
        elseif self.facing == "west" then
            self.facing = "east"
        end

    end

end

return DNav

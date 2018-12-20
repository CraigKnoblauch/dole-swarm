---
-- Each turtle shall have an instance of this class. This class is
-- responsible for maintaining navigational information, as well
-- as providing navigational capabilities. 
-- @modclass DNav
DNav = {
    x, -- int: x position of turtle
    y, -- int: y position of turtle
    z, -- int: z position of turtle
    facing -- string: Cardinal direction the turtle is facing
}

---
-- Creates and returns a DNav object
-- @param x The turtle's starting x position
-- @param y The turtle's starting y position
-- @param z The turtle's starting z position
-- @param facing The turtle's starting cardinal direction
-- @return A new DNav object
-- @todo Error checking
function DNav:new(x, y, z, facing)
    self.x = x
    self.y = y
    self.z = z
    self.facing = facing

    return self
end

-- NOTE For testing purposes only
my_nav = DNav:new(1, 2, 3, "NORTH")
print("x: ".(my_nav.x))
print("y: ".(my_nav.y))
print("z: ".(my_nav.z))
print("facing: ".(my_nav.facing))

my_other_nav = DNav:new(-1, -2, -3, "SOUTH")
print("x: ".(my_nav.x))
print("y: ".(my_nav.y))
print("z: ".(my_nav.z))
print("facing: ".(my_nav.facing))
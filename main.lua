-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created By: Amin Zeina 
-- Created On: Feb 2018
--
-- This program calculates the area of a trapezoid
--
-----------------------------------------------------------------------------------------

local aBaseOfTrapezoid
local bBaseOfTrapezoid
local heightOfTrapezoid
local areaOfTrapezoid

local enterA = display.newText( "Enter A:", 300, 200, native.systemFont, 128)
enterA.id = "Enter A"
local aBaseTextField = native.newTextField( 300, 400, 500, 128)
aBaseTextField.id = "A Input"

local enterB = display.newText( "Enter B:", 900, 200, native.systemFont, 128)
enterB.id = "Enter B"
local bBaseTextField = native.newTextField( 900, 400, 500, 128)
bBaseTextField.id = "B Input"

local enterHeight = display.newText( "Enter Height:", 1600, 200, native.systemFont, 128)
enterHeight.id = "Enter Height"
local heightTextField = native.newTextField( 1600, 400, 750, 128)
heightTextField.id = "Height Input"

local calculateButton = display.newImageRect( "./Assets/Sprites/enterButton.png", 609, 235.5)
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY 
calculateButton.id = "Enter Button"

local answer = display.newText( "The Area is: ", display.contentCenterX, display.contentCenterY + 300, native.systemFont, 128)

local function calculateArea( event )
	-- To calculate the area
	aBaseOfTrapezoid = aBaseTextField.text 
	bBaseOfTrapezoid = bBaseTextField.text
	heightOfTrapezoid = heightTextField.text
	areaOfTrapezoid = (aBaseOfTrapezoid + bBaseOfTrapezoid) / 2 * heightOfTrapezoid
    --Print Area to the user
    answer.text = "The area is: " .. areaOfTrapezoid

    return true
end

calculateButton:addEventListener( "touch", calculateArea)
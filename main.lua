-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

local aOfSquareTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 450, 75 )

local bOfSquareTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 300, 450, 75 )

local lengthOfSquareTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 400, 450, 75 )
lengthOfSquareTextField.id = "length textField"

local areaOfSquareTextField = display.newText( "Answer", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 75 )
areaOfSquareTextField.id = "area textField"
areaOfSquareTextField:setFillColor( 1, 1, 1 )

local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 157 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"
 
local function calculateButtonTouch( event )
    -- this function calculates the area of a square given the length of one of its sides
    
	local aOfSquare = aOfSquareTextField.text
	local bOfSquare = bOfSquareTextField.text
    local lengthOfSquare = lengthOfSquareTextField.text
    local areaOfSquare
 
    areaOfSquare = ( aOfSquare + bOfSquare ) / 2 * lengthOfSquare
    -- print( areaOfSquare )
    areaOfSquareTextField.text = "The area is " .. areaOfSquare

    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )
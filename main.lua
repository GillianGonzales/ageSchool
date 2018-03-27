-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created By Gillian Gonzales
-- Created On March 26 2018
--
-- This program will tell if they can get a student discount
-----------------------------------------------------------------------------------------

-- Making Varibles
local day
local age
local Saturday
local Sunday

 -- Changing Background
 display.setDefault("background", 1, 1, 1 )

-- Adding Text 
local instructionOne = display.newText("Type in your Age", display.contentCenterX , display.contentCenterY - 600, native.systemFont, 100 )
instructionOne:setFillColor ( 0 , 0 , 0 ) 

local instructionTwo = display.newText("Type In a day", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 100)
instructionTwo:setFillColor ( 0, 0, 0 )

local whatday = display.newText("", display.contentCenterX, display.contentCenterY + 400, native.systemFont, 100)
whatday:setFillColor ( 0, 0, 0)

-- Adding TextField
local ageField = native.newTextField (display.contentCenterX, display.contentCenterY - 400, 800, 150)

local dayField = native.newTextField(display.contentCenterX, display.contentCenterY, 800, 150)

-- Adding Button
local button = display.newImageRect("./assets/sprites/Button.png", 406, 157)
button.x = display.contentCenterX
button.y = display.contentCenterY + 200

-- Adding Function
local function tellDiscount( event )
	-- This function will tell if the user gets a discount

	age = tonumber(ageField.text)
	day = dayField.text
	Saturday = "Saturday"
	Sunday = "Sunday"

	if (day == Sunday or  day == Saturday) then
		whatday.text = "You get to relax"
	elseif age > 18 then
		whatday.text = "Go to work"
	else
		whatday.text = "Go to school"
	end

end

button:addEventListener("touch",tellDiscount)

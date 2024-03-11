local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Military Tycoon", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

--Values
_G.autoFarm = false

--Functions
function autoFarm()
    while _G.autoFarm == true do
local args = {
[1] = "Airplane"
}
            
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.5.1"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("VehicleService"):WaitForChild("RF"):WaitForChild("SpawnVehicle"):InvokeServer(unpack(args))
            
wait(2)
end
end


--Tabs
local Tab = Window:MakeTab({
	Name = "Auto Plane",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local AntiAFK = Window:MakeTab({
	Name = "Anti-AFK",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--Toggles
Tab:AddToggle({
	Name = "Auto Plane",
	Default = false,
	Callback = function(Value)
        _G.autoFarm = Value
		autoFarm()
	end    
})

--Button
AntiAFK:AddButton({
	Name = "Anti-AFK",
	Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/gsxvWvnj"))()
  	end    
})




OrionLib:Init()

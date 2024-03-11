local interval = 1199

local function AntiAFK()
    local input = {Enum.KeyCode.W}
    game:GetService("VirtualInputManager"):SendKeyEvent(true, input, false)
    wait(0.1)
    game:GetService("VirtualInputManager"):SendKeyEvent(false, input, false)
end

while true do
    AntiAFK()
    wait(interval)
end

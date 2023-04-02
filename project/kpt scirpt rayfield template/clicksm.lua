local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "KhanhHub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
	Name = "farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "auto tap"
    Name = "auto rebirth"
})

getgenv().a=false
Tab:AddToggle({
    Name = "check this box to toggle farming on",
    Default = false,
    Callback = function(Value)
       getgenv().a = Value
    end    
})
spawn(function()
  while wait() do
    if getgenv().a then
        wait(1)
        local args = {
            [1] = "Main"
        }
        game:GetService("ReplicatedStorage").Events.Tap:FireServer(unpack(args))
    end
  end
end)


local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local win = DiscordLib:Window("HOK HUB")

local serv = win:Server("HOK HUB", "")


local tgls = serv:Channel("Toggles")

tgls:Toggle("Auto-Farm",false, function(bool)
_G.LOOP = bool
while _G.LOOP do

local args = {
    [1] = "swingKatana"
}

game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(79.092506408691, 87068.375, 119.38446044922)

wait(0)

end

end)

local btns = serv:Channel("TP")
btns:Button("island", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(145.466553, 87051.1797, 55.1950226, -0.744332254, -3.18094955e-08, 0.667809486, 1.76705015e-08, 1, 6.73279175e-08, -0.667809486, 6.19148679e-08, -0.744332254)
end)
btns:Seperator()
btns:Button("sword", function()

local args = {
    [1] = "buyAllSwords",
    [2] = "Inner Peace Island"
}

game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
end)
btns:Seperator()
btns:Button("Belts", function()
local args = {
    [1] = "buyAllBelts",
    [2] = "Inner Peace Island"
}

game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))

end)
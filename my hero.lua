function Tween(a)
    local Distance = (a.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 250 then
       Speed = 5000
    elseif Distance >= 250 then
       Speed = 300
    end
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),{CFrame = a}):Play()
   wait(Distance/Speed)
 end
 local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
 
 local X = Material.Load({
     Title = "HOKHUB",
     Style = 3,
     SizeX = 500,
     SizeY = 350,
     Theme = "Light",
     ColorOverrides = {
         MainFrame = Color3.fromRGB(255, 255, 255)
     }
 })
 
 local Y = X.New({
     Title = "main"
 })
 local D = Y.Dropdown({
     Text = "Selectmon",
     Callback = function(mon)
         _G.mm = mon
     end,
     Options = {
         "Criminal",
         "Police",
         "Weak Villain",
         "UA Student",
         "Villain",
         "Tomura",
         "Present Mic",
         "Dabi",
         "Midnight",
         "Muscular",
         "Gang Orca",
         "Noumu",
         "Mount Lady",
         "Endeavor",
         "Overhaul",
         "Hawks",
         "Gigantomachia",
         "AllForOne",
         "All Might 1",
         "Awakened Tomura",
         "Deku"
     },
     Menu = {
         Information = function(self)
             X.Banner({
                 Text = "Test alert!"
             })
         end
     }
 })
  local e = Y.Dropdown({
     Text = "SelectWeapon",
     Callback = function(sed)
         _G.sed = sed
     end,
     Options = {
         "Pistol",
         "EasterStaff"
     },
     Menu = {
         Information = function(self)
             X.Banner({
                 Text = "Test alert!"
             })
         end
     }
 })
 local B = Y.Toggle({
     Text = "auto farm",
     Callback = function(Value)
         _G.au = Value
     end,
     Enabled = false
 })
 _G.fa = 200
 local C = Y.Slider({
     Text = "hight",
     Callback = function(F)
         _G.fa = F
     end,
     Min = 60,
     Max = 400,
     Def = 200
 })
 local God = Instance.new("Part")
 
 God.Parent = Workspace
 God.Name = "God"
 God.CanCollide = true
 God.Anchored = true
 God.Transparency = 0.75
 God.Size = Vector3.new(15,.3,15)
 
 spawn(function()
     pcall(function()
         while wait() do
             if _G.au then
                 d()
 
             end
         end
     end)
 end)
 spawn(function()
     pcall(function()
         while wait() do
             name()
         end
     end)
 end)
 function name()
     spawn(function()
         pcall(function()
             if  game.Players.LocalPlayer.Character.Humanoid.Health > 0  then
                 _G.name = game.Players.LocalPlayer.name
             end
         end)
     end)
 end
 function d()
 spawn(function()
     pcall(function()
        if  game.Players.LocalPlayer.Character.Humanoid.Health > 0  then
            if _G.sed == "Pistol" then
                God.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-3,0)
                if game.Players.LocalPlayer.Character:FindFirstChild("Pistol") then
                else
                    local string_1 = "Pistol";
                    local Target = game:GetService("ReplicatedStorage").WeaponShop.Equip;
                    Target:FireServer(string_1);
                end
                Tween(game:GetService("Workspace").NPCs[_G.mm].HumanoidRootPart.CFrame * CFrame.new(0,_G.fa,0))
                local userdata_1 = game:GetService("Workspace").NPCs[_G.mm].HumanoidRootPart.CFrame;
                Target = game:GetService("Workspace")[_G.name].Main.Swing;
                Target:FireServer(userdata_1);
            elseif _G.sed == "EasterStaff" then
                God.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-3,0)
                if game.Players.LocalPlayer.Character:FindFirstChild("EasterStaff") then
                else
                        local string_1 = "EasterStaff";
                        local Target = game:GetService("ReplicatedStorage").WeaponShop.Equip;
                        Target:FireServer(string_1);
                end
                Tween(game:GetService("Workspace").NPCs[_G.mm].HumanoidRootPart.CFrame * CFrame.new(0,_G.fa,0))
                local userdata_1 = game:GetService("Workspace").NPCs[_G.mm].HumanoidRootPart.CFrame;
                local Target = game:GetService("Workspace")[_G.name].Main.Swing;
                Target:FireServer(userdata_1);
                end
            end
        end)
    end)
 end
 local Z = X.New({
     Title = "stats"
 })
 
 local B = Z.Toggle({
     Text = "Strength",
     Callback = function(str)
         _G.Strength = str
     end,
     Enabled = false
 })
 local B = Z.Toggle({
     Text = "Agility",
     Callback = function(agi)
         _G.Agility = agi
     end,
     Enabled = false
 })
 local B = Z.Toggle({
     Text = "Durability",
     Callback = function(dur)
         _G.Durability = dur
     end,
     Enabled = false
 })
 
 
 
 spawn(function()
     while wait(0) do
         if _G.Strength then
             local number_1 = 1;
             local Target = game:GetService("ReplicatedStorage").Remotes.Strength;
             Target:FireServer(number_1);
         end
     end
 end)
 spawn(function()
     while wait(0) do
         if _G.Agility then
             local number_1 = 1;
             local Target = game:GetService("ReplicatedStorage").Remotes.Agility;
             Target:FireServer(number_1);
         end
     end
 end)
 spawn(function()
     while wait(0) do
         if _G.Durability then
             local number_1 = 1;
             local Target = game:GetService("ReplicatedStorage").Remotes.Durability;
             Target:FireServer(number_1);
         end
     end
 end)
 
 local GC = getconnections or get_signal_cons
 if GC then
     for i,v in pairs(GC(game.Players.LocalPlayer.Idled)) do
         if v["Disable"] then
             v["Disable"](v)
         elseif v["Disconnect"] then
             v["Disconnect"](v)
         end
     end
 else
     print("lol bad exploit")
     local vu = game:GetService("VirtualUser")
     game:GetService("Players").LocalPlayer.Idled:connect(function()
         vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
         wait(1)
         vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
     end)
 end
 
 local o
 o = hookfunc(getrenv().wait,function(p)
     if tostring(getfenv(2).script) =="AntiAutoClickScript"then
         return old(9e9)
         end
 return o(p)
 end)
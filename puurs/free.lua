game.StarterGui:SetCore("SendNotification", {
    Title = "PUURS SKYWARS"; 
    Text = "Free Version!";
    Icon = "http://www.roblox.com/asset/?id=9672729324"; 
    Duration = 5;
    Callback = bindableFunction;
    Button1 = "";
    Button2 = "";
})

local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local PhantomForcesWindow = Library:NewWindow("âš”ï¸ PUURS ðŸ¹")

local KillingCheats = PhantomForcesWindow:NewSection("Main")

KillingCheats:CreateButton("AutoFarm", function()
	game.StarterGui:SetCore("SendNotification", {
    Title = "AutoFarm V3"; 
    Text = "AutoFarm V3 OP";
    Icon = "http://www.roblox.com/asset/?id=9672729324"; 
    Duration = 5;
    Callback = bindableFunction;
    Button1 = "";
    Button2 = "";
})

		local Players       = game:GetService("Players")
		local localPlayer   = Players.LocalPlayer
		local backpack      = localPlayer:WaitForChild("Backpack")
		local tool          = Instance.new("Tool")
		tool.RequiresHandle = false
		tool.CanBeDropped   = true
		tool.Parent         = backpack
		tool.Name           = "OFF Aura"
		tool.Equipped:Connect(function(mouse)
			mouse.Button1Down:Connect(function()
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Block") then
					if mouse.Target and mouse.Target.Parent then
 _G.UWU = false
					end
				end
			end)
		end)

		local Players       = game:GetService("Players")
		local localPlayer   = Players.LocalPlayer
		local backpack      = localPlayer:WaitForChild("Backpack")
		local tool          = Instance.new("Tool")
		tool.RequiresHandle = false
		tool.CanBeDropped   = true
		tool.Parent         = backpack
		tool.Name           = "Hold and Click"
		tool.Equipped:Connect(function(mouse)
			mouse.Button1Down:Connect(function()
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Axe") then
					if mouse.Target and mouse.Target.Parent then
                    
                    local cpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	local stuff = workspace:getDescendants()
	for i=1,#stuff do
		if stuff[i].Name == "Block" and stuff[i].Parent.Name == "Ores" then
			repeat
				wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = stuff[i].CFrame
			until stuff[i].Name ~= "Block" or not game.Players.LocalPlayer.Character:findFirstChild("Hold and Click")
		end
	end
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
            						end
				end
			end)
		end)
		
		_G.UWU = true
            while _G.UWU == true do
                wait()
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Axe") then
                    function onTouched(part)       
                        local h = part
                        if h.Name == "Block" and h.Parent.Name == "Ores" then
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Axe").RemoteEvent:FireServer(h)  
                        end
                    end
                    Partz              = Instance.new("Part")
                    Partz.Parent       = workspace
                    Partz.Transparency = 1
                    Partz.CanCollide   = false
                    Partz.Massless     = true
                    Partz.Position     = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,9,0)
                    Partz.Size         = Vector3.new(15,50,15)
 
                    local light         = Instance.new("SelectionBox")
                    light.Adornee       = Partz
                    light.LineThickness = 0.05
                    light.Color3        = Color3.fromRGB(196, 40, 28)
                    light.Parent        = Partz
                    light.Name          = "SelectBox"
 
                    local bruh = Partz.Touched:connect(onTouched)
 
                    wait()
                    bruh:Disconnect()
                    Partz:Destroy()
                    wait()
                    end
                    end
end)

KillingCheats:CreateButton("Sword Reach", function()
   a=Instance.new("SelectionBox",game.Players.LocalPlayer.Backpack.Sword.Handle)
	a.Adornee=game.Players.LocalPlayer.Backpack.Sword.Handle
	game.Players.LocalPlayer.Backpack.Sword.Handle.Size=Vector3.new(1,1,30)
end)

KillingCheats:CreateButton("Auto Penis", function()
        function onTouched(part)       
            local h = part
            if h.Name == "Block" then
                game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(h,Enum.NormalId.Top)
            end
        end
        Partz              = Instance.new("Part")
        Partz.Parent       = workspace
        Partz.Transparency = 1
        Partz.CanCollide   = false
        Partz.Massless     = true
        Partz.Position     = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,51,0)
        Partz.Size         = Vector3.new(2,27,2)
        Partz.CFrame       = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector*3.5
 
        local light         = Instance.new("SelectionBox")
        light.Adornee       = Partz
        light.LineThickness = 0.05
        light.Color3        = Color3.fromRGB(17, 17, 257)
        light.Parent        = Partz
        light.Name          = "SelectBox"
 
 
 
        local bruh = Partz.Touched:connect(onTouched)
        wait()
        bruh:Disconnect()
        Partz:Destroy()
        wait(0.2)
        function onTouched(part)       
            local h = part
            if h.Name == "Block" then
                game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(h,Enum.NormalId.Top)
            end
        end
        Partz              = Instance.new("Part")
        Partz.Parent       = workspace
        Partz.Transparency = 1
        Partz.CanCollide   = false
        Partz.Massless     = true
        Partz.Position     = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,51,0)
        Partz.Size         = Vector3.new(5,27,1)
        Partz.CFrame       = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector*3.5
 
        local light         = Instance.new("SelectionBox")
        light.Adornee       = Partz
        light.LineThickness = 0.05
        light.Color3        = Color3.fromRGB(17, 17, 257)
        light.Parent        = Partz
        light.Name          = "SelectBox"
 
 
 
        local bruh = Partz.Touched:connect(onTouched)
        wait()
        bruh:Disconnect()
        Partz:Destroy()
        wait(0.3)
                function onTouched(part)       
            local h = part
            if h.Name == "Block" then
                game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(h,Enum.NormalId.Top)
            end
        end
        Partz              = Instance.new("Part")
        Partz.Parent       = workspace
        Partz.Transparency = 1
        Partz.CanCollide   = false
        Partz.Massless     = true
        Partz.Position     = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,51,0)
        Partz.Size         = Vector3.new(2,27,1)
        Partz.CFrame       = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector*3.5
 
        local light         = Instance.new("SelectionBox")
        light.Adornee       = Partz
        light.LineThickness = 0.05
        light.Color3        = Color3.fromRGB(17, 17, 257)
        light.Parent        = Partz
        light.Name          = "SelectBox"
 
 
 
        local bruh = Partz.Touched:connect(onTouched)
        wait()
        bruh:Disconnect()
        Partz:Destroy()
end)

KillingCheats:CreateToggle("RealisticMode", function(value)
  local nah = game:GetService("Lighting")
        if value == true then
            nah.Ambient            = Color3.fromRGB(414, 54, 157)
            nah.Brightness         = ("1.5")
            nah.ClockTime          = ("7.92")
            nah.ColorShift_Bottom  = Color3.fromRGB(454, 354, 464)
            nah.ColorShift_Top     = Color3.fromRGB(144, 252, 51)
            nah.FogColor           = Color3.fromRGB(155, 191, 191)
            nah.FogEnd             = ("450")
            nah.FogStart           = ("4")
            nah.GeographicLatitude = ("8")
            nah.OutdoorAmbient     = Color3.fromRGB(444, 255, 255)
            if game:GetService("Workspace"):FindFirstChild("GameMusic") then
                game:GetService("Workspace").GameMusic.PlaybackSpeed = 0.8
            end
        end
        if value == false then
            nah.Ambient            = Color3.fromRGB(255, 174, 157)
            nah.Brightness         = ("1")
            nah.ClockTime          = ("7")
            nah.ColorShift_Bottom  = Color3.fromRGB(255, 255, 0)
            nah.ColorShift_Top     = Color3.fromRGB(255, 255, 0)
            nah.FogColor           = Color3.fromRGB(191, 191, 191)
            nah.FogEnd             = ("8000")
            nah.FogStart           = ("0")
            nah.GeographicLatitude = ("41.73")
            nah.OutdoorAmbient     = Color3.fromRGB(255, 255, 255)
            if game:GetService("Workspace"):FindFirstChild("GameMusic") then
                game:GetService("Workspace").GameMusic.PlaybackSpeed = 1
            end
        end
end)

KillingCheats:CreateToggle("MineAura", function(value)
_G.UWU = false
    if value == true then
    _G.UWU    = false
            _G.NoBugs = false
            game.StarterGui:SetCore("SendNotification", {
                Title = "\n Mine Aura Enabled"; 
                Text     = ""; 
                Duration = 0.5;
            }) 
            _G.UWU = true
            while _G.UWU == true do
                wait()
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Axe") then
                    function onTouched(part)       
                        local h = part
                        if h.Name == "Block" then
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Axe").RemoteEvent:FireServer(h)  
                        end
                    end
                    Partz              = Instance.new("Part")
                    Partz.Parent       = workspace
                    Partz.Transparency = 1
                    Partz.CanCollide   = false
                    Partz.Massless     = true
                    Partz.Position     = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,9,0)
                    Partz.Size         = Vector3.new(15,20,15)
 
                    local light         = Instance.new("SelectionBox")
                    light.Adornee       = Partz
                    light.LineThickness = 0.05
                    light.Color3        = Color3.fromRGB(0, 255, 0)
                    light.Parent        = Partz
                    light.Name          = "SelectBox"
 
                    local bruh = Partz.Touched:connect(onTouched)
 
                    wait()
                    bruh:Disconnect()
                    Partz:Destroy()
                    wait()
                end
            end
        end
        if value == true then
            _G.UWU    = false
            _G.NoBugs = true
            game.StarterGui:SetCore("SendNotification", {
                Title = "\n Mine Aura Disabled"; 
                Text     = ""; 
                Duration = 0.5;
            }) 
        end
end)

KillingCheats:CreateToggle("MineOres", function(value)
 _G.UWU = false
    if value == true then
    _G.UWU    = false
            _G.NoBugs = false
            game.StarterGui:SetCore("SendNotification", {
                Title = "\n Mine Ores Aura Enabled"; 
                Text     = ""; 
                Duration = 0.5;
            }) 
            _G.UWU = true
            while _G.UWU == true do
                wait()
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Axe") then
                    function onTouched(part)       
                        local h = part
                        if h.Name == "Block" and h.Parent.Name == "Ores" then
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Axe").RemoteEvent:FireServer(h)  
                        end
                    end
                    Partz              = Instance.new("Part")
                    Partz.Parent       = workspace
                    Partz.Transparency = 1
                    Partz.CanCollide   = false
                    Partz.Massless     = true
                    Partz.Position     = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,9,0)
                    Partz.Size         = Vector3.new(15,50,15)
 
                    local light         = Instance.new("SelectionBox")
                    light.Adornee       = Partz
                    light.LineThickness = 0.05
                    light.Color3        = Color3.fromRGB(196, 40, 28)
                    light.Parent        = Partz
                    light.Name          = "SelectBox"
 
                    local bruh = Partz.Touched:connect(onTouched)
 
                    wait()
                    bruh:Disconnect()
                    Partz:Destroy()
                    wait()
                end
            end
        end
        if value == true then
            _G.UWU    = false
            _G.NoBugs = true
            game.StarterGui:SetCore("SendNotification", {
                Title = "\n Mine Ores Aura Disabled"; 
                Text     = ""; 
                Duration = 0.5;
            }) 
        end
end)

	_G.Coin = true
KillingCheats:CreateToggle("Coin Collect", function(value)
		if value == true then
			_G.Coin = true
			while _G.Coin == true do
				wait()
				if game:GetService("Workspace").GameStorage.Coins:FindFirstChild("Coin") then
					for _,f in pairs(game:GetService("Workspace").GameStorage.Coins.Coin:GetDescendants()) do  
						firetouchinterest(game.Players.LocalPlayer.Character.Head, f.Parent, 0)  
						firetouchinterest(game.Players.LocalPlayer.Character.Head, f.Parent, 1)
					end
				end
			end
		end
		if value == false then
			_G.Coin = true
		end
end)

local a = PhantomForcesWindow:NewSection("Teleports")

a:CreateButton("Lobby", function()
local plr = game:GetService('Players').LocalPlayer.Character
	plr.HumanoidRootPart.CFrame = CFrame.new(0.136367261, 267.731812, 0.124310307, -0.0251912661, 0.0056480174, 0.999666691, -0.001678759, 0.999982417, -0.00569210527, -0.999681234, -0.00182159082, -0.0251813401)
end)

a:CreateButton("Middle Island", function()
	local plr = game:GetService('Players').LocalPlayer.Character
	plr.HumanoidRootPart.CFrame = CFrame.new(0.219839305, 165.000183, 7.45933723, 0.999978483, 3.77896718e-08, -0.00655859848, -3.80399783e-08, 1, -3.80400245e-08, 0.00655859848, 3.82886967e-08, 0.999978483)
end)

a:CreateButton("VIP", function()
	local plr = game:GetService('Players').LocalPlayer.Character
	plr.HumanoidRootPart.CFrame = CFrame.new(-0.225874364, 263.999908, -71.2721786, 0.999998808, -3.80979763e-08, -0.00153389922, 3.80396727e-08, 1, -3.80393885e-08, 0.00153389922, 3.79809926e-08, 0.999998808)
end)

a:CreateButton("MEGA VIP", function()
local plr = game:GetService('Players').LocalPlayer.Character
	plr.HumanoidRootPart.CFrame = CFrame.new(0.404939502, 263.999908, 69.9724426, -0.999989629, 0, 0.00455036201, 0, 1, 0, -0.00455036201, 0, -0.999989629)
end)

a:CreateButton("Save Cords", function()
    	local plr = game:GetService('Players').LocalPlayer.Character
	here = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
end)

a:CreateButton("Go Cords", function()
    	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(here)
end)

KillingCheats:CreateButton("Fly Press R", function()
repeat wait() 
    until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
local mouse = game.Players.LocalPlayer:GetMouse() 
repeat wait() until mouse
local plr = game.Players.LocalPlayer 
local torso = plr.Character.Torso 
local flying = false
local deb = true 
local ctrl = {f = 0, b = 0, l = 0, r = 0} 
local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
local maxspeed = 50 
local speed = 0 
 
function Fly() 
local bg = Instance.new("BodyGyro", torso) 
bg.P = 9e4 
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
bg.cframe = torso.CFrame 
local bv = Instance.new("BodyVelocity", torso) 
bv.velocity = Vector3.new(0,0.1,0) 
bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
repeat wait() 
plr.Character.Humanoid.PlatformStand = true 
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
speed = speed+.5+(speed/maxspeed) 
if speed > maxspeed then 
speed = maxspeed 
end 
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
speed = speed-1 
if speed < 0 then 
speed = 0 
end 
end 
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
else 
bv.velocity = Vector3.new(0,0.1,0) 
end 
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
until not flying 
ctrl = {f = 0, b = 0, l = 0, r = 0} 
lastctrl = {f = 0, b = 0, l = 0, r = 0} 
speed = 0 
bg:Destroy() 
bv:Destroy() 
plr.Character.Humanoid.PlatformStand = false 
end 
mouse.KeyDown:connect(function(key) 
if key:lower() == "r" then 
if flying then flying = false 
else 
flying = true 
Fly() 
end 
elseif key:lower() == "w" then 
ctrl.f = 1 
elseif key:lower() == "s" then 
ctrl.b = -1 
elseif key:lower() == "a" then 
ctrl.l = -1 
elseif key:lower() == "d" then 
ctrl.r = 1 
end 
end) 
mouse.KeyUp:connect(function(key) 
if key:lower() == "w" then 
ctrl.f = 0 
elseif key:lower() == "s" then 
ctrl.b = 0 
elseif key:lower() == "a" then 
ctrl.l = 0 
elseif key:lower() == "d" then 
ctrl.r = 0 
end 
end)
Fly()
end)

KillingCheats:CreateButton("Platform", function()
 box = Instance.new('Part',workspace)
box.Anchored = true
box.CanCollide = true
box.Name = "PUURS"
box.Size = Vector3.new(1000,5,1000)
box.Position = Vector3.new(-1.73030376, 138.952133, 0.203927293, 0.0934676528, 0.112628534, -0.989231348, 0.000560700311, 0.993574798, 0.113176033, 0.995622158, -0.0111329611, 0.0928039551)
box.Touched:connect(function(part)
    if (part.Parent.Name == Local.Name) then
        if touched == false then
            touched = true
            function apply()
                if script.Disabled ~= true then
                    no = Char.HumanoidRootPart:Clone()
                    wait(.25)
                    Char.HumanoidRootPart:Destroy()
                    no.Parent = Char
                    Char:MoveTo(loc)
                    touched = false
                end end
            if Char then
                apply()
            end
        end
    end
end)
repeat wait() until Char
loc = Char.HumanoidRootPart.Position
Char:MoveTo(box.Position + Vector3.new(0,.5,0))
end)

KillingCheats:CreateButton("Remove Platform", function()
game.Workspace["PUURS"]:Destroy()
end)

if game:GetService("Players").LocalPlayer.PlayerGui.Extra:FindFirstChild("Local") then
            local plr       = game:GetService("Players").LocalPlayer
            local workspace = game:GetService("Workspace")
 
            plr.PlayerGui:WaitForChild("Extra"):WaitForChild("Local").Parent = game:GetService("Workspace")
            plr.PlayerGui:WaitForChild("Extra"):WaitForChild("Local").Parent = game:GetService("Workspace")
            plr.PlayerGui:WaitForChild("Extra"):WaitForChild("MobileFix").Parent = game:GetService("Workspace")
            plr.PlayerGui:WaitForChild("Extra"):WaitForChild("XboxFix").Parent = game:GetService("Workspace")
            wait()
            workspace:FindFirstChild("Local"):Destroy()
            workspace:FindFirstChild("Local"):Destroy()
            workspace:FindFirstChild("MobileFix"):Destroy()
            workspace:FindFirstChild("XboxFix"):Destroy()
            game.workspace.Borders.InvisibleBorder:remove()
            game.workspace.Lobby.KillPlates:remove()
 
            plr.CharacterAdded:Connect(function()
                plr.PlayerGui:WaitForChild("Extra"):WaitForChild("Local").Parent = game:GetService("Workspace")
                plr.PlayerGui:WaitForChild("Extra"):WaitForChild("Local").Parent = game:GetService("Workspace")
                plr.PlayerGui:WaitForChild("Extra"):WaitForChild("MobileFix").Parent = game:GetService("Workspace")
                plr.PlayerGui:WaitForChild("Extra"):WaitForChild("XboxFix").Parent = game:GetService("Workspace")
                wait()
                workspace:FindFirstChild("Local"):Destroy()
                workspace:FindFirstChild("Local"):Destroy()
                workspace:FindFirstChild("MobileFix"):Destroy()
                workspace:FindFirstChild("XboxFix"):Destroy()
            end)
        end

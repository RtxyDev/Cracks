--Library

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Veso Lux", 5013109572)

--Themes

local themes = {
	Background = Color3.fromRGB(24, 24, 24),
	Glow = Color3.fromRGB(0, 0, 0),
	Accent = Color3.fromRGB(10, 10, 10),
	LightContrast = Color3.fromRGB(20, 20, 20),
	DarkContrast = Color3.fromRGB(14, 14, 14),  
	TextColor = Color3.fromRGB(255, 255, 255)
}

--First Page

local page = venyx:addPage("Scripts")
local page2 = venyx:addPage("Player")
local page3 = venyx:addPage("Staff")
local theme = venyx:addPage("Theme")
local page4 = venyx:addPage("Credits")
local sektin = page3:addSection("Buttons")
local sektion = page2:addSection("Sliders")
local others = page2:addSection("Others")
local sektion2 = page2:addSection("Teleports & Stuff Things")
local section1 = page:addSection("Toggles")
local section2 = page:addSection("Buttons")
local section3 = page:addSection("Mine")
local section4 = page4:addSection("Credits")
local build = page3:addSection("Build")
local colors = theme:addSection("Colors")
local Sky = page3:addSection("Sky")


for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
	colors:addColorPicker(theme, color, function(color3)
		venyx:setTheme(theme, color3)
	end)
end

--SECTİON 1
section4:addButton("Hanki#9045", function()
	setclipboard("Hanki#9045")
end)
section4:addButton("Tameria#8990", function()
	setclipboard("Tameria#8990")
end)
section4:addButton("Egw#3660", function()
	setclipboard("Egw#3660")
end)
section4:addButton("ogxz'#0001", function()
	setclipboard("ogxz'#0001")
end)

--Collect Coins
_G.Coin = true
section1:addToggle("Collect Coins", nil, function(value)
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

ct={}
te=table.insert

local Player       = game.Players.LocalPlayer
local Char         = Player.Character
local settings     = {repeatamount = 1} 
_G.Dist            = 0
_G.SphereActivated = false 
setsimulationradius(math.huge,math.huge)
Char.Humanoid:UnequipTools()

te(ct,game:GetService("RunService").Stepped:Connect(function()
	local Player = game.Players.LocalPlayer
	local Char = Player.Character
	pcall(function()
		for i,v in pairs(game.Players:GetPlayers()) do 
			if v ~= Player then 
				if v.Character.Humanoid.Health ~= 0 then 
					if (v.Character.HumanoidRootPart.Position - Char.HumanoidRootPart.Position).Magnitude <= _G.Dist then 
						for _,x in pairs(v.Character:GetChildren()) do 
							if x:IsA("Part") then 
								for i = 1,settings.repeatamount do 
									firetouchinterest(Char:FindFirstChildOfClass("Tool").Handle, x, 0)
									firetouchinterest(Char:FindFirstChildOfClass("Tool").Handle, x, 1)
								end
							end
						end
					end
				end
			end
		end
	end)
end))


--Kill Aura
section1:addToggle("Kill Aura", nil, function(value)
	local z = game.Players.LocalPlayer.Character.Humanoid
	if value == true then
		_G.SphereActivated = true 
		_G.Dist = _G.Dist + 77.5
		game.StarterGui:SetCore("SendNotification", {
			Title = "Aura Enabled"; 
			Text     = "Script Enabled"; 
			Duration = 0.5;
		}) 
	end

	if value == false then
		_G.SphereActivated = false 
		_G.Dist = _G.Dist - 77.5
		game.StarterGui:SetCore("SendNotification", {
			Title = "Aura Disabled"; 
			Text  = "Script Disabled"; 
			Duration = 0.5;
		}) 
		for i,f in next, game:GetService("Workspace"):GetChildren() do
			if f.Name == 'Bruhh' then 
				f:Destroy()
			end
		end
		for i,v in pairs(game:GetService("CoreGui").RobloxGui.Modules:GetDescendants()) do 
			if v.Name == 'Sphere' then
				v:Destroy()
			end
		end
	end
end)

--Anti Fall
section1:addToggle("Platform", nil, function(value)
	if value == true then
		local baseplate    = Instance.new("Part")
		baseplate.Parent   = workspace
		baseplate.Name = "AntiFallPart"
		baseplate.Transparency = 0.5
		baseplate.Size     = Vector3.new(1500,1,1500)
		baseplate.Anchored = true
		baseplate.Position = Workspace.Lobby["Middle Room"].Floor.Base.Union.Position + Vector3.new(0,-110,0)
		baseplate.Material = Enum.Material.SmoothPlastic
	end
	if value == false then
		game.Workspace["AntiFallPart"]:Destroy()
	end
end)

--İnfinite Jump
_G.infinjump = false
section1:addToggle("infJump", nil, function(value)
	if value == true then
		_G.infinjump = true
		local Player = game:GetService("Players").LocalPlayer
		local Mouse = Player:GetMouse()
		Mouse.KeyDown:connect(function(k)
			if _G.infinjump then
				if k:byte() == 32 then
					Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
					Humanoid:ChangeState("Jumping")
					wait()
					Humanoid:ChangeState("Seated")
				end
			end

		end)
	end
	if value == false then
		if _G.infinjump == true then
			--        k = k:lower()
			_G.infinjump = false
		else

		end
	end
end)

section3:addButton("Autofarm Ores", function()
	if game.Players.LocalPlayer.Backpack:FindFirstChild("Axe") then
		game.Players.LocalPlayer.Backpack:FindFirstChild("Axe").Parent =
			game.Players.LocalPlayer.Character
	end
	if game.Players.LocalPlayer.Character:FindFirstChild("Axe") then
		game.Players.LocalPlayer.Character:FindFirstChild("Axe"):Activate()
	end
	local cpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

	local stuff = workspace:getDescendants()
	for i=1,#stuff do
		if stuff[i].Name == "Block" and stuff[i].Parent.Name == "Ores" then
			repeat
				wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = stuff[i].CFrame
				game.Players.LocalPlayer.Character.Axe.RemoteEvent:FireServer(stuff[i])
			until stuff[i].Name ~= "Block" or not game.Players.LocalPlayer.Character:findFirstChild("Axe")
		end
	end

	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
end)

section3:addButton("Autofarm Islands", function()
	if game.Players.LocalPlayer.Backpack:FindFirstChild("Axe") then
		game.Players.LocalPlayer.Backpack:FindFirstChild("Axe").Parent =
			game.Players.LocalPlayer.Character
	end
	if game.Players.LocalPlayer.Character:FindFirstChild("Axe") then
		game.Players.LocalPlayer.Character:FindFirstChild("Axe"):Activate()
	end
	local cpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

	local stuff = workspace:getDescendants()
	for i=1,#stuff do
		if stuff[i].Name == "Block" and stuff[i].Parent.Name == "Map" then
			repeat
				wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = stuff[i].CFrame
				game.Players.LocalPlayer.Character.Axe.RemoteEvent:FireServer(stuff[i])
			until stuff[i].Name ~= "Ores" or not game.Players.LocalPlayer.Character:findFirstChild("Axe")
		end
	end

	if stuff[i].Name == "Block" and stuff[i].Parent.Name == "Ores" then
		repeat
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = stuff[i].CFrame
			game.Players.LocalPlayer.Character.Axe.RemoteEvent:FireServer(stuff[i])
		until stuff[i].Name ~= "Block" or not game.Players.LocalPlayer.Character:findFirstChild("Axe")
	end


	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
end)

section3:addButton("Autofarm Blocks", function()
	if game.Players.LocalPlayer.Backpack:FindFirstChild("Axe") then
		game.Players.LocalPlayer.Backpack:FindFirstChild("Axe").Parent =
			game.Players.LocalPlayer.Character
	end
	if game.Players.LocalPlayer.Character:FindFirstChild("Axe") then
		game.Players.LocalPlayer.Character:FindFirstChild("Axe"):Activate()
	end
	wait()
	local cpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

	local stuff = workspace:getDescendants()
	for i=1,#stuff do
		if stuff[i].Name == "Block" and stuff[i].Parent.Name == "Blocks" then
			repeat
				wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = stuff[i].CFrame
				game.Players.LocalPlayer.Character.Axe.RemoteEvent:FireServer(stuff[i])
			until game.Players.LocalPlayer.Backpack.Block.Left.Value ~= 64 or not game.Players.LocalPlayer.Character:findFirstChild("Axe")
		end
	end

	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
end)

sektin:addButton("Auto Kill", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/EmeraldHearts/xd/main/autokill", true))()
end)

--Fe Shield
section2:addButton("Fe Shield (Need Shield!)", function()
	local Why      = game:GetService("Players").LocalPlayer
	local Char     = Why.Character
	local backpack = Why.Backpack

	Char.Humanoid:UnequipTools()
	wait()
	for i,v in next, backpack:GetDescendants() do
		if v:IsA("Tool") and v.Name =="Shield" then
			v.GripPos         = Vector3.new(0,10000,0)
			v.Handle.Massless = true
			v.Parent          = Char
			v:Activate()
			v.ShieldPotion:Destroy()
			v:Destroy()
		end
	end


end)

--Fix Fe Shield
section2:addButton("Fix Fe Shield", function()
	for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
		if v:IsA("ForceField") then
			v:Destroy()
		end
	end
end)

--Lobby Sword
section2:addButton("Lobby Sword", function()
	local xpos = game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.Position.X
	local ypos = game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.Position.Y
	local zpos = game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.Position.Z

	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-116, 165, 108)
	wait(0.1)
	if game.Players.LocalPlayer.Backpack:FindFirstChild("Sword") then
		game.Players.LocalPlayer.Backpack:FindFirstChild("Sword").Parent =
			game.Players.LocalPlayer.Character
	end
	if game.Players.LocalPlayer.Character:FindFirstChild("Sword") then
		game.Players.LocalPlayer.Character:FindFirstChild("Sword"):Activate()
	end
	wait(0.1)
	local cu = game:GetService("VirtualUser")
	cu:ClickButton1(Vector2.new(500,0))
	wait(0.1)
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(xpos, ypos, zpos)
end)

--Free Vips
section2:addButton("Free Vips", function()
	AdriPart = game.workspace.Lobby["Mega VIP Room"].Teleport.Enter["Teleporter B"]
	AdriPart:Clone().Parent = game.workspace.Lobby["Mega VIP Room"].Teleport.Enter
	game.workspace.Lobby["Mega VIP Room"].Teleport.Enter["Teleporter B"]:Destroy()
	wait()
	game.workspace.Lobby["Mega VIP Room"].Teleport.Enter["Teleporter B"].Touched:Connect(function(hit)
    	local player = game.Players:GetPlayerFromCharacter(hit.Parent)
    	player.Character.HumanoidRootPart.CFrame = CFrame.new(-1.06104672, 264, 72.2138901)
	end)

	AdriPart2 = game:GetService("Workspace").Lobby["VIP Room"].Teleport.Enter["Teleporter A"]
	AdriPart2:Clone().Parent = game:GetService("Workspace").Lobby["VIP Room"].Teleport.Enter
	game:GetService("Workspace").Lobby["VIP Room"].Teleport.Enter["Teleporter A"]:Destroy()
	wait()
	game:GetService("Workspace").Lobby["VIP Room"].Teleport.Enter["Teleporter A"].Touched:Connect(function(hit)
    	local player = game.Players:GetPlayerFromCharacter(hit.Parent)
    	player.Character.HumanoidRootPart.CFrame = CFrame.new(0.324219227, 264, -69.9828949)
	end)  
	venyx:Notify("Free Vips", "Enabled")
end)

--Fling Everyone
section2:addButton("Fling Everyone", function()
	local Adrix        = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	wait(0.01)
	ZZ = game:GetService('RunService').Stepped:connect(function()
		for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
			if v:IsA("BasePart") then 
				v.CanCollide = false
			end
		end
	end)
	local BG = Instance.new('BodyGyro', game:GetService("Players").LocalPlayer.Character.Torso)
	local BV     = Instance.new('BodyVelocity', game:GetService("Players").LocalPlayer.Character.Torso)
	BG.P         = 9e4
	BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
	BG.cframe    = game:GetService("Players").LocalPlayer.Character.Torso.CFrame
	BV.velocity  = Vector3.new(0, 3.75, 0)
	BV.maxForce  = Vector3.new(9e9, 9e9, 9e9)
	wait()
	NoLol = game:GetService('RunService').Heartbeat:connect(function()
		for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
			if v:IsA("BasePart") and v.Name ~="Torso" then 
				v.Velocity = Vector3.new(0,-2333333,0)
			end
		end
	end)
	XD = game:GetService("Players").LocalPlayer
	 
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
			if v.Name ~= XD.Name then
				if v.Character:FindFirstChild('Role') and v.Character:FindFirstChild('Torso') then
					wait(0.1)
					XD.Character:FindFirstChild('HumanoidRootPart').CFrame = v.Character:FindFirstChild('HumanoidRootPart').CFrame + Vector3.new(0,-3.9,0)
					wait(0.1)
					XD.Character:FindFirstChild('HumanoidRootPart').CFrame = v.Character:FindFirstChild('HumanoidRootPart').CFrame + Vector3.new(0,4,0)
					wait(0.1)
				end 
			end    
		end
		wait(0.2)
		ZZ:Disconnect()
	 
		NoLol:Disconnect()
		wait(0.1)
		BG:Destroy()
		BV:Destroy()
		game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = Adrix
		game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').PlatformStand = true
		wait()
		game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').PlatformStand = false	
end)

--No Collide Blocks
section2:addButton("NoCollideBlocks", function()
	local Why = game:GetService("Players").LocalPlayer
	local Char = Why.Character
	local backpack = Why.Backpack

	backpack.Block.Parent =  Why.Character
	Char.Block.Left:Destroy()
	Char.Block.Parent = Why.Backpack
end)

--ArmorInvisibleBody
section2:addButton("ArmorInvisibleBody", function()
	if game:GetService("Players").LocalPlayer.Character:FindFirstChild("kakaz")==nil then
		if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Role")==nil then
			Alol = Instance.new("SelectionBox",game:GetService("Players").LocalPlayer.Character)
			Alol.Name = "kakaz"
			for i,v in next, game:GetService("Workspace").Regen.Purchases:FindFirstChild("MVPurchases"):GetDescendants() do 
				if v:IsA("Part") and v.Name =="Button" and v:FindFirstChild("TouchInterest") then
					firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head,v, 0)
					firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head,v, 1)
				end
			end

			for i,v in next, game:GetService("Workspace").Regen.Purchases:FindFirstChild("MVPurchases"):GetDescendants() do 
				if v:IsA("Part") and v.Name =="SWHelmet" then
					firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head,v, 0)
					firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head,v, 1)
				end
			end
			--wait(0.6)
			game.Players.LocalPlayer.Character:WaitForChild("Leg2")
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chest"):Destroy()
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Arm1"):Destroy()
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Arm2"):Destroy()
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leg1"):Destroy()
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leg2"):Destroy()
			wait()
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Left Arm"):Destroy()
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("SWHelmet").Handle:Destroy()
		else
			game.StarterGui:SetCore("SendNotification", {
				Title    = " Not work?"; 
				Text     = "."; 
				Duration = 0.8;
			})
		end
	else
		game.StarterGui:SetCore("SendNotification", {
			Title    = " Not work?"; 
			Text     = "."; 
			Duration = 0.8;
		})
	end
end)


--AntiRoundFinishKill
section2:addButton("AntiRoundFinishKill", function()
	if game:GetService("Workspace").Terrain:FindFirstChild("Seat")==nil then
		ct    = {}
		game.StarterGui:SetCore("SendNotification", {Title = "Enabled"; Text = ""; Duration = 3;})    
		sound = Instance.new("Seat", game:GetService("Workspace").Terrain)
		table.insert(ct,game:GetService("RunService").Stepped:Connect(function()
			if game:GetService("Workspace").timer.Value < 1 or game:GetService("Workspace").plrsLeft.Value < 2 then
				game.StarterGui:SetCore("SendNotification", {
					Title    = "round finished"; 
					Text     = ""; 
					Duration = 3;
				})         
				for i,v in pairs(ct) do v:Disconnect() end
				sound:Destroy()
				wait(2.3)
				game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8, 268, 6)
				for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v:IsA("Tool") then
						v.Parent = game.Players.LocalPlayer.Character
					end
				end
			end
		end))
	else
		game.StarterGui:SetCore("SendNotification", {Title = "Really Executed"; Text = ""; Duration = 3;})    
	end
end)

--Bypass
section2:addButton("Bypass", function()
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
		game.workspace.Borders.InvisibleBorder:Destroy()
		game.workspace.Lobby.KillPlates:Destroy()
		venyx:Notify("Bypass", "Bypassed")

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
	else
		venyx:Notify("Really", "Bypassed")           
	end
end)


--Undermıne Aura Key
section3:addKeybind("Undermine Aura", Enum.KeyCode.Insert, function()
		function onTouched(part)       
			local h = part
			if h.Name == "Block" then
				game:GetService("Players").LocalPlayer.Backpack.Axe.RemoteEvent:FireServer(h)  
			end
		end
		Partz              = Instance.new("Part")
		Partz.Parent       = workspace
		Partz.Transparency = 1
		Partz.CanCollide   = false
		Partz.Massless     = true
		Partz.Position     = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,9,0)
		Partz.Size         = Vector3.new(25,25,25)

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
end)

sektion:addSlider("Walkspeed", 16, 16, 100, function(value)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (value)
end)

sektion:addSlider("JumpPower", 50, 50, 100, function(value)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = (value)
end)

sektion:addSlider("Hitbox", 2, 2, 30, function(value)
	for i,v in pairs(game.Players:GetChildren()) do
		if v.Name ~= game.Players.LocalPlayer.Name then
			v.Character.HumanoidRootPart.Transparency = 0.5
			v.Character.HumanoidRootPart.Size         = Vector3.new((value),(value),(value))
			v.Character.HumanoidRootPart.Material     = "Plastic"
			v.Character.HumanoidRootPart.BrickColor   = BrickColor.new("Really blue")
			v.Character.HumanoidRootPart.CanCollide   = false
		end
	end
end)


others:addButton("HealthNotification", function()
	local z = game.Players.LocalPlayer.Character.Humanoid


	game.StarterGui:SetCore("SendNotification", {
		Title    = "YourHealth is: "..z.Health; 
		Text     = "MaxHealth: "..z.MaxHealth; 
		Duration = 3;
	})  
end)

others:addButton("EnableChristmas", function()
	local clickdetector = game:GetService("Workspace").EnableChristmas.ClickDetector

	fireclickdetector(clickdetector)
end)

others:addButton("ToggleNight", function()
	local clickdetector = game:GetService("Workspace").ToggleNight.ClickDetector

	fireclickdetector(clickdetector)
end)

others:addButton("Equiptools", function()
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = game.Players.LocalPlayer.Character
		end
	end
end)

others:addButton("NoRole", function()
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("BoolValue") then
			v:Destroy()
		end
	end
end)

others:addButton("AntiVoidKill", function()
	workspace.FallenPartsDestroyHeight = -math.huge
end)

others:addButton("Toxic", function()
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ucube","All")
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("fukara","All")
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("kürt","All")
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ez","All")
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("totali 0","All")
end)

colors:addKeybind("Toggle Keybind", Enum.KeyCode.E, function()
	venyx:toggle()
end, function()
end)
--
sektion2:addButton("Lobby", function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2, 268, 1)
end)

sektion2:addButton("Vip", function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0.324219227, 264, -69.9828949)
end)

sektion2:addButton("Mega vip", function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1.06104672, 264, 72.2138901)
end)



sektin:addButton("Circle Attack", function()
	for i, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = game:GetService("Players").LocalPlayer.Character
		end
	end
	for i, v in pairs(game:GetService "Players".LocalPlayer.Character:GetChildren()) do
		if v:isA("Tool") then
			v.GripPos = Vector3.new(7, 0, 3)
		end
	end
end)

sektin:addButton("Magic Sword", function()
	for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
		if v:isA("Tool") then
			v.Handle.Mesh:Destroy()
			lplayer.Character.Humanoid:UnequipTools()
		end
	end
end)

sektin:addButton("FakeAxe", function()
	local Players       = game:GetService("Players")
	local localPlayer   = Players.LocalPlayer
	local backpack      = localPlayer:WaitForChild("Backpack")
	local tool          = Instance.new("Tool")
	tool.RequiresHandle = false
	tool.CanBeDropped   = true
	tool.Parent         = backpack
	tool.Name           = "FakeAxe"
	tool.Equipped:Connect(function(mouse)
		mouse.Button1Down:Connect(function()
			if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Block") then
				if mouse.Target and mouse.Target.Parent then
					local Adrix = {
						[1] = mouse.Target
					}

					game:GetService("Players").LocalPlayer.Backpack.Axe.RemoteEvent:FireServer(unpack(Adrix))  
				end
			end
		end)
	end)
end)

sektin:addButton("FakeBlock", function()
	local Players       = game:GetService("Players")
	local localPlayer   = Players.LocalPlayer
	local backpack      = localPlayer:WaitForChild("Backpack")
	local tool          = Instance.new("Tool")
	tool.RequiresHandle = false
	tool.CanBeDropped   = true
	tool.Parent         = backpack
	tool.Name           = "FakeBlock"
	tool.Equipped:Connect(function(mouse)
		mouse.Button1Down:Connect(function()
			if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Block") then
				if mouse.Target and mouse.Target.Parent then
					game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(mouse.Target,Enum.NormalId.Right)
					game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(mouse.Target,Enum.NormalId.Left)
					game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(mouse.Target,Enum.NormalId.Back)
					game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(mouse.Target,Enum.NormalId.Front)
				end
			end
		end)
	end)
end)

build:addButton("Undermine", function()
		function onTouched(part)       
			local h = part
			if h.Name == "Block" then
				game:GetService("Players").LocalPlayer.Backpack.Axe.RemoteEvent:FireServer(h)  
			end
		end
		Partz              = Instance.new("Part")
		Partz.Parent       = workspace
		Partz.Transparency = 1
		Partz.CanCollide   = false
		Partz.Massless     = true
		Partz.Position     = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,9,0)
		Partz.Size         = Vector3.new(25,25,25)

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
end)

Sky:addButton("Pink Sky", function()
	function sandbox(var,func)
		local env = getfenv(func)
		local newenv = setmetatable({},{
			__index = function(self,k)
				if k=="script" then
					return var
				else
					return env[k]
				end
			end,
		})
		setfenv(func,newenv)
		return func
	end
	cors = {}
	mas = Instance.new("Model",game:GetService("Lighting"))
	Sky0 = Instance.new("Sky")
	Sky0.Parent = mas
	Sky0.CelestialBodiesShown = false
	Sky0.SkyboxBk = "rbxassetid://271042516"
	Sky0.SkyboxDn = "rbxassetid://271077243"
	Sky0.SkyboxFt = "rbxassetid://271042556"
	Sky0.SkyboxLf = "rbxassetid://271042310"
	Sky0.SkyboxRt = "rbxassetid://271042467"
	Sky0.SkyboxUp = "rbxassetid://271077958"
	for i,v in pairs(mas:GetChildren()) do
		v.Parent = game:GetService("Lighting")
		pcall(function() v:MakeJoints() end)
	end
	mas:Destroy()
	for i,v in pairs(cors) do
		spawn(function()
			pcall(v)
		end)
	end
end)

Sky:addButton("Purple Sky", function()
	function sandbox(var,func)
		local env = getfenv(func)
		local newenv = setmetatable({},{
			__index = function(self,k)
				if k=="script" then
					return var
				else
					return env[k]
				end
			end,
		})
		setfenv(func,newenv)
		return func
	end
	cors = {}
	mas = Instance.new("Model",game:GetService("Lighting"))
	Sky0 = Instance.new("Sky")
	Sky0.Parent = mas
	Sky0.CelestialBodiesShown = false
	Sky0.SkyboxBk = "rbxassetid://570557514"
	Sky0.SkyboxDn = "rbxassetid://570557775"
	Sky0.SkyboxFt = "rbxassetid://570557559"
	Sky0.SkyboxLf = "rbxassetid://570557620"
	Sky0.SkyboxRt = "rbxassetid://570557672"
	Sky0.SkyboxUp = "rbxassetid://570557727"
	for i,v in pairs(mas:GetChildren()) do
		v.Parent = game:GetService("Lighting")
		pcall(function() v:MakeJoints() end)
	end
	mas:Destroy()
	for i,v in pairs(cors) do
		spawn(function()
			pcall(v)
		end)
	end
end)

Sky:addButton("Vibe Sky", function()
	cors = {}
	mas = Instance.new("Model",game:GetService("Lighting"))
	Sky0 = Instance.new("Sky")
	Sky0.Parent = mas
	Sky0.CelestialBodiesShown = false
	Sky0.SkyboxBk = "rbxassetid://159067838"
	Sky0.SkyboxDn = "rbxassetid://159067646"
	Sky0.SkyboxFt = "rbxassetid://159067838"
	Sky0.SkyboxLf = "rbxassetid://159067744"
	Sky0.SkyboxRt = "rbxassetid://159067744"
	Sky0.SkyboxUp = "rbxassetid://159067921"
	for i,v in pairs(mas:GetChildren()) do
		v.Parent = game:GetService("Lighting")
		pcall(function() v:MakeJoints() end)
	end
	mas:Destroy()
	for i,v in pairs(cors) do
		spawn(function()
			pcall(v)
		end)
	end
end)

build:addButton("Barrier", function()
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
	Partz.Size         = Vector3.new(8,27,1)
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



-------------
-- SREXLİA --
-------------

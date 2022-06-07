local plrs = game:GetService("Players")
local https = game:GetService("HttpService")
local plr = plrs.LocalPlayer


--script here

local Library = loadstring(game:HttpGet("https://gist.githubusercontent.com/SHEESHAhmet/3f84a5cb6183a2d7bcbcfb6ce588caff/raw/477ceec7c213342659f335c43f410fffad9fa766/uilib", true))()
local main = Library:Window("Veso Lux", "Skywars")
local HomeTab = main:Tab("Home")
Library:Notify("Veso Lux Loaded!", "Welcome To Veso Lux", "Continueee!")
Library:Load("Veso Lux Loaded!", "Welcome To Veso Lux",function()
	print("lol")
end)

--Firstly

--AntiCheat
function bypass()

	game.RunService.Stepped:Connect(
		function()
			pcall(
				function()
					for i, v in pairs(game.StarterGui:GetDescendants()) do
						if v.Name == "Extra" then
							v:Destroy()
						end
					end
					for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
						if v.Name == "Extra" then
							v:Destroy()
						end
					end
					for i, v in pairs(game.Workspace.Lobby:GetDescendants()) do
						if v.Name == "KillPlates" then
							v:Destroy()
						end
					end
					for i, v in pairs(game:GetService("Workspace").GameStorage.Coins:GetChildren()) do
						wait(0.1)
						v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					end
				end
			)
		end
	)
end
bypass()
print("AntiCheatBypassed")
---------------------

_G.Coin = true
HomeTab:Toggle("Collect Coins", nil, function(value)
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

--İnfinite Jump
_G.infinjump = false
HomeTab:Toggle("infJump",  function(value)
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


HomeTab:line()

HomeTab:Dropdown(
	"Autofarm Dropdown",
	{"Autofarm Ores", "Autofarm Blocks", "Autofarm Islands", "Auto Kill", "Fast Autofarm Ores"},
	function(currentOption)
		if currentOption == "Autofarm Ores" then
			if game.Players.LocalPlayer.Backpack:FindFirstChild("Axe") then
				game.Players.LocalPlayer.Backpack:FindFirstChild("Axe").Parent = game.Players.LocalPlayer.Character
			end
			if game.Players.LocalPlayer.Character:FindFirstChild("Axe") then
				game.Players.LocalPlayer.Character:FindFirstChild("Axe"):Activate()
			end
			local cpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

			local stuff = workspace:getDescendants()
			for i = 1, #stuff do
				if stuff[i].Name == "Block" and stuff[i].Parent.Name == "Ores" then
					repeat
						wait()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = stuff[i].CFrame
						game.Players.LocalPlayer.Character.Axe.RemoteEvent:FireServer(stuff[i])
					until stuff[i].Name ~= "Block" or not game.Players.LocalPlayer.Character:findFirstChild("Axe")
				end
			end

			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
		end

		if currentOption == "Autofarm Blocks" then
			if game.Players.LocalPlayer.Backpack:FindFirstChild("Axe") then
				game.Players.LocalPlayer.Backpack:FindFirstChild("Axe").Parent = game.Players.LocalPlayer.Character
			end
			if game.Players.LocalPlayer.Character:FindFirstChild("Axe") then
				game.Players.LocalPlayer.Character:FindFirstChild("Axe"):Activate()
			end
			local cpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

			local stuff = workspace:getDescendants()
			for i = 1, #stuff do
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
		end

		if currentOption == "Autofarm Islands" then
			if game.Players.LocalPlayer.Backpack:FindFirstChild("Axe") then
				game.Players.LocalPlayer.Backpack:FindFirstChild("Axe").Parent = game.Players.LocalPlayer.Character
			end
			if game.Players.LocalPlayer.Character:FindFirstChild("Axe") then
				game.Players.LocalPlayer.Character:FindFirstChild("Axe"):Activate()
			end
			wait()
			local cpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

			local stuff = workspace:getDescendants()
			for i = 1, #stuff do
				if stuff[i].Name == "Block" and stuff[i].Parent.Name == "Blocks" then
					repeat
						wait()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = stuff[i].CFrame
						game.Players.LocalPlayer.Character.Axe.RemoteEvent:FireServer(stuff[i])
					until game.Players.LocalPlayer.Backpack.Block.Left.Value ~= 64 or
						not game.Players.LocalPlayer.Character:findFirstChild("Axe")
				end
			end

			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
		end

		if currentOption == "Auto Kill" then
			local function GetClosest()
				local Character = game.Players.LocalPlayer.Character
				local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
				if not (Character or HumanoidRootPart) then
					return
				end

				local TargetDistance = math.huge
				local Target

				for i, v in ipairs(game.Players:GetPlayers()) do
					if
						v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and
						v.Character:FindFirstChild("Sword") or
						v.Backpack:FindFirstChild("Sword")
					then
						local TargetHRP = v.Character.HumanoidRootPart
						local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
						if mag < TargetDistance then
							TargetDistance = mag
							Target = v
						end
					end
				end

				return Target
			end

			while true do
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Sword") then
					game.Players.LocalPlayer.Backpack:FindFirstChild("Sword").Parent =
						game.Players.LocalPlayer.Character
				end
				if game.Players.LocalPlayer.Character:FindFirstChild("Sword") then
					game.Players.LocalPlayer.Character:FindFirstChild("Sword"):Activate()
				end
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
					GetClosest().Character.HumanoidRootPart.CFrame - Vector3.new(0, 5.3, 0) +
					GetClosest().Character.HumanoidRootPart.CFrame.lookVector * -4.005
				wait()
			end
		end

		if currentOption == "Fast Autofarm Ores" then
			game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
			if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Axe") then
				---
				local Adrix = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
				game.Players.LocalPlayer.Backpack["Axe"].Parent = game:GetService("Players").LocalPlayer

				local BG = Instance.new("BodyGyro", game:GetService("Players").LocalPlayer.Character.Torso)
				local BV = Instance.new("BodyVelocity", game:GetService("Players").LocalPlayer.Character.Torso)
				BG.P = 9e4
				BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
				BG.cframe = game:GetService("Players").LocalPlayer.Character.Torso.CFrame
				BV.velocity = Vector3.new(0, 0, 0)
				BV.maxForce = Vector3.new(9e9, 9e9, 9e9)

				function onTouched(part)
					local h = part
					if h.Name == "Block" and h.Parent.Name == "Ores" then
						game.Players.LocalPlayer["Axe"].RemoteEvent:FireServer(h)
					end
				end

				function AdriIsABaby()
					Partz = Instance.new("Part")
					Partz.Parent = workspace
					Partz.Transparency = 1
					Partz.CanCollide = false
					Partz.Massless = true
					Partz.Position = game.Players.LocalPlayer.Character.Head.Position
					Partz.Size = Vector3.new(34, 38, 34)

					local bruh = Partz.Touched:connect(onTouched)
					wait()
					bruh:Disconnect()
					Partz:Destroy()
				end

				function ban()
					AdriIsABaby()
				end
				game:GetService("Players").LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0, 10, 0)
				function Time()
					wait(0.0019)
				end
				ct = {}
				for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
					if v:IsA("BasePart") then
						table.insert(
							ct,
							game:GetService("RunService").Stepped:connect(
							function()
								v.CanCollide = false
							end
							)
						)
					end
				end
				local plr = game.Players.LocalPlayer

				function ah()
					BG:Destroy()
					BV:Destroy()
					plr.Character.Humanoid.PlatformStand = false
					for i, v in pairs(ct) do
						v:Disconnect()
					end
				end

				for i, v in next, workspace:GetDescendants() do
					if v.Name == "Block" and v.Parent.Name == "Ores" then
						plr.Character.Humanoid.PlatformStand = true
						repeat
							Time()
							ban()
							plr.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0, 1, 0)
						until v.Name ~= "Block" or not plr:FindFirstChild("Axe")
						Time()
					end
				end

				plr:FindFirstChild("Axe").Parent = plr.Backpack
				game.StarterGui:SetCore(
					"SendNotification",
					{
						Title = "No blocks in game..",
						Text = "",
						Duration = 3
					}
				)
				ah()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Adrix
				game:GetService("Players").LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0, 0, 0)
				plr:FindFirstChild("Axe").Parent = plr.Backpack
			else
				game.StarterGui:SetCore(
					"SendNotification",
					{
						Title = "Ok.",
						Text = "",
						Duration = 0.5
					}
				)
			end
		end
	end
)

HomeTab:line()

HomeTab:Slider(
	"Speed",
	16,
	500,
	function(rg)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = rg
	end
)
HomeTab:Slider(
	"JumpPower",
	50,
	500,
	function(rg)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = rg
	end
)
HomeTab:Slider(
	"Hitbox",
	2,
	60,
	function(value)
		for i, v in pairs(game.Players:GetChildren()) do
			if v.Name ~= game.Players.LocalPlayer.Name then
				v.Character.HumanoidRootPart.Transparency = 0.5
				v.Character.HumanoidRootPart.Size = Vector3.new((value), (value), (value))
				v.Character.HumanoidRootPart.Material = "Plastic"
				v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
				v.Character.HumanoidRootPart.CanCollide = false
			end
		end
	end
)

HomeTab:Bind(
	"UI Keybind",
	Enum.KeyCode.E,
	function()
		Library:ToggleUI()
	end
)

local ScriptTab = main:Tab("Scripts")
ScriptTab:Button(
	"Collect Coins",
	function()
		while true do
			if game:GetService("Workspace").GameStorage.Coins:FindFirstChild("Coin") then
				for _, f in pairs(game:GetService("Workspace").GameStorage.Coins.Coin:GetDescendants()) do
					firetouchinterest(game.Players.LocalPlayer.Character.Head, f.Parent, 0)
					firetouchinterest(game.Players.LocalPlayer.Character.Head, f.Parent, 1)
				end
			end
			wait()
		end
	end
)


ScriptTab:Toggle(
	"Create No Die Part ",
	function(val)
		if val == true then
			for i,v in pairs(game.Workspace:GetDescendants()) do
				if v.Name == "AntiFall" then
					v:Destroy()
				end
			end
			local BuildPart = Instance.new("Part")
			BuildPart.Size = Vector3.new(2048, 55, 2048)
			BuildPart.Position = Vector3.new(-8, 233.489, -24)
			BuildPart.Parent = game.Workspace
			BuildPart.Anchored = true
			BuildPart.Transparency = 0.9
			BuildPart.Name = "AntiFall"
			BuildPart.BrickColor = BrickColor.new("Bright bluish green")
			BuildPart.Material = Enum.Material.SmoothPlastic
			wait(1)
			local Brick = game.Workspace.AntiFall
			local speed = 1
			while true do
				for i = 0,1,0.001*speed do
					Brick.Color = Color3.fromHSV(i,1,1)
					wait()
				end
				if val == false then
					break
				end
			end
		end

		if val == false then
			for i,v in pairs(game.Workspace:GetDescendants()) do
				if v.Name == "AntiFall" then
					v:Destroy()
				end
			end
		end

	end
)



ScriptTab:line()

ScriptTab:Button(
	"Fe Shield (Need Shield!)",
	function()
		local Why = game:GetService("Players").LocalPlayer
		local Char = Why.Character
		local backpack = Why.Backpack

		Char.Humanoid:UnequipTools()
		wait()
		for i, v in next, backpack:GetDescendants() do
			if v:IsA("Tool") and v.Name == "Shield" then
				v.GripPos = Vector3.new(0, 10000, 0)
				v.Handle.Massless = true
				v.Parent = Char
				v:Activate()
				v.ShieldPotion:Destroy()
				v:Destroy()
			end
		end
	end
)

ScriptTab:Button(
	"Fix Fe Shield",
	function()
		for i, v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
			if v:IsA("ForceField") then
				v:Destroy()
			end
		end
	end
)

local StaffTab = main:Tab("Staff")
StaffTab:Button(
	"Barrier",
	function()
		function onTouched(part)
			local h = part
			if h.Name == "Block" then
				game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(h, Enum.NormalId.Top)
			end
		end
		Partz = Instance.new("Part")
		Partz.Parent = workspace
		Partz.Transparency = 1
		Partz.CanCollide = false
		Partz.Massless = true
		Partz.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 51, 0)
		Partz.Size = Vector3.new(40, 40, 40)
		Partz.CFrame =
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame +
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 3.5

		local light = Instance.new("SelectionBox")
		light.Adornee = Partz
		light.LineThickness = 0.05
		light.Color3 = Color3.fromRGB(17, 17, 257)
		light.Parent = Partz
		light.Name = "SelectBox"

		local bruh = Partz.Touched:connect(onTouched)
		wait()
		bruh:Disconnect()
		Partz:Destroy()
	end
)

StaffTab:Button(
	"AntiRoundKill",
	function()
		for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("BoolValue") then
				v:Destroy()
			end
		end

		if game:GetService("Workspace").Terrain:FindFirstChild("Seat") == nil then
			ct = {}
			game.StarterGui:SetCore("SendNotification", {Title = "Enabled", Text = "", Duration = 3})
			sound = Instance.new("Seat", game:GetService("Workspace").Terrain)
			table.insert(
				ct,
				game:GetService("RunService").Stepped:Connect(
				function()
					if
						game:GetService("Workspace").timer.Value < 1 or
						game:GetService("Workspace").plrsLeft.Value < 2
					then
						game.StarterGui:SetCore(
							"SendNotification",
							{
								Title = "round finished",
								Text = "",
								Duration = 3
							}
						)
						for i, v in pairs(ct) do
							v:Disconnect()
						end
						sound:Destroy()
						wait(2.3)
						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
							CFrame.new(-8, 268, 6)
						for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
							if v:IsA("Tool") then
								v.Parent = game.Players.LocalPlayer.Character
							end
						end
					end
				end
				)
			)
		else
			game.StarterGui:SetCore("SendNotification", {Title = "Really Executed", Text = "", Duration = 3})
			game:GetService("Players").LocalPlayer.PlayerGui.Extra.Local:Destroy()
			game:GetService("Players").LocalPlayer.PlayerGui.Extra.Local:Destroy()
		end
	end
)

StaffTab:Button(
	"NOcollide Block",
	function()
		local Why = game:GetService("Players").LocalPlayer
		local Char = Why.Character
		local backpack = Why.Backpack

		backpack.Block.Parent = Why.Character
		Char.Block.Left:Destroy()
		Char.Block.Parent = Why.Backpack
	end
)

StaffTab:Toggle(
	"Stair",
	function(state)
		if state == true then
			game:GetObjects("rbxassetid://9684449644")[1].Parent = game.Workspace

			local b = Instance.new("Part")
			b.Parent = game.Workspace.Model1212121331312
			b.Position = Vector3.new(116.075, 153.975, -77.968)
			b.Size = Vector3.new(1, 24, 13)
			b.Anchored = true
			b.CanCollide = true
			b.Name = "Stair2"
			b.Rotation = Vector3.new(-45, 90, 0)

			local c = Instance.new("Part")
			c.Parent = game.Workspace.Model1212121331312
			c.Position = Vector3.new(116.075, 153.975, -13.968)
			c.Size = Vector3.new(1, 24, 13)
			c.Anchored = true
			c.CanCollide = true
			c.Name = "Stair3"
			c.Rotation = Vector3.new(45, 90, 0)

			local d = Instance.new("Part")
			d.Parent = game.Workspace.Model1212121331312
			d.Position = Vector3.new(86.0749, 153.975, 0.0319977)
			d.Size = Vector3.new(1, 24, 13)
			d.Anchored = true
			d.CanCollide = true
			d.Name = "Stair4"
			d.Rotation = Vector3.new(0, 0, -45)

			local e = Instance.new("Part")
			e.Parent = game.Workspace.Model1212121331312
			e.Position = Vector3.new(86.0749, 153.975, -107.968)
			e.Size = Vector3.new(1, 24, 13)
			e.Anchored = true
			e.CanCollide = true
			e.Name = "Stair5"
			e.Rotation = Vector3.new(0, 0, -45)

			local f = Instance.new("Part")
			f.Parent = game.Workspace.Model1212121331312
			f.Position = Vector3.new(116.075, 153.975, 30.032)
			f.Size = Vector3.new(1, 24, 13)
			f.Anchored = true
			f.CanCollide = true
			f.Name = "Stair6"
			f.Rotation = Vector3.new(-45, -90, 0)

			local a = Instance.new("Part")
			a.Parent = game.Workspace.Model1212121331312
			a.Position = Vector3.new(116.075, 153.975, 94.032)
			a.Size = Vector3.new(1, 24, 13)
			a.Anchored = true
			a.CanCollide = true
			a.Name = "Stair1"
			a.Rotation = Vector3.new(45, 90, 0)

			local g = Instance.new("Part")
			g.Parent = game.Workspace.Model1212121331312
			g.Position = Vector3.new(86.0749, 153.975, 124.032)
			g.Size = Vector3.new(1, 24, 13)
			g.Anchored = true
			g.CanCollide = true
			g.Name = "Stair7"
			g.Rotation = Vector3.new(0, 0, -45)

			local h = Instance.new("Part")
			h.Parent = game.Workspace.Model1212121331312
			h.Position = Vector3.new(22.0749, 153.975, 124.032)
			h.Size = Vector3.new(1, 24, 13)
			h.Anchored = true
			h.CanCollide = true
			h.Name = "Stair8"
			h.Rotation = Vector3.new(180, 0, 135)

			local i = Instance.new("Part")
			i.Parent = game.Workspace.Model1212121331312
			i.Position = Vector3.new(8.075, 153.975, 94.032)
			i.Size = Vector3.new(1, 24, 13)
			i.Anchored = true
			i.CanCollide = true
			i.Name = "Stair9"
			i.Rotation = Vector3.new(45, 90, 0)

			local j = Instance.new("Part")
			j.Parent = game.Workspace.Model1212121331312
			j.Position = Vector3.new(-21.9251, 153.975, 124.032)
			j.Size = Vector3.new(1, 24, 13)
			j.Anchored = true
			j.CanCollide = true
			j.Name = "Stair10"
			j.Rotation = Vector3.new(0, 0, -45)

			local k = Instance.new("Part")
			k.Parent = game.Workspace.Model1212121331312
			k.Position = Vector3.new(-85.9251, 153.975, 124.032)
			k.Size = Vector3.new(1, 24, 13)
			k.Anchored = true
			k.CanCollide = true
			k.Name = "Stair11"
			k.Rotation = Vector3.new(180, 0, 135)

			local l = Instance.new("Part")
			l.Parent = game.Workspace.Model1212121331312
			l.Position = Vector3.new(-115.925, 153.975, 94.032)
			l.Size = Vector3.new(1, 24, 13)
			l.Anchored = true
			l.CanCollide = true
			l.Name = "Stair12"
			l.Rotation = Vector3.new(45, -90, 0)

			local m = Instance.new("Part")
			m.Parent = game.Workspace.Model1212121331312
			m.Position = Vector3.new(-115.925, 153.975, 30.032)
			m.Size = Vector3.new(1, 24, 13)
			m.Anchored = true
			m.CanCollide = true
			m.Name = "Stair13"
			m.Rotation = Vector3.new(-45, 90, 0)

			local n = Instance.new("Part")
			n.Parent = game.Workspace.Model1212121331312
			n.Position = Vector3.new(-85.9251, 153.975, 16.032)
			n.Size = Vector3.new(1, 24, 13)
			n.Anchored = true
			n.CanCollide = true
			n.Name = "Stair14"
			n.Rotation = Vector3.new(180, 0, 135)

			local aw = Instance.new("Part")
			aw.Parent = game.Workspace.Model1212121331312
			aw.Position = Vector3.new(-115.925, 153.975, -14.968)
			aw.Size = Vector3.new(1, 24, 13)
			aw.Anchored = true
			aw.CanCollide = true
			aw.Name = "Stair15"
			aw.Rotation = Vector3.new(45, -90, 0)

			local qwe = Instance.new("Part")
			qwe.Parent = game.Workspace.Model1212121331312
			qwe.Position = Vector3.new(-115.925, 153.975, -77.968)
			qwe.Size = Vector3.new(1, 24, 13)
			qwe.Anchored = true
			qwe.CanCollide = true
			qwe.Name = "Stair16"
			qwe.Rotation = Vector3.new(-45, 90, 0)

			local ew = Instance.new("Part")
			ew.Parent = game.Workspace.Model1212121331312
			ew.Position = Vector3.new(-85.9251, 153.975, -107.968)
			ew.Size = Vector3.new(1, 24, 13)
			ew.Anchored = true
			ew.CanCollide = true
			ew.Name = "Stair17"
			ew.Rotation = Vector3.new(180, 0, 135)

			local we = Instance.new("Part")
			we.Parent = game.Workspace.Model1212121331312
			we.Position = Vector3.new(-21.9251, 153.975, -107.968)
			we.Size = Vector3.new(1, 24, 13)
			we.Anchored = true
			we.CanCollide = true
			we.Name = "Stair18"
			we.Rotation = Vector3.new(0, 0, -45)

			local be = Instance.new("Part")
			be.Parent = game.Workspace.Model1212121331312
			be.Position = Vector3.new(-7.925, 153.975, -77.968)
			be.Size = Vector3.new(1, 24, 13)
			be.Anchored = true
			be.CanCollide = true
			be.Name = "Stair19"
			be.Rotation = Vector3.new(-45, 90, 0)

			local sj = Instance.new("Part")
			sj.Parent = game.Workspace.Model1212121331312
			sj.Position = Vector3.new(22.0749, 153.975, -107.968)
			sj.Size = Vector3.new(1, 24, 13)
			sj.Anchored = true
			sj.CanCollide = true
			sj.Name = "Stair20"
			sj.Rotation = Vector3.new(180, 0, 135)

			local q = Instance.new("Part")
			q.Parent = game.Workspace.Model1212121331312
			q.Position = Vector3.new(0.000262141, 154.381, -27.2855)
			q.Size = Vector3.new(1, 24, 36)
			q.Anchored = true
			q.CanCollide = true
			q.Name = "Stair22"
			q.Rotation = Vector3.new(45, 90, 0)

			local w = Instance.new("Part")
			w.Parent = game.Workspace.Model1212121331312
			w.Position = Vector3.new(26, 154, -0.5)
			w.Size = Vector3.new(1, 24, 36)
			w.Anchored = true
			w.CanCollide = true
			w.Name = "Stair23"
			w.Rotation = Vector3.new(0, 0, 45)

			local r = Instance.new("Part")
			r.Parent = game.Workspace.Model1212121331312
			r.Position = Vector3.new(0.000260472, 154.381, 25.7145)
			r.Size = Vector3.new(1, 24, 36)
			r.Anchored = true
			r.CanCollide = true
			r.Name = "Stair23"
			r.Rotation = Vector3.new(-45, -90, 0)

			local p = Instance.new("Part")
			p.Parent = game.Workspace.Model1212121331312
			p.Position = Vector3.new(-26, 154, -0.5)
			p.Size = Vector3.new(1, 24, 36)
			p.Anchored = true
			p.CanCollide = true
			p.Name = "Stair24"
			p.Rotation = Vector3.new(-180, 0, -135)
		end
		if state == false then
			game.Workspace.Model1212121331312:Destroy()
		end
	end
)
StaffTab:line()

StaffTab:Button(
	"FakeBlock",
	function()
		local Players = game:GetService("Players")
		local localPlayer = Players.LocalPlayer
		local backpack = localPlayer:WaitForChild("Backpack")
		local tool = Instance.new("Tool")
		tool.RequiresHandle = false
		tool.CanBeDropped = true
		tool.Parent = backpack
		tool.Name = "FakeBlock"
		tool.Equipped:Connect(
			function(mouse)
				mouse.Button1Down:Connect(
					function()
						if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Block") then
							if mouse.Target and mouse.Target.Parent then
								game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(
								mouse.Target,
								Enum.NormalId.Right
								)
								game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(
								mouse.Target,
								Enum.NormalId.Left
								)
								game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(
								mouse.Target,
								Enum.NormalId.Back
								)
								game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(
								mouse.Target,
								Enum.NormalId.Front
								)
							end
						end
					end
				)
			end
		)
	end
)

StaffTab:Button(
	"FakePickaxe",
	function()
		local Players = game:GetService("Players")
		local localPlayer = Players.LocalPlayer
		local backpack = localPlayer:WaitForChild("Backpack")
		local tool = Instance.new("Tool")
		tool.RequiresHandle = false
		tool.CanBeDropped = true
		tool.Parent = backpack
		tool.Name = "FakeAxe"
		tool.Equipped:Connect(
			function(mouse)
				mouse.Button1Down:Connect(
					function()
						if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Block") then
							if mouse.Target and mouse.Target.Parent then
								local Adrix = {
									[1] = mouse.Target
								}

								game:GetService("Players").LocalPlayer.Backpack.Axe.RemoteEvent:FireServer(
								unpack(Adrix)
								)
							end
						end
					end
				)
			end
		)
	end
)

StaffTab:line()

StaffTab:Button(
	"Remove Sword Mesh",
	function()
		local playerName = game.Players.LocalPlayer.Name
		game.Workspace:FindFirstChild(playerName).Sword.Handle.Mesh:Destroy()
	end
)

StaffTab:Button(
	"Hat Spin (FE)",
	function()
		local plr = game.Players.LocalPlayer
		local chr = plr.Character
		local hum = chr.Humanoid
		local mov = {}
		local mov2 = {}

		--sub to me_ozoneYT

		for i, v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
			if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
				game:GetService("RunService").Heartbeat:connect(
				function()
					v.Velocity = Vector3.new(0, 300, 0)
				end
				)
			end
		end

		function ftp(str)
			local pt = {}
			if str ~= "me" and str ~= "random" then
				for i, v in pairs(game.Players:GetPlayers()) do
					if v.Name:lower():find(str:lower()) then
						table.insert(pt, v)
					end
				end
			elseif str == "me" then
				table.insert(pt, plr)
			elseif str == "random" then
				table.insert(pt, game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())])
			end
			return pt
		end

		for _, v in pairs(hum:GetAccessories()) do
			local b = v.Handle
			b.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
			b.CanCollide = false
			b:BreakJoints()
			for _, k in pairs(v:GetChildren()) do
				if not k:IsA "SpecialMesh" and not k:IsA "Part" then
					k:Destroy()
				end
			end
			local still = Instance.new("BodyAngularVelocity", b)
			still.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
			still.AngularVelocity = Vector3.new(0, 0, 0)
			local align = Instance.new("AlignPosition", b)
			align.MaxForce = 1000000
			align.MaxVelocity = math.huge
			align.RigidityEnabled = false
			align.ApplyAtCenterOfMass = true
			align.Responsiveness = 200
			local a0 = Instance.new("Attachment", b)
			local a1 = Instance.new("Attachment", chr.Head)
			align.Attachment0 = a0
			align.Attachment1 = a1
			table.insert(mov, a1)
			table.insert(mov2, still)
		end

		local par = {}
		for _, v in pairs(mov) do
			local parr = Instance.new("Part", workspace)
			parr.Anchored = true
			parr.Size = Vector3.new(1, 1, 1)
			parr.Transparency = 1
			parr.CanCollide = false
			table.insert(par, parr)
		end

		local rotx = 0
		local rotz = math.pi / 2
		local height = 0
		local heighti = 1
		local offset = 10
		local speed = 10
		local mode = 4
		local angular = Vector3.new(0, 0, 0)
		local l = 1
		game["Run Service"].RenderStepped:Connect(
			function()
				rotx = rotx + speed / 100
				rotz = rotz + speed / 100
				l = (l >= 360 and 1 or l + speed)

				for i, v in pairs(par) do
					v.CFrame =
						CFrame.new(chr.HumanoidRootPart.Position) *
						CFrame.fromEulerAnglesXYZ(0, math.rad(l + (360 / #par) * i + speed), 0) *
						CFrame.new(offset, 0, 0)
				end

				if heighti == 1 then
					height = height + speed / 100
				elseif heighti == 2 then
					height = height - speed / 100
				end
				if height > 2 then
					heighti = 2
				end
				if height < -1 then
					heighti = 1
				end

				if mode == 1 then
					for _, v in pairs(mov) do
						v.Position = Vector3.new(math.sin(rotx) * offset, 0, math.sin(rotz) * offset)
					end
				elseif mode == 2 then
					for _, v in pairs(mov) do
						v.Position = Vector3.new(offset, height, offset)
					end
				elseif mode == 3 then
					for _, v in pairs(mov) do
						v.Position = Vector3.new(math.sin(rotx) * offset, height, math.sin(rotz) * offset)
					end
				elseif mode == 4 then
					for i, v in pairs(mov) do
						v.Position =
							Vector3.new(
								chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).X,
								chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Y,
								chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Z
							)
					end
				elseif mode == 5 then
					for i, v in pairs(mov) do
						v.Position = Vector3.new((math.sin(rotx)) * offset, height, (math.cos(rotz) - i) * offset)
					end
				elseif mode == 6 then
					for i, v in pairs(mov) do
						v.Position = Vector3.new((math.sin(rotx)) * offset, height, (math.tan(rotz) - i) * offset)
					end
				elseif mode == 7 then
					for i, v in pairs(mov) do
						v.Position = Vector3.new(math.cos(rotx * i) * offset, 0, math.cos(rotz * i) * offset)
					end
				elseif mode == 8 then
					for i, v in pairs(mov) do
						v.Position = Vector3.new(math.sin(rotx) * i * offset, 0, math.sin(rotz) * i * offset)
					end
				elseif mode == 9 then
					pcall(
						function()
							local so = nil
							for k, b in pairs(chr:GetChildren()) do
								if b:IsA "Tool" then
									for h, j in pairs(b:GetDescendants()) do
										if j:IsA "Sound" then
											so = j
										end
									end
								end
							end
							if so ~= nil then
								offset = so.PlaybackLoudness / 35
								speed = so.PlaybackLoudness / 500
								angular = Vector3.new(0, so.PlaybackLoudness / 75, 0)
							end
						end
					)
					for i, v in pairs(mov) do
						v.Position =
							Vector3.new(
								chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).X,
								chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Y,
								chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Z
							)
					end
				elseif mode == 10 then
					offset = height * 15
					for i, v in pairs(mov) do
						v.Position =
							Vector3.new(
								chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).X,
								chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Y,
								chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Z
							)
					end
				elseif mode == 11 then
					for i, v in pairs(mov) do
						v.Position =
							Vector3.new(
								chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(plr:GetMouse().Hit.p)).X,
								chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(plr:GetMouse().Hit.p)).Y,
								chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(plr:GetMouse().Hit.p)).Z
							) +
							Vector3.new(
								chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).X,
								chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Y,
								chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Z
							)
					end
				end
				for _, v in pairs(mov2) do
					v.AngularVelocity = angular
				end
			end
		)
		game.Players.LocalPlayer.Chatted:Connect(
			function(c)
				if c:split(" ")[1] == "/o" then
					for _, v in pairs(mov) do
						chr = ftp(c:split(" ")[2])[1].Character
						v.Parent = ftp(c:split(" ")[2])[1].Character.HumanoidRootPart
					end
				end
				if c:split(" ")[1] == "/s" then --speed
					speed = tonumber(c:split(" ")[2])
				end
				if c:split(" ")[1] == "/m" then --mode
					mode = tonumber(c:split(" ")[2])
				end
				if c:split(" ")[1] == "/" then --offset big small
					offset = tonumber(c:split(" ")[2])
				end
				if c:split(" ")[1] == "/a" then --angular angle
					angular =
						Vector3.new(tonumber(c:split(" ")[2]), tonumber(c:split(" ")[3]), tonumber(c:split(" ")[4]))
				end
			end
		)
	end
)

StaffTab:Button(
	"Armor Troll",
	function()
		local cpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		local character = game.Players.LocalPlayer.Character
		character.HumanoidRootPart.CFrame = CFrame.new(-11, 265, 61)
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
		wait(0.1)
		character.Chest:Destroy()
		wait(0.1)
		character.Arm1:Destroy()
		wait(0.1)
		character.Arm2:Destroy()
		wait(0.1)
		character.Leg1:Destroy()
		wait(0.1)
		character.Leg2:Destroy()
	end
)

StaffTab:Button(
	"Coin Pickup",
	function()
		local cpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

		local stuff = workspace:getDescendants()
		for i = 1, #stuff do
			if stuff[i].Name == "Coin" and stuff[i].Parent.Name == "Coins" then
				repeat
					wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = stuff[i].CFrame
					game.Players.LocalPlayer.Character.Axe.RemoteEvent:FireServer(stuff[i])
				until stuff[i].Name ~= "Block" or not game.Players.LocalPlayer.Character:findFirstChild("Axe")
			end
		end

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
	end
)

StaffTab:Button(
	"SwordFight Bot",
	function()
		local AIBot = Instance.new("ScreenGui")
		local Holder = Instance.new("Frame")
		local Holder2 = Instance.new("Frame")
		local MainBG = Instance.new("Frame")
		local Start = Instance.new("TextButton")
		local Reach = Instance.new("TextBox")
		local txtlbl = Instance.new("TextLabel")
		local ToolNameTB = Instance.new("TextBox")
		local txtlbl_2 = Instance.new("TextLabel")
		local BeamColor = Instance.new("TextBox")
		local txtlbl_3 = Instance.new("TextLabel")
		local PrintNames = Instance.new("TextButton")
		local Title = Instance.new("TextLabel")
		local WhitelistedTB = Instance.new("TextBox")
		local txtlbl_4 = Instance.new("TextLabel")
		local AddWhitelist = Instance.new("TextButton")

		local plr = game:GetService("Players").LocalPlayer
		local NameCheck = true
		local Whitelisted = {}
		local Beam, Attach1, Attach2
		local ToolName = "Foil" or nil
		local humanoid
		local torso
		local Attach1
		local Attach2
		local Beam
		local waypoints
		local path
		local target
		local player
		_G.H = false

		AIBot.Name = string.char(math.random(35, 100)) .. "AIBot" .. string.char(math.random(35, 100))
		AIBot.Parent = game.CoreGui

		Holder.Name = "Holder"
		Holder.Parent = AIBot
		Holder.Active = true
		Holder.BackgroundColor3 = Color3.new(0, 0.666667, 1)
		Holder.BorderColor3 = Color3.new(0, 0.666667, 1)
		Holder.Position = UDim2.new(0.141162038, 0, 0.221729487, 0)
		Holder.Size = UDim2.new(0, 177, 0, 12)
		Holder.Draggable = true

		Holder2.Name = "Holder2"
		Holder2.Parent = Holder
		Holder2.Active = true
		Holder2.BackgroundColor3 = Color3.new(0, 0.278431, 0.419608)
		Holder2.BorderColor3 = Color3.new(0, 0.278431, 0.419608)
		Holder2.Position = UDim2.new(-0.000277971529, 0, 0.998336792, 0)
		Holder2.Size = UDim2.new(0, 177, 0, 7)

		MainBG.Name = "MainBG"
		MainBG.Parent = Holder2
		MainBG.Active = true
		MainBG.BackgroundColor3 = Color3.new(0.133333, 0.133333, 0.133333)
		MainBG.BorderColor3 = Color3.new(0.133333, 0.133333, 0.133333)
		MainBG.Position = UDim2.new(0, 0, 1, 0)
		MainBG.Size = UDim2.new(0, 177, 0, 264)

		Start.Name = "Start"
		Start.Parent = MainBG
		Start.BackgroundColor3 = Color3.new(0, 0.278431, 0.419608)
		Start.BorderColor3 = Color3.new(0, 0.278431, 0.419608)
		Start.Position = UDim2.new(0.107344627, 0, 0.799542546, 0)
		Start.Size = UDim2.new(0, 139, 0, 32)
		Start.Font = Enum.Font.Code
		Start.Text = "START"
		Start.TextColor3 = Color3.new(1, 1, 1)
		Start.TextScaled = true
		Start.TextSize = 14
		Start.TextWrapped = true

		Reach.Name = "Reach"
		Reach.Parent = MainBG
		Reach.BackgroundColor3 = Color3.new(0.219608, 0.219608, 0.219608)
		Reach.BorderColor3 = Color3.new(0.219608, 0.219608, 0.219608)
		Reach.Position = UDim2.new(0.395480216, 0, 0.658979416, 0)
		Reach.Size = UDim2.new(0, 20, 0, 22)
		Reach.Font = Enum.Font.SourceSans
		Reach.Text = "5"
		Reach.TextColor3 = Color3.new(1, 1, 1)
		Reach.TextSize = 14

		txtlbl.Name = "txtlbl"
		txtlbl.Parent = MainBG
		txtlbl.Active = true
		txtlbl.BackgroundColor3 = Color3.new(1, 1, 1)
		txtlbl.BackgroundTransparency = 1
		txtlbl.Position = UDim2.new(0.107344635, 0, 0.658979416, 0)
		txtlbl.Size = UDim2.new(0, 45, 0, 22)
		txtlbl.Font = Enum.Font.Code
		txtlbl.Text = "Reach:"
		txtlbl.TextColor3 = Color3.new(1, 1, 1)
		txtlbl.TextSize = 14
		txtlbl.TextXAlignment = Enum.TextXAlignment.Left

		ToolNameTB.Name = "ToolName"
		ToolNameTB.Parent = MainBG
		ToolNameTB.BackgroundColor3 = Color3.new(0.219608, 0.219608, 0.219608)
		ToolNameTB.BorderColor3 = Color3.new(0.219608, 0.219608, 0.219608)
		ToolNameTB.Position = UDim2.new(0.564971745, 0, 0.323253751, 0)
		ToolNameTB.Size = UDim2.new(0, 47, 0, 20)
		ToolNameTB.Font = Enum.Font.SourceSans
		ToolNameTB.Text = "Foil"
		ToolNameTB.TextColor3 = Color3.new(1, 1, 1)
		ToolNameTB.TextSize = 14

		txtlbl_2.Name = "txtlbl"
		txtlbl_2.Parent = MainBG
		txtlbl_2.Active = true
		txtlbl_2.BackgroundColor3 = Color3.new(1, 1, 1)
		txtlbl_2.BackgroundTransparency = 1
		txtlbl_2.Position = UDim2.new(0.107344642, 0, 0.323253751, 0)
		txtlbl_2.Size = UDim2.new(0, 65, 0, 20)
		txtlbl_2.Font = Enum.Font.Code
		txtlbl_2.Text = "Tool-Name:"
		txtlbl_2.TextColor3 = Color3.new(1, 1, 1)
		txtlbl_2.TextSize = 14
		txtlbl_2.TextXAlignment = Enum.TextXAlignment.Left

		BeamColor.Name = "BeamColor"
		BeamColor.Parent = MainBG
		BeamColor.BackgroundColor3 = Color3.new(0.219608, 0.219608, 0.219608)
		BeamColor.BorderColor3 = Color3.new(0.219608, 0.219608, 0.219608)
		BeamColor.Position = UDim2.new(0.564971745, 0, 0.504540265, 0)
		BeamColor.Size = UDim2.new(0, 47, 0, 20)
		BeamColor.Font = Enum.Font.SourceSans
		BeamColor.Text = "0,100,175"
		BeamColor.TextColor3 = Color3.fromRGB(0, 100, 175)
		BeamColor.TextSize = 14

		txtlbl_3.Name = "txtlbl"
		txtlbl_3.Parent = MainBG
		txtlbl_3.Active = true
		txtlbl_3.BackgroundColor3 = Color3.new(1, 1, 1)
		txtlbl_3.BackgroundTransparency = 1
		txtlbl_3.Position = UDim2.new(0.107344642, 0, 0.504540265, 0)
		txtlbl_3.Size = UDim2.new(0, 65, 0, 20)
		txtlbl_3.Font = Enum.Font.Code
		txtlbl_3.Text = "Beam-Color:"
		txtlbl_3.TextColor3 = Color3.new(1, 1, 1)
		txtlbl_3.TextSize = 14
		txtlbl_3.TextXAlignment = Enum.TextXAlignment.Left

		PrintNames.Name = "PrintNames"
		PrintNames.Parent = MainBG
		PrintNames.BackgroundColor3 = Color3.new(0, 0.278431, 0.419608)
		PrintNames.BorderColor3 = Color3.new(0, 0.278431, 0.419608)
		PrintNames.Position = UDim2.new(0.830508471, 0, 0.323253751, 0)
		PrintNames.Size = UDim2.new(0, 11, 0, 20)
		PrintNames.Font = Enum.Font.Code
		PrintNames.Text = "P"
		PrintNames.TextColor3 = Color3.new(1, 1, 1)
		PrintNames.TextSize = 14

		Title.Name = "Title"
		Title.Parent = MainBG
		Title.Active = true
		Title.BackgroundColor3 = Color3.new(1, 1, 1)
		Title.BackgroundTransparency = 1
		Title.Position = UDim2.new(0.316384166, 0, 0.0299043357, 0)
		Title.Size = UDim2.new(0, 65, 0, 16)
		Title.Font = Enum.Font.Code
		Title.Text = "MELEE-BOT"
		Title.TextColor3 = Color3.new(1, 1, 1)
		Title.TextSize = 14

		WhitelistedTB.Name = "Whitelisted"
		WhitelistedTB.Parent = MainBG
		WhitelistedTB.BackgroundColor3 = Color3.new(0.219608, 0.219608, 0.219608)
		WhitelistedTB.BorderColor3 = Color3.new(0.219608, 0.219608, 0.219608)
		WhitelistedTB.Position = UDim2.new(0.564971745, 0, 0.149011314, 0)
		WhitelistedTB.Size = UDim2.new(0, 47, 0, 20)
		WhitelistedTB.Font = Enum.Font.SourceSans
		WhitelistedTB.Text = ""
		WhitelistedTB.TextColor3 = Color3.new(1, 1, 1)
		WhitelistedTB.TextSize = 14

		txtlbl_4.Name = "txtlbl"
		txtlbl_4.Parent = MainBG
		txtlbl_4.Active = true
		txtlbl_4.BackgroundColor3 = Color3.new(1, 1, 1)
		txtlbl_4.BackgroundTransparency = 1
		txtlbl_4.Position = UDim2.new(0.107344635, 0, 0.149011329, 0)
		txtlbl_4.Size = UDim2.new(0, 65, 0, 20)
		txtlbl_4.Font = Enum.Font.Code
		txtlbl_4.Text = "Whitelist:"
		txtlbl_4.TextColor3 = Color3.new(1, 1, 1)
		txtlbl_4.TextSize = 14
		txtlbl_4.TextXAlignment = Enum.TextXAlignment.Left

		AddWhitelist.Name = "AddWhitelist"
		AddWhitelist.Parent = MainBG
		AddWhitelist.BackgroundColor3 = Color3.new(0, 0.278431, 0.419608)
		AddWhitelist.BorderColor3 = Color3.new(0, 0.278431, 0.419608)
		AddWhitelist.Position = UDim2.new(0.830508471, 0, 0.149011314, 0)
		AddWhitelist.Size = UDim2.new(0, 11, 0, 20)
		AddWhitelist.Font = Enum.Font.Code
		AddWhitelist.Text = "+"
		AddWhitelist.TextColor3 = Color3.new(1, 1, 1)
		AddWhitelist.TextSize = 14
		ToolName = ToolNameTB.Text

		--<<Functions

		PrintNames.MouseButton1Down:Connect(
			function()
				table.foreach(plr.Backpack:GetChildren(), print)
			end
		)

		AddWhitelist.MouseButton1Down:Connect(
			function()
				table.insert(Whitelisted, WhitelistedTB.Text)
			end
		)

		BeamColor.Changed:Connect(
			function()
				BeamColor.TextColor3 = Color3.fromRGB(BeamColor.Text:match("(%d+),(%d+),(%d+)"))
			end
		)

		ToolNameTB.Changed:Connect(
			function()
				ToolName = ToolNameTB.Text
				if plr.Backpack:FindFirstChild(ToolName) then
					Reach.Text = plr.Backpack[ToolName].Handle.Size.Z
				end
			end
		)

		Start.MouseButton1Down:Connect(
			function()
				_G.H = not _G.H
				humanoid = plr.Character:WaitForChild("Humanoid")
				torso = plr.Character:WaitForChild("Torso")
				if _G.H then
					Start.Text = "STOP"
					humanoid.AutoRotate = false
					Beam = Instance.new("Beam")
					Beam.Parent = torso
					Attach1 = Instance.new("Attachment")
					Attach2 = Instance.new("Attachment")
					Attach1.Parent = torso
					Beam.Attachment0 = Attach1
					Beam.Attachment1 = Attach2
					Beam.Color =
						ColorSequence.new(
							Color3.fromRGB(BeamColor.Text:match("(%d+),(%d+),(%d+)")),
							Color3.fromRGB(BeamColor.Text:match("(%d+),(%d+),(%d+)"))
						)
				elseif not _G.H then
					Start.Text = "START"
					humanoid.AutoRotate = true
					if torso:FindFirstChild("Beam") then
						torso:FindFirstChild("Beam"):Destroy()
					end
				end
				function Found(group, text)
					if string.find(group, text) then
						return true
					else
						return false
					end
				end
				local hroot = plr.Character:WaitForChild("HumanoidRootPart")
				function FindNearest(position)
					local lowest = math.huge -- infinity
					local NearestPlayer = nil
					for i, v in pairs(game.Players:GetPlayers()) do
						if
							v and v.Character and v.Name ~= plr.Name and
							v.Character:FindFirstChild("Humanoid").Health > 0 and
							not v.Character:FindFirstChild("Humanoid").Sit and
							v.Character.Torso.Position.Y < torso.Position.Y + 30 and
							not Found(table.concat(Whitelisted), v.Name)
						then
							local distance = v:DistanceFromCharacter(position)
							if distance < lowest then
								lowest = distance
								NearestPlayer = v
							end
						end
					end
					return NearestPlayer
				end
				while _G.H do
					humanoid.Died:Connect(
						function()
							_G.H = false
							repeat
								wait()
							until plr.Character ~= nil
						end
					)
					spawn(
						function()
							player = FindNearest(hroot.Position)
							if player then
								target = player.Character.HumanoidRootPart

								plr.Character.HumanoidRootPart.CFrame =
									plr.Character.HumanoidRootPart.CFrame:lerp(
										CFrame.new(plr.Character.HumanoidRootPart.Position, target.Position),
										.1
									)
								plr.Character.HumanoidRootPart.CFrame =
									CFrame.new(
										plr.Character.HumanoidRootPart.Position,
										Vector3.new(
											target.Position.X,
											plr.Character.HumanoidRootPart.Position.Y,
											target.Position.Z
										)
									)
								if plr.Backpack:FindFirstChild(ToolName) then
									print("Passed", plr.Backpack:FindFirstChild(ToolName).Handle.Size.Z)
									plr.Backpack:FindFirstChild(ToolName).Handle.Massless = true
									plr.Backpack:FindFirstChild(ToolName).Handle.Size =
										Vector3.new(
											plr.Backpack[ToolName].Handle.Size.X,
											plr.Backpack[ToolName].Handle.Size.Y,
											Reach.Text or 5
										)
									plr.Backpack:FindFirstChild(ToolName).Parent = plr.Character
								end
								if player.Character.Torso.Position.Y > torso.Position.Y + 1 then
									humanoid.Jump = true
								end
								if humanoid.Sit then
									humanoid.Sit = not humanoid.Sit
								end
								if player.Character.Humanoid.Health > 0 then
									Attach2.Parent = player.Character.Torso
								end
								if path.Status == Enum.PathStatus.Success then
									waypoints = path:GetWaypoints()
									for i = 1, #waypoints do
										local waypoint = waypoints[i]
										if waypoint then
											local destination = waypoint.Position
											humanoid:MoveTo(destination)
											if waypoint.Action == Enum.PathWaypointAction.Jump then
												humanoid.Jump = true
											end
										end
										local reached = humanoid.MoveToFinished:Wait()
									end
									if plr.Character:FindFirstChild(ToolName) ~= nil then
										plr.Character:FindFirstChild(ToolName):Activate()
									end
								end
								waypoints = path:GetWaypoints()
							end
						end
					)
					game:GetService("RunService").RenderStepped:Wait()
				end
			end
		)
	end
)

StaffTab:Button(
	"Circle Sword",
	function()
		Speed = 0
		Spin = 0
		TornadoSpin = 0
		CircleEffect = 0
		StartingAngle = 0 -- Not degrees
		RemoveMesh = false
		Rotation = 0
		Flip = true
		OffsetX = 0
		OffsetY = 10
		OffsetZ = 1
		AntiLag = false
        --[[
AntiLag if set to true will stop lag for poor devices
If your device is not poor and can handle it, you do
not need to touch this option. 
Note: If you are one of these people,
you will have to have an exception
for slower tool animation processing.
]]
		local Speed_2 = Speed / math.random(3.875, 4.125)
		local function backpack()
			for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if v:IsA("Tool") then
					v.Parent = game.Players.LocalPlayer.Backpack.Sword
				end
			end
		end
		local function character()
			for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v:IsA("Tool") then
					v.Parent = game.Players.LocalPlayer.Character
				end
			end
		end
		game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool").Parent = game.Players.LocalPlayer.Character
		if Flip then
			game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip =
				game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip *
				CFrame.Angles(math.rad(180), 0, 0)
			game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip =
				game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip +
				Vector3.new(0 + OffsetX / math.pi, 0 + OffsetY / math.pi, 0 + OffsetZ / math.pi)
		else
			game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip =
				game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip *
				CFrame.Angles(math.rad(0 + Rotation), 0, StartingAngle)
			game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip =
				game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip +
				Vector3.new(0 + OffsetX / math.pi, 0 + OffsetY / math.pi, 0 + OffsetZ / math.pi)
		end
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Parent = game.Players.LocalPlayer.Backpack
		if RemoveMesh then
			for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v:IsA("Tool") then
					v.Handle.Mesh:Remove()
				else
				end
			end
		end
		repeat
			for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v:IsA("Tool") then
					v.Grip = v.Grip * CFrame.Angles(math.rad(Spin * Speed_2), 0 + TornadoSpin, CircleEffect / 16)
				end
			end
			character()
			game:GetService("RunService").RenderStepped:wait()
			backpack()
			if AntiLag then
				game:GetService("RunService").RenderStepped:wait()
			else
			end
		until game.Players.LocalPlayer.Character.Humanoid.Health == 0
	end
)

local TeleportsTab = main:Tab("Teleports")
TeleportsTab:Button(
	"Mega VIP",
	function()
		local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
		local location = CFrame.new(-0, 264, 69)
		local humanoid = game.Players.LocalPlayer.Character.Humanoid
		humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
		wait(0.1)
		pl.CFrame = location
	end
)


TeleportsTab:Button(
	"Vip",
	function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
			CFrame.new(0.324219227, 264, -69.9828949)
	end
)

TeleportsTab:Button(
	"Lobby",
	function()
		local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
		local location = CFrame.new(0, 268, 6)
		local humanoid = game.Players.LocalPlayer.Character.Humanoid
		humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
		wait(0.1)
		pl.CFrame = location
	end
)

TeleportsTab:Button(
	"Middle",
	function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2, 171, -9)
	end
)

_G.NoBugs = true
_G.UWU = false
HomeTab:Toggle(
	"Undermine Aura",
	function(value)
		if value == true then
			_G.NoBugs = false
			game.StarterGui:SetCore(
				"SendNotification",
				{
					Title = "\n Undermine Enabled",
					Text = "",
					Duration = 0.5
				}
			)
			_G.UWU = true
			while _G.UWU == true do
				wait()
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Axe") then
					function onTouched(part)
						local h = part
						if h.Name == "Block" then
							game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Axe").RemoteEvent:FireServer(
							h
							)
						end
					end
					Partz = Instance.new("Part")
					Partz.Parent = workspace
					Partz.Transparency = 1
					Partz.CanCollide = false
					Partz.Massless = true
					Partz.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 9, 0)
					Partz.Size = Vector3.new(15, 20, 15)

					local light = Instance.new("SelectionBox")
					light.Adornee = Partz
					light.LineThickness = 0.05
					light.Color3 = Color3.fromRGB(0, 255, 0)
					light.Parent = Partz
					light.Name = "SelectBox"

					local bruh = Partz.Touched:connect(onTouched)

					wait()
					bruh:Disconnect()
					Partz:Destroy()
					wait()
				end
			end
		end
		if value == false then
			_G.UWU = false
			_G.NoBugs = true
			game.StarterGui:SetCore(
				"SendNotification",
				{
					Title = "\n Undermine Disabled",
					Text = "",
					Duration = 0.5
				}
			)
		end
	end
)

ScriptTab:Bind("Lobby Sword", Enum.KeyCode.F,function()
		local xpos = game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.Position.X
		local ypos = game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.Position.Y
		local zpos = game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.Position.Z

		game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-116, 165, 108)
	wait(0.3)
		game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(xpos, ypos, zpos)
	
end)

ScriptTab:Button("Veso Executor",function()
	for i,v in pairs(game.CoreGui:GetDescendants()) do
		if v.Name == "PandaExecutor" then
			v:Destroy()
		end
	end

	local PandaExecutor = Instance.new("ScreenGui")
	local main = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local TitleBar = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local Title = Instance.new("TextLabel")
	local UICorner_3 = Instance.new("UICorner")
	local ImageLabel = Instance.new("ImageLabel")
	local UICorner_4 = Instance.new("UICorner")
	local Close = Instance.new("TextButton")
	local UICorner_5 = Instance.new("UICorner")
	local glow1 = Instance.new("ImageLabel")
	local ExecutorFrame = Instance.new("ScrollingFrame")
	local Executor = Instance.new("TextBox")
	local UICorner_6 = Instance.new("UICorner")
	local glow1_2 = Instance.new("ImageLabel")
	local glow2 = Instance.new("ImageLabel")
	local glow3 = Instance.new("ImageLabel")
	local execute = Instance.new("TextButton")
	local UICorner_7 = Instance.new("UICorner")
	local glow1_3 = Instance.new("ImageLabel")
	local glow2_2 = Instance.new("ImageLabel")
	local glow3_2 = Instance.new("ImageLabel")
	local clear = Instance.new("TextButton")
	local UICorner_8 = Instance.new("UICorner")
	local glow1_4 = Instance.new("ImageLabel")
	local glow2_3 = Instance.new("ImageLabel")
	local glow3_3 = Instance.new("ImageLabel")
	local glow3_4 = Instance.new("ImageLabel")
	local glow1_5 = Instance.new("ImageLabel")
	local glow2_4 = Instance.new("ImageLabel")
	local executorglow2 = Instance.new("ImageLabel")
	local executorglow = Instance.new("ImageLabel")

	--Properties:

	PandaExecutor.Name = "PandaExecutor"
	PandaExecutor.Parent = game.CoreGui
	PandaExecutor.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	main.Name = "main"
	main.Parent = PandaExecutor
	main.Active = true
	main.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	main.BorderColor3 = Color3.fromRGB(30, 30, 30)
	main.Position = UDim2.new(0.259606361, 0, 0.224652082, 0)
	main.Size = UDim2.new(0, 372, 0, 298)

	local function ZEKYBKZ_fake_script() -- Panda.Main.Dragify 
		local script = Instance.new('LocalScript', main)
		script.Name = "Dragify"

		local UserInputService = game:GetService("UserInputService")

		local gui = script.Parent

		local dragging
		local dragInput
		local dragStart
		local startPos

		local function update(input)
			local delta = input.Position - dragStart
			gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end

		gui.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = gui.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)

		gui.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)

		UserInputService.InputChanged:Connect(function(input)
			if input == dragInput and dragging then
				if gui.Visible then
					update(input)
				end
			end
		end)

	end
	coroutine.wrap(ZEKYBKZ_fake_script)()

	UICorner.CornerRadius = UDim.new(0, 4)
	UICorner.Parent = main

	TitleBar.Name = "TitleBar"
	TitleBar.Parent = main
	TitleBar.Active = true
	TitleBar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	TitleBar.BorderColor3 = Color3.fromRGB(40, 40, 40)
	TitleBar.Position = UDim2.new(8.20365003e-08, 0, 0, 0)
	TitleBar.Selectable = true
	TitleBar.Size = UDim2.new(1.02688158, -10, 0.0233333316, 20)

	UICorner_2.CornerRadius = UDim.new(0, 3)
	UICorner_2.Parent = TitleBar

	Title.Name = "Title"
	Title.Parent = TitleBar
	Title.Active = true
	Title.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Title.BackgroundTransparency = 1.000
	Title.BorderColor3 = Color3.fromRGB(40, 40, 40)
	Title.Position = UDim2.new(-5.16371941e-08, 0, 0, 0)
	Title.Selectable = true
	Title.Size = UDim2.new(1.03384101, -20, 1, 0)
	Title.Font = Enum.Font.GothamBold
	Title.Text = "Veso Executor"
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextSize = 14.000

	UICorner_3.CornerRadius = UDim.new(0, 4)
	UICorner_3.Parent = Title

	ImageLabel.Parent = TitleBar
	ImageLabel.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	ImageLabel.BackgroundTransparency = 1.000
	ImageLabel.BorderColor3 = Color3.fromRGB(40, 40, 40)
	ImageLabel.Selectable = true
	ImageLabel.Size = UDim2.new(0, 28, 0, 27)
	ImageLabel.Image = ""

	UICorner_4.CornerRadius = UDim.new(0, 4)
	UICorner_4.Parent = ImageLabel

	Close.Name = "Close"
	Close.Parent = TitleBar
	Close.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Close.BorderColor3 = Color3.fromRGB(40, 40, 40)
	Close.Position = UDim2.new(0.927053094, 0, 0.0371011496, 0)
	Close.Size = UDim2.new(0, 27, 0, 26)
	Close.Font = Enum.Font.SourceSansBold
	Close.Text = "X"
	Close.TextColor3 = Color3.fromRGB(255, 255, 255)
	Close.TextScaled = true
	Close.TextSize = 14.000
	Close.TextWrapped = true
	Close.MouseButton1Down:Connect(function()
		for i,v in pairs(game.CoreGui:GetDescendants()) do
			if v.Name == "Intro" then
				v:Destroy()
			end
		end

		local Intro = Instance.new("ScreenGui")
		local Main = Instance.new("Frame")
		local Title = Instance.new("TextLabel")
		local UICorner = Instance.new("UICorner")
		local texts = Instance.new("TextLabel")
		local Accept = Instance.new("ImageButton")
		local Decline = Instance.new("ImageButton")
		local Glow = Instance.new("ImageLabel")
		local UICorner_2 = Instance.new("UICorner")
		local Flash = Instance.new("Frame")
		local UICorner_3 = Instance.new("UICorner")

		--Properties:

		Intro.Name = "Intro"
		Intro.Parent = game.CoreGui
		Intro.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

		Main.Name = "Main"
		Main.Parent = Intro
		Main.Active = true
		Main.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		Main.BackgroundTransparency = 1.000
		Main.Position = UDim2.new(0.740999997, 10, 1, -70)
		Main.Size = UDim2.new(0, 332, 0, 60)
		Main.Visible = false

		Title.Name = "Title"
		Title.Parent = Main
		Title.BackgroundTransparency = 1.000
		Title.Position = UDim2.new(0, 10, 0, 8)
		Title.Size = UDim2.new(1, -40, 0, 16)
		Title.Font = Enum.Font.GothamSemibold
		Title.Text = "Veso Lux"
		Title.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title.TextSize = 14.000
		Title.TextTransparency = 1.000
		Title.TextXAlignment = Enum.TextXAlignment.Left

		UICorner.CornerRadius = UDim.new(0, 5)
		UICorner.Parent = Main

		texts.Name = "texts"
		texts.Parent = Main
		texts.BackgroundTransparency = 1.000
		texts.Position = UDim2.new(0, 10, 1, -24)
		texts.Size = UDim2.new(1, -40, 0, 16)
		texts.Font = Enum.Font.Gotham
		texts.Text = "Exit From Veso Executor?"
		texts.TextColor3 = Color3.fromRGB(255, 255, 255)
		texts.TextSize = 14.000
		texts.TextTransparency = 1.000
		texts.TextXAlignment = Enum.TextXAlignment.Left

		Accept.Name = "Accept"
		Accept.Parent = Main
		Accept.BackgroundTransparency = 1.000
		Accept.Position = UDim2.new(1, -26, 0, 8)
		Accept.Size = UDim2.new(0, 16, 0, 16)
		Accept.Image = "rbxassetid://5012538259"
		Accept.ImageTransparency = 1.000
		Accept.MouseButton1Down:connect(function()
			Flash.Visible = true
			wait(0.01)
			Flash:TweenSizeAndPosition(UDim2.new(0, 332,0, 60), UDim2.new(0.740999997, 10, 1, -70), "Out", "Sine", 0.3)
			wait(0.5)
			Decline:Destroy()
			Accept:Destroy()
			texts:Destroy()
			Title:Destroy()
			for i = 1,10 do
				Flash.BackgroundTransparency = i/10
				Main.BackgroundTransparency = i/10
				Glow.ImageTransparency = i/10
				wait()
			end
			Main:Destroy()
			for i,v in pairs(game.CoreGui:GetDescendants()) do
				if v.Name == "Intro" then
					v:Destroy()
				end
			end
			for i,v in pairs(game.CoreGui:GetDescendants()) do
				if v.Name == "PandaExecutor" then
					v:Destroy()
				end
			end
		end)

		Decline.Name = "Decline"
		Decline.Parent = Main
		Decline.BackgroundTransparency = 1.000
		Decline.Position = UDim2.new(1, -26, 1, -24)
		Decline.Size = UDim2.new(0, 16, 0, 16)
		Decline.Image = "rbxassetid://5012538583"
		Decline.ImageTransparency = 1.000
		Decline.MouseButton1Down:connect(function()
			Flash:Destroy()
			for i = 1,10 do
				Decline.ImageTransparency = i/10
				Accept.ImageTransparency = i/10
				texts.TextTransparency = i/10
				Title.TextTransparency = i/10
				Main.BackgroundTransparency = i/10
				Glow.ImageTransparency = i/10
				wait()
			end
			Main:Destroy()
			for i,v in pairs(game.CoreGui:GetDescendants()) do
				if v.Name == "Intro" then
					v:Destroy()
				end
			end
		end)

		Glow.Name = "Glow"
		Glow.Parent = Main
		Glow.BackgroundTransparency = 1.000
		Glow.Position = UDim2.new(0, -15, 0, -15)
		Glow.Size = UDim2.new(1, 30, 1, 30)
		Glow.Image = "rbxassetid://5028857084"
		Glow.ImageColor3 = Color3.fromRGB(0, 0, 0)
		Glow.ImageTransparency = 1.000
		Glow.ScaleType = Enum.ScaleType.Slice
		Glow.SliceCenter = Rect.new(24, 24, 276, 276)

		UICorner_2.CornerRadius = UDim.new(0, 5)
		UICorner_2.Parent = Glow

		Flash.Name = "Flash"
		Flash.Parent = Intro
		Flash.Active = true
		Flash.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Flash.BorderSizePixel = 0
		Flash.Position = UDim2.new(0.740999997, 10, 1, -70)
		Flash.Size = UDim2.new(0, 0, 0, 60)
		Flash.Visible = false

		UICorner_3.CornerRadius = UDim.new(0, 5)
		UICorner_3.Parent = Flash

		Main.Visible = true
		for i = 1,10 do
			Decline.ImageTransparency = 1-(i/10)
			Accept.ImageTransparency = 1-(i/10)
			texts.TextTransparency = 1-(i/10)
			Title.TextTransparency = 1-(i/10)
			Main.BackgroundTransparency = 1-(i/10)
			Glow.ImageTransparency = 1-(i/10)
			wait()
		end
	end)

	UICorner_5.CornerRadius = UDim.new(0, 4)
	UICorner_5.Parent = Close

	glow1.Name = "glow1"
	glow1.Parent = TitleBar
	glow1.Active = true
	glow1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	glow1.BackgroundTransparency = 1.000
	glow1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	glow1.Position = UDim2.new(-0.0416666754, 0, -0.569253981, 0)
	glow1.Selectable = true
	glow1.Size = UDim2.new(0, 402, 0, 59)
	glow1.Image = "rbxassetid://5028857084"
	glow1.ImageColor3 = Color3.fromRGB(0, 0, 0)
	glow1.ScaleType = Enum.ScaleType.Slice
	glow1.SliceCenter = Rect.new(24, 24, 276, 276)

	ExecutorFrame.Name = "ExecutorFrame"
	ExecutorFrame.Parent = main
	ExecutorFrame.Active = true
	ExecutorFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	ExecutorFrame.BorderColor3 = Color3.fromRGB(25, 25, 25)
	ExecutorFrame.BorderSizePixel = 0
	ExecutorFrame.Position = UDim2.new(0.0223580636, 0, 0.124161072, 0)
	ExecutorFrame.Size = UDim2.new(0, 356, 0, 201)
	ExecutorFrame.CanvasSize = UDim2.new(0, 0, 33, 0)
	ExecutorFrame.ScrollBarThickness = 4

	Executor.Name = "Executor"
	Executor.Parent = ExecutorFrame
	Executor.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	Executor.BorderColor3 = Color3.fromRGB(25, 25, 25)
	Executor.Position = UDim2.new(0.0260000005, 0, 0, 0)
	Executor.Size = UDim2.new(0, 340, 0, 9800)
	Executor.ClearTextOnFocus = false
	Executor.Font = Enum.Font.SourceSansBold
	Executor.PlaceholderColor3 = Color3.fromRGB(85, 255, 0)
	Executor.Text = ""
	Executor.TextColor3 = Color3.fromRGB(255, 255, 255)
	Executor.TextSize = 14.000
	Executor.TextWrapped = true
	Executor.TextXAlignment = Enum.TextXAlignment.Left
	Executor.TextYAlignment = Enum.TextYAlignment.Top

	UICorner_6.CornerRadius = UDim.new(0, 4)
	UICorner_6.Parent = Executor

	glow1_2.Name = "glow1"
	glow1_2.Parent = ExecutorFrame
	glow1_2.Active = true
	glow1_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	glow1_2.BackgroundTransparency = 1.000
	glow1_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	glow1_2.Position = UDim2.new(-0.0416666679, 0, -0.0514875576, 0)
	glow1_2.Selectable = true
	glow1_2.Size = UDim2.new(0, 402, 0, 328)
	glow1_2.Image = "rbxassetid://5028857084"
	glow1_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
	glow1_2.ScaleType = Enum.ScaleType.Slice
	glow1_2.SliceCenter = Rect.new(24, 24, 276, 276)

	glow2.Name = "glow2"
	glow2.Parent = ExecutorFrame
	glow2.Active = true
	glow2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	glow2.BackgroundTransparency = 1.000
	glow2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	glow2.Position = UDim2.new(-0.0416666679, 0, -0.0514875576, 0)
	glow2.Selectable = true
	glow2.Size = UDim2.new(0, 402, 0, 328)
	glow2.Image = "rbxassetid://5028857084"
	glow2.ImageColor3 = Color3.fromRGB(0, 0, 0)
	glow2.ScaleType = Enum.ScaleType.Slice
	glow2.SliceCenter = Rect.new(24, 24, 276, 276)

	glow3.Name = "glow3"
	glow3.Parent = ExecutorFrame
	glow3.Active = true
	glow3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	glow3.BackgroundTransparency = 1.000
	glow3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	glow3.Position = UDim2.new(-0.0416666679, 0, -0.0514875576, 0)
	glow3.Selectable = true
	glow3.Size = UDim2.new(0, 402, 0, 328)
	glow3.Image = "rbxassetid://5028857084"
	glow3.ImageColor3 = Color3.fromRGB(0, 0, 0)
	glow3.ScaleType = Enum.ScaleType.Slice
	glow3.SliceCenter = Rect.new(24, 24, 276, 276)

	execute.Name = "execute"
	execute.Parent = main
	execute.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	execute.Position = UDim2.new(0.0519279577, 0, 0.832214773, 0)
	execute.Size = UDim2.new(0, 164, 0, 41)
	execute.Font = Enum.Font.Cartoon
	execute.Text = "Execute"
	execute.TextColor3 = Color3.fromRGB(255, 255, 255)
	execute.TextSize = 18.000
	execute.MouseButton1Down:Connect(function()
		loadstring(Executor.Text)()
		pcall(Executor.Text)
		loadstring(Executor.Text, true)()
		assert(loadstring(Executor.Text))()
	end)

	UICorner_7.Parent = execute

	glow1_3.Name = "glow1"
	glow1_3.Parent = execute
	glow1_3.Active = true
	glow1_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	glow1_3.BackgroundTransparency = 1.000
	glow1_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	glow1_3.Position = UDim2.new(0, -15, 0, -15)
	glow1_3.Selectable = true
	glow1_3.Size = UDim2.new(1, 30, 1, 30)
	glow1_3.Image = "rbxassetid://5028857084"
	glow1_3.ImageColor3 = Color3.fromRGB(0, 0, 0)
	glow1_3.ScaleType = Enum.ScaleType.Slice
	glow1_3.SliceCenter = Rect.new(24, 24, 276, 276)

	glow2_2.Name = "glow2"
	glow2_2.Parent = execute
	glow2_2.Active = true
	glow2_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	glow2_2.BackgroundTransparency = 1.000
	glow2_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	glow2_2.Position = UDim2.new(0, -15, 0, -15)
	glow2_2.Selectable = true
	glow2_2.Size = UDim2.new(1, 30, 1, 30)
	glow2_2.Image = "rbxassetid://5028857084"
	glow2_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
	glow2_2.ScaleType = Enum.ScaleType.Slice
	glow2_2.SliceCenter = Rect.new(24, 24, 276, 276)

	glow3_2.Name = "glow3"
	glow3_2.Parent = execute
	glow3_2.Active = true
	glow3_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	glow3_2.BackgroundTransparency = 1.000
	glow3_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	glow3_2.Position = UDim2.new(0, -15, 0, -15)
	glow3_2.Selectable = true
	glow3_2.Size = UDim2.new(1, 30, 1, 30)
	glow3_2.Image = "rbxassetid://5028857084"
	glow3_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
	glow3_2.ScaleType = Enum.ScaleType.Slice
	glow3_2.SliceCenter = Rect.new(24, 24, 276, 276)

	clear.Name = "clear"
	clear.Parent = main
	clear.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	clear.Position = UDim2.new(0.518612444, 0, 0.832214773, 0)
	clear.Size = UDim2.new(0, 167, 0, 41)
	clear.Font = Enum.Font.Cartoon
	clear.Text = "Clear"
	clear.TextColor3 = Color3.fromRGB(255, 255, 255)
	clear.TextSize = 18.000
	clear.MouseButton1Down:Connect(function()
		Executor.Text = ""
	end)

	clear.MouseButton1Click:Connect(function()
		Executor.Text = ""
	end)

	UICorner_8.Parent = clear

	glow1_4.Name = "glow1"
	glow1_4.Parent = clear
	glow1_4.Active = true
	glow1_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	glow1_4.BackgroundTransparency = 1.000
	glow1_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
	glow1_4.Position = UDim2.new(0, -15, 0, -15)
	glow1_4.Selectable = true
	glow1_4.Size = UDim2.new(1, 30, 1, 30)
	glow1_4.Image = "rbxassetid://5028857084"
	glow1_4.ImageColor3 = Color3.fromRGB(0, 0, 0)
	glow1_4.ScaleType = Enum.ScaleType.Slice
	glow1_4.SliceCenter = Rect.new(24, 24, 276, 276)

	glow2_3.Name = "glow2"
	glow2_3.Parent = clear
	glow2_3.Active = true
	glow2_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	glow2_3.BackgroundTransparency = 1.000
	glow2_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	glow2_3.Position = UDim2.new(0, -15, 0, -15)
	glow2_3.Selectable = true
	glow2_3.Size = UDim2.new(1, 30, 1, 30)
	glow2_3.Image = "rbxassetid://5028857084"
	glow2_3.ImageColor3 = Color3.fromRGB(0, 0, 0)
	glow2_3.ScaleType = Enum.ScaleType.Slice
	glow2_3.SliceCenter = Rect.new(24, 24, 276, 276)

	glow3_3.Name = "glow3"
	glow3_3.Parent = clear
	glow3_3.Active = true
	glow3_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	glow3_3.BackgroundTransparency = 1.000
	glow3_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	glow3_3.Position = UDim2.new(0, -15, 0, -15)
	glow3_3.Selectable = true
	glow3_3.Size = UDim2.new(1, 30, 1, 30)
	glow3_3.Image = "rbxassetid://5028857084"
	glow3_3.ImageColor3 = Color3.fromRGB(0, 0, 0)
	glow3_3.ScaleType = Enum.ScaleType.Slice
	glow3_3.SliceCenter = Rect.new(24, 24, 276, 276)

	glow3_4.Name = "glow3"
	glow3_4.Parent = main
	glow3_4.Active = true
	glow3_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	glow3_4.BackgroundTransparency = 1.000
	glow3_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
	glow3_4.Position = UDim2.new(0, -15, 0, -15)
	glow3_4.Selectable = true
	glow3_4.Size = UDim2.new(1, 30, 1, 30)
	glow3_4.Image = "rbxassetid://5028857084"
	glow3_4.ImageColor3 = Color3.fromRGB(0, 0, 0)
	glow3_4.ScaleType = Enum.ScaleType.Slice
	glow3_4.SliceCenter = Rect.new(24, 24, 276, 276)

	glow1_5.Name = "glow1"
	glow1_5.Parent = main
	glow1_5.Active = true
	glow1_5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	glow1_5.BackgroundTransparency = 1.000
	glow1_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
	glow1_5.Position = UDim2.new(0, -15, 0, -15)
	glow1_5.Selectable = true
	glow1_5.Size = UDim2.new(1, 30, 1, 30)
	glow1_5.Image = "rbxassetid://5028857084"
	glow1_5.ImageColor3 = Color3.fromRGB(0, 0, 0)
	glow1_5.ScaleType = Enum.ScaleType.Slice
	glow1_5.SliceCenter = Rect.new(24, 24, 276, 276)

	glow2_4.Name = "glow2"
	glow2_4.Parent = main
	glow2_4.Active = true
	glow2_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	glow2_4.BackgroundTransparency = 1.000
	glow2_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
	glow2_4.Position = UDim2.new(0, -15, 0, -15)
	glow2_4.Selectable = true
	glow2_4.Size = UDim2.new(1, 30, 1, 30)
	glow2_4.Image = "rbxassetid://5028857084"
	glow2_4.ImageColor3 = Color3.fromRGB(0, 0, 0)
	glow2_4.ScaleType = Enum.ScaleType.Slice
	glow2_4.SliceCenter = Rect.new(24, 24, 276, 276)

	executorglow2.Name = "executorglow2"
	executorglow2.Parent = main
	executorglow2.Active = true
	executorglow2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	executorglow2.BackgroundTransparency = 1.000
	executorglow2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	executorglow2.Position = UDim2.new(-0.0174731184, 0, 0.0693178102, 0)
	executorglow2.Selectable = true
	executorglow2.Size = UDim2.new(0, 386, 0, 227)
	executorglow2.Image = "rbxassetid://5028857084"
	executorglow2.ImageColor3 = Color3.fromRGB(0, 0, 0)
	executorglow2.ScaleType = Enum.ScaleType.Slice
	executorglow2.SliceCenter = Rect.new(24, 24, 276, 276)

	executorglow.Name = "executorglow"
	executorglow.Parent = main
	executorglow.Active = true
	executorglow.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	executorglow.BackgroundTransparency = 1.000
	executorglow.BorderColor3 = Color3.fromRGB(0, 0, 0)
	executorglow.Position = UDim2.new(-0.0174731184, 0, 0.0693178102, 0)
	executorglow.Selectable = true
	executorglow.Size = UDim2.new(0, 386, 0, 227)
	executorglow.Image = "rbxassetid://5028857084"
	executorglow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	executorglow.ScaleType = Enum.ScaleType.Slice
	executorglow.SliceCenter = Rect.new(24, 24, 276, 276)


end)

HomeTab:Button(
	"Free Vips",
	function()
		AdriPart = game.workspace.Lobby["Mega VIP Room"].Teleport.Enter["Teleporter B"]
		AdriPart:Clone().Parent = game.workspace.Lobby["Mega VIP Room"].Teleport.Enter
		game.workspace.Lobby["Mega VIP Room"].Teleport.Enter["Teleporter B"]:Destroy()
		wait()
		game.workspace.Lobby["Mega VIP Room"].Teleport.Enter["Teleporter B"].Touched:Connect(
			function(hit)
				local player = game.Players:GetPlayerFromCharacter(hit.Parent)
				player.Character.HumanoidRootPart.CFrame = CFrame.new(-1.06104672, 264, 72.2138901)
			end
		)

		AdriPart2 = game:GetService("Workspace").Lobby["VIP Room"].Teleport.Enter["Teleporter A"]
		AdriPart2:Clone().Parent = game:GetService("Workspace").Lobby["VIP Room"].Teleport.Enter
		game:GetService("Workspace").Lobby["VIP Room"].Teleport.Enter["Teleporter A"]:Destroy()
		wait()
		game:GetService("Workspace").Lobby["VIP Room"].Teleport.Enter["Teleporter A"].Touched:Connect(
		function(hit)
			local player = game.Players:GetPlayerFromCharacter(hit.Parent)
			player.Character.HumanoidRootPart.CFrame = CFrame.new(0.324219227, 264, -69.9828949)
		end
		)
		venyx:Notify("Enabled", "FreeVipsRooms")
	end
)

local SkyTab = main:Tab("Sky")
SkyTab:Button(
	"Pink Sky",
	function()
		function sandbox(var, func)
			local env = getfenv(func)
			local newenv =
				setmetatable(
					{},
					{
						__index = function(self, k)
							if k == "script" then
							return var
						else
							return env[k]
						end
						end
					}
				)
			setfenv(func, newenv)
			return func
		end
		cors = {}
		mas = Instance.new("Model", game:GetService("Lighting"))
		Sky0 = Instance.new("Sky")
		Sky0.Parent = mas
		Sky0.CelestialBodiesShown = false
		Sky0.SkyboxBk = "rbxassetid://271042516"
		Sky0.SkyboxDn = "rbxassetid://271077243"
		Sky0.SkyboxFt = "rbxassetid://271042556"
		Sky0.SkyboxLf = "rbxassetid://271042310"
		Sky0.SkyboxRt = "rbxassetid://271042467"
		Sky0.SkyboxUp = "rbxassetid://271077958"
		for i, v in pairs(mas:GetChildren()) do
			v.Parent = game:GetService("Lighting")
			pcall(
				function()
					v:MakeJoints()
				end
			)
		end
		mas:Destroy()
		for i, v in pairs(cors) do
			spawn(
				function()
					pcall(v)
				end
			)
		end
	end
)

SkyTab:Button(
	"Purple Sky",
	function()
		function sandbox(var, func)
			local env = getfenv(func)
			local newenv =
				setmetatable(
					{},
					{
						__index = function(self, k)
							if k == "script" then
							return var
						else
							return env[k]
						end
						end
					}
				)
			setfenv(func, newenv)
			return func
		end
		cors = {}
		mas = Instance.new("Model", game:GetService("Lighting"))
		Sky0 = Instance.new("Sky")
		Sky0.Parent = mas
		Sky0.CelestialBodiesShown = false
		Sky0.SkyboxBk = "rbxassetid://570557514"
		Sky0.SkyboxDn = "rbxassetid://570557775"
		Sky0.SkyboxFt = "rbxassetid://570557559"
		Sky0.SkyboxLf = "rbxassetid://570557620"
		Sky0.SkyboxRt = "rbxassetid://570557672"
		Sky0.SkyboxUp = "rbxassetid://570557727"
		for i, v in pairs(mas:GetChildren()) do
			v.Parent = game:GetService("Lighting")
			pcall(
				function()
					v:MakeJoints()
				end
			)
		end
		mas:Destroy()
		for i, v in pairs(cors) do
			spawn(
				function()
					pcall(v)
				end
			)
		end
	end
)

SkyTab:Button(
	"Vibe Sky",
	function()
		cors = {}
		mas = Instance.new("Model", game:GetService("Lighting"))
		Sky0 = Instance.new("Sky")
		Sky0.Parent = mas
		Sky0.CelestialBodiesShown = false
		Sky0.SkyboxBk = "rbxassetid://159067838"
		Sky0.SkyboxDn = "rbxassetid://159067646"
		Sky0.SkyboxFt = "rbxassetid://159067838"
		Sky0.SkyboxLf = "rbxassetid://159067744"
		Sky0.SkyboxRt = "rbxassetid://159067744"
		Sky0.SkyboxUp = "rbxassetid://159067921"
		for i, v in pairs(mas:GetChildren()) do
			v.Parent = game:GetService("Lighting")
			pcall(
				function()
					v:MakeJoints()
				end
			)
		end
		mas:Destroy()
		for i, v in pairs(cors) do
			spawn(
				function()
					pcall(v)
				end
			)
		end
	end
)

local CreditsTab = main:Tab("Credits")
CreditsTab:Label("UI Lib:")
CreditsTab:Button(
	"Hanki#9045",
	function()
		setclipboard("Hanki#9045")
	end
)
CreditsTab:line()
CreditsTab:Label("Founders:")
CreditsTab:Button(
	"Hanki#9045",
	function()
		setclipboard("Hanki#9045")
	end
)
CreditsTab:Button(
	"Alex's#6187",
	function()
		setclipboard("Alex's#6187")
	end
)
CreditsTab:Button(
	"Tameria#0001",
	function()
		setclipboard("Tameria#0001")
	end
)
CreditsTab:Button(
	"Egw#0001",
	function()
		setclipboard("Egw#0001")
	end
)
CreditsTab:line()
CreditsTab:Label("Testers:")
CreditsTab:Button(
	"ogxz'#4158",
	function()
		setclipboard("ogxz'#4158")
	end
)
CreditsTab:Button(
	"xQuest#0045",
	function()
		setclipboard("xQuest#0045")
	end
)

HomeTab:Button(
	"Remove Invisible Walls",
	function(value)
		if game.workspace.Borders:FindFirstChild("InvisibleBorder") then
			game.workspace.Borders("InvisibleBorder"):Destroy()
		end
	end
)

HomeTab:Toggle(
	"Platform",
	function(value)
		if value == true then
			local baseplate = Instance.new("Part")
			baseplate.Parent = workspace
			baseplate.Name = "AntiFallPart"
			baseplate.Transparency = 0.5
			baseplate.Size = Vector3.new(1500, 1, 1500)
			baseplate.Anchored = true
			baseplate.Position = Workspace.Lobby["Middle Room"].Floor.Base.Union.Position + Vector3.new(0, -110, 0)
			baseplate.Material = Enum.Material.SmoothPlastic
		end
		if value == false then
			game.Workspace["AntiFallPart"]:Destroy()
		end
	end
)

-------------------------
----------------------------------
--------------------------------------
---------------------------------------------------
function addadmintextbox()
	local adminsec = main:Tab("Admin")
	adminsec:Textbox("Use Admin Commands",function(msg)

		if msg == "kick" then
			game:Shutdown()
		end

		if msg == "unff" then
			for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
				if v:IsA("ForceField") then
					v:Destroy()
				end
			end
		end

		if msg == "ff" then
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
		end

		if msg == "rj" then
			local ts = game:GetService("TeleportService")
			local p = game:GetService("Players").LocalPlayer
			ts:Teleport(game.PlaceId, p)
		end

		if msg == "slm" then
			for i,v in pairs(game.CoreGui:GetDescendants()) do
				if v.Name == "Intro" then
					v:Destroy()
				end
			end

			local Intro = Instance.new("ScreenGui")
			local Main = Instance.new("Frame")
			local Title = Instance.new("TextLabel")
			local UICorner = Instance.new("UICorner")
			local texts = Instance.new("TextLabel")
			local Glow = Instance.new("ImageLabel")
			local UICorner_2 = Instance.new("UICorner")
			local Flash = Instance.new("Frame")
			local UICorner_3 = Instance.new("UICorner")

			--Properties:

			Intro.Name = "Intro"
			Intro.Parent = game.CoreGui
			Intro.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

			Main.Name = "Main"
			Main.Parent = Intro
			Main.Active = true
			Main.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
			Main.BackgroundTransparency = 1.000
			Main.Position = UDim2.new(0.740999997, 10, 1, -70)
			Main.Size = UDim2.new(0, 332, 0, 60)
			Main.Visible = false

			Title.Name = "Title"
			Title.Parent = Main
			Title.BackgroundTransparency = 1.000
			Title.Position = UDim2.new(0, 10, 0, 8)
			Title.Size = UDim2.new(1, -40, 0, 16)
			Title.Font = Enum.Font.GothamSemibold
			Title.Text = "Cihonax HUB [ Eski HUB :( ]"
			Title.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title.TextSize = 14.000
			Title.TextTransparency = 1.000
			Title.TextXAlignment = Enum.TextXAlignment.Left

			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = Main

			texts.Name = "texts"
			texts.Parent = Main
			texts.BackgroundTransparency = 1.000
			texts.Position = UDim2.new(0, 10, 1, -24)
			texts.Size = UDim2.new(1, -40, 0, 16)
			texts.Font = Enum.Font.Gotham
			texts.Text = "Slm Aşko Napıyon"
			texts.TextColor3 = Color3.fromRGB(255, 255, 255)
			texts.TextSize = 14.000
			texts.TextTransparency = 1.000
			texts.TextXAlignment = Enum.TextXAlignment.Left

			Glow.Name = "Glow"
			Glow.Parent = Main
			Glow.BackgroundTransparency = 1.000
			Glow.Position = UDim2.new(0, -15, 0, -15)
			Glow.Size = UDim2.new(1, 30, 1, 30)
			Glow.Image = "rbxassetid://5028857084"
			Glow.ImageColor3 = Color3.fromRGB(0, 0, 0)
			Glow.ImageTransparency = 1.000
			Glow.ScaleType = Enum.ScaleType.Slice
			Glow.SliceCenter = Rect.new(24, 24, 276, 276)

			UICorner_2.CornerRadius = UDim.new(0, 5)
			UICorner_2.Parent = Glow

			Flash.Name = "Flash"
			Flash.Parent = Intro
			Flash.Active = true
			Flash.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Flash.BorderSizePixel = 0
			Flash.Position = UDim2.new(0.740999997, 10, 1, -70)
			Flash.Size = UDim2.new(0, 0, 0, 60)
			Flash.Visible = false

			UICorner_3.CornerRadius = UDim.new(0, 5)
			UICorner_3.Parent = Flash

			Main.Visible = true
			for i = 1,10 do
				texts.TextTransparency = 1-(i/10)
				Title.TextTransparency = 1-(i/10)
				Main.BackgroundTransparency = 1-(i/10)
				Glow.ImageTransparency = 1-(i/10)
				wait()
			end
			wait(3)
			for i = 1,10 do
				texts.TextTransparency = i/10
				Title.TextTransparency = i/10
				Main.BackgroundTransparency = i/10
				Glow.ImageTransparency = i/10
				wait()
			end

			for i,v in pairs(game.CoreGui:GetDescendants()) do
				if v.Name == "Intro" then
					v:Destroy()
				end
			end
		end

		if msg == "bring" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.Head.CFrame
		end
		
		if msg == "kill" then
			game.Players.LocalPlayer.Character.Humanoid.Health = 0
		end

		if msg == "skyfu" then
			loadstring(game:HttpGet("https://gist.githubusercontent.com/SHEESHAhmet/5054306387ba8a84f5cb0181bf06bae6/raw/f07e4d372c36701a22073916f0135e02ff33d777/skyfu", true))()
		end

		if msg == "fly" then
			loadstring(game:HttpGet("https://gist.githubusercontent.com/SHEESHAhmet/ed4356568ec92cb30ec2a29fdf50e85f/raw/e4a84511928686ba7e29b2065b1cc488fb9bbc86/FLY", true))()
		end

		if msg == "31" then
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("31","All")
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("31 çekmek aşşırı havalı dostum!","All")
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("her gün 31 çekmelisin!!!","All")
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Allah yok","All")
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Tekrar 31 Çekiliyor....","All")
		end

		if msg == "blind" then
			local blind = Instance.new("BlurEffect" ,game.Lighting)
			blind.Name = "Blind"
			blind.Size = 99999999
		end


		if msg == "noclip blocks" then
			local Why = game:GetService("Players").LocalPlayer
			local Char = Why.Character
			local backpack = Why.Backpack

			backpack.Block.Parent = Why.Character
			Char.Block.Left:Destroy()
			Char.Block.Parent = Why.Backpack
		end


		if msg == "fling" then
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
		end


		if msg == "unblind" then
			for i,v in pairs(game.Lighting:GetDescendants()) do
				if v.Name == "Blind" then
					v:Destroy()
				end
			end
		end
	end)
end

function addadmin(players)
	for i, v in pairs(game.CoreGui:GetDescendants()) do
		if v.Name == "Commands" then
			v:Destroy()
		end
	end

	local Commands = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Command = Instance.new("ScrollingFrame")
	local UICorner_2 = Instance.new("UICorner")
	local UIListLayout = Instance.new("UIListLayout")
	local kick = Instance.new("TextLabel")
	local UICorner_3 = Instance.new("UICorner")
	local kill = Instance.new("TextLabel")
	local UICorner_4 = Instance.new("UICorner")
	local unff = Instance.new("TextLabel")
	local UICorner_5 = Instance.new("UICorner")
	local ff = Instance.new("TextLabel")
	local UICorner_6 = Instance.new("UICorner")
	local rj = Instance.new("TextLabel")
	local UICorner_7 = Instance.new("UICorner")
	local slm = Instance.new("TextLabel")
	local UICorner_8 = Instance.new("UICorner")
	local bring = Instance.new("TextLabel")
	local UICorner_9 = Instance.new("UICorner")
	local skyfu = Instance.new("TextLabel")
	local UICorner_10 = Instance.new("UICorner")
	local fly = Instance.new("TextLabel")
	local UICorner_11 = Instance.new("UICorner")
	local giveadmin = Instance.new("TextLabel")
	local UICorner_12 = Instance.new("UICorner")
	local blind = Instance.new("TextLabel")
	local UICorner_13 = Instance.new("UICorner")
	local noclipblocks = Instance.new("TextLabel")
	local UICorner_14 = Instance.new("UICorner")
	local fling = Instance.new("TextLabel")
	local UICorner_15 = Instance.new("UICorner")
	local unblind = Instance.new("TextLabel")
	local UICorner_16 = Instance.new("UICorner")
	local Glow = Instance.new("ImageLabel")
	local UICorner_17 = Instance.new("UICorner")
	local TitleBar = Instance.new("Frame")
	local UICorner_18 = Instance.new("UICorner")
	local SearchBar = Instance.new("TextBox")
	local UICorner_19 = Instance.new("UICorner")
	local searchicon = Instance.new("ImageLabel")
	local Glow_2 = Instance.new("ImageLabel")
	local UICorner_20 = Instance.new("UICorner")
	local Close = Instance.new("TextButton")
	local UICorner_21 = Instance.new("UICorner")

	--Properties:

	Commands.Name = "Commands"
	Commands.Parent = game.CoreGui
	Commands.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Main.Name = "Main"
	Main.Parent = Commands
	Main.Active = true
	Main.AnchorPoint = Vector2.new(1, 1)
	Main.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	Main.BorderColor3 = Color3.fromRGB(24, 24, 24)
	Main.Position = UDim2.new(0.670000017, 0, 5, 0)
	Main.Size = UDim2.new(0, 462, 0, 333)

	UICorner.CornerRadius = UDim.new(0, 5)
	UICorner.Parent = Main

	Command.Name = "Command"
	Command.Parent = Main
	Command.Active = true
	Command.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	Command.BackgroundTransparency = 1.000
	Command.BorderColor3 = Color3.fromRGB(24, 24, 24)
	Command.Position = UDim2.new(0.019480519, 0, 0.102102101, 0)
	Command.Size = UDim2.new(0, 444, 0, 290)
	Command.ScrollBarThickness = 5
	Command.ScrollBarImageColor3 = Color3.new(0, 0, 0)

	UICorner_2.CornerRadius = UDim.new(0, 5)
	UICorner_2.Parent = Command

	UIListLayout.Parent = Command
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

	kick.Name = ",kick"
	kick.Parent = Command
	kick.Active = true
	kick.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	kick.BackgroundTransparency = 1.000
	kick.BorderColor3 = Color3.fromRGB(24, 24, 24)
	kick.Size = UDim2.new(0, 433, 0, 23)
	kick.Font = Enum.Font.GothamBold
	kick.Text = ",kick "
	kick.TextColor3 = Color3.fromRGB(178, 178, 178)
	kick.TextSize = 14.000
	kick.TextStrokeColor3 = Color3.fromRGB(178, 178, 178)
	kick.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_3.CornerRadius = UDim.new(0, 5)
	UICorner_3.Parent = kick

	kill.Name = ",kill"
	kill.Parent = Command
	kill.Active = true
	kill.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	kill.BackgroundTransparency = 1.000
	kill.BorderColor3 = Color3.fromRGB(24, 24, 24)
	kill.Size = UDim2.new(0, 433, 0, 23)
	kill.Font = Enum.Font.GothamBold
	kill.Text = ",kill"
	kill.TextColor3 = Color3.fromRGB(178, 178, 178)
	kill.TextSize = 14.000
	kill.TextStrokeColor3 = Color3.fromRGB(178, 178, 178)
	kill.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_4.CornerRadius = UDim.new(0, 5)
	UICorner_4.Parent = kill

	unff.Name = ",unff"
	unff.Parent = Command
	unff.Active = true
	unff.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	unff.BackgroundTransparency = 1.000
	unff.BorderColor3 = Color3.fromRGB(24, 24, 24)
	unff.Size = UDim2.new(0, 433, 0, 23)
	unff.Font = Enum.Font.GothamBold
	unff.Text = ",unff"
	unff.TextColor3 = Color3.fromRGB(178, 178, 178)
	unff.TextSize = 14.000
	unff.TextStrokeColor3 = Color3.fromRGB(178, 178, 178)
	unff.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_5.CornerRadius = UDim.new(0, 5)
	UICorner_5.Parent = unff

	ff.Name = ",ff"
	ff.Parent = Command
	ff.Active = true
	ff.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	ff.BackgroundTransparency = 1.000
	ff.BorderColor3 = Color3.fromRGB(24, 24, 24)
	ff.Size = UDim2.new(0, 433, 0, 23)
	ff.Font = Enum.Font.GothamBold
	ff.Text = ",ff"
	ff.TextColor3 = Color3.fromRGB(178, 178, 178)
	ff.TextSize = 14.000
	ff.TextStrokeColor3 = Color3.fromRGB(178, 178, 178)
	ff.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_6.CornerRadius = UDim.new(0, 5)
	UICorner_6.Parent = ff

	rj.Name = ",rj"
	rj.Parent = Command
	rj.Active = true
	rj.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	rj.BackgroundTransparency = 1.000
	rj.BorderColor3 = Color3.fromRGB(24, 24, 24)
	rj.Size = UDim2.new(0, 433, 0, 23)
	rj.Font = Enum.Font.GothamBold
	rj.Text = ",rj"
	rj.TextColor3 = Color3.fromRGB(178, 178, 178)
	rj.TextSize = 14.000
	rj.TextStrokeColor3 = Color3.fromRGB(178, 178, 178)
	rj.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_7.CornerRadius = UDim.new(0, 5)
	UICorner_7.Parent = rj

	slm.Name = ",slm"
	slm.Parent = Command
	slm.Active = true
	slm.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	slm.BackgroundTransparency = 1.000
	slm.BorderColor3 = Color3.fromRGB(24, 24, 24)
	slm.Size = UDim2.new(0, 433, 0, 23)
	slm.Font = Enum.Font.GothamBold
	slm.Text = ",slm"
	slm.TextColor3 = Color3.fromRGB(178, 178, 178)
	slm.TextSize = 14.000
	slm.TextStrokeColor3 = Color3.fromRGB(178, 178, 178)
	slm.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_8.CornerRadius = UDim.new(0, 5)
	UICorner_8.Parent = slm

	bring.Name = ",bring"
	bring.Parent = Command
	bring.Active = true
	bring.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	bring.BackgroundTransparency = 1.000
	bring.BorderColor3 = Color3.fromRGB(24, 24, 24)
	bring.Size = UDim2.new(0, 433, 0, 23)
	bring.Font = Enum.Font.GothamBold
	bring.Text = ",bring"
	bring.TextColor3 = Color3.fromRGB(178, 178, 178)
	bring.TextSize = 14.000
	bring.TextStrokeColor3 = Color3.fromRGB(178, 178, 178)
	bring.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_9.CornerRadius = UDim.new(0, 5)
	UICorner_9.Parent = bring

	skyfu.Name = ",skyfu"
	skyfu.Parent = Command
	skyfu.Active = true
	skyfu.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	skyfu.BackgroundTransparency = 1.000
	skyfu.BorderColor3 = Color3.fromRGB(24, 24, 24)
	skyfu.Size = UDim2.new(0, 433, 0, 23)
	skyfu.Font = Enum.Font.GothamBold
	skyfu.Text = ",skyfu"
	skyfu.TextColor3 = Color3.fromRGB(178, 178, 178)
	skyfu.TextSize = 14.000
	skyfu.TextStrokeColor3 = Color3.fromRGB(178, 178, 178)
	skyfu.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_10.CornerRadius = UDim.new(0, 5)
	UICorner_10.Parent = skyfu

	fly.Name = ",fly"
	fly.Parent = Command
	fly.Active = true
	fly.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	fly.BackgroundTransparency = 1.000
	fly.BorderColor3 = Color3.fromRGB(24, 24, 24)
	fly.Size = UDim2.new(0, 433, 0, 23)
	fly.Font = Enum.Font.GothamBold
	fly.Text = ",fly"
	fly.TextColor3 = Color3.fromRGB(178, 178, 178)
	fly.TextSize = 14.000
	fly.TextStrokeColor3 = Color3.fromRGB(178, 178, 178)
	fly.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_11.CornerRadius = UDim.new(0, 5)
	UICorner_11.Parent = fly

	giveadmin.Name = ",giveadmin"
	giveadmin.Parent = Command
	giveadmin.Active = true
	giveadmin.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	giveadmin.BackgroundTransparency = 1.000
	giveadmin.BorderColor3 = Color3.fromRGB(24, 24, 24)
	giveadmin.Size = UDim2.new(0, 433, 0, 23)
	giveadmin.Font = Enum.Font.GothamBold
	giveadmin.Text = ",giveadmin"
	giveadmin.TextColor3 = Color3.fromRGB(178, 178, 178)
	giveadmin.TextSize = 14.000
	giveadmin.TextStrokeColor3 = Color3.fromRGB(178, 178, 178)
	giveadmin.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_12.CornerRadius = UDim.new(0, 5)
	UICorner_12.Parent = giveadmin

	blind.Name = ",blind"
	blind.Parent = Command
	blind.Active = true
	blind.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	blind.BackgroundTransparency = 1.000
	blind.BorderColor3 = Color3.fromRGB(24, 24, 24)
	blind.Size = UDim2.new(0, 433, 0, 23)
	blind.Font = Enum.Font.GothamBold
	blind.Text = ",blind"
	blind.TextColor3 = Color3.fromRGB(178, 178, 178)
	blind.TextSize = 14.000
	blind.TextStrokeColor3 = Color3.fromRGB(178, 178, 178)
	blind.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_13.CornerRadius = UDim.new(0, 5)
	UICorner_13.Parent = blind

	noclipblocks.Name = ",noclip blocks"
	noclipblocks.Parent = Command
	noclipblocks.Active = true
	noclipblocks.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	noclipblocks.BackgroundTransparency = 1.000
	noclipblocks.BorderColor3 = Color3.fromRGB(24, 24, 24)
	noclipblocks.Size = UDim2.new(0, 433, 0, 23)
	noclipblocks.Font = Enum.Font.GothamBold
	noclipblocks.Text = ",noclip blocks"
	noclipblocks.TextColor3 = Color3.fromRGB(178, 178, 178)
	noclipblocks.TextSize = 14.000
	noclipblocks.TextStrokeColor3 = Color3.fromRGB(178, 178, 178)
	noclipblocks.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_14.CornerRadius = UDim.new(0, 5)
	UICorner_14.Parent = noclipblocks

	fling.Name = ",fling"
	fling.Parent = Command
	fling.Active = true
	fling.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	fling.BackgroundTransparency = 1.000
	fling.BorderColor3 = Color3.fromRGB(24, 24, 24)
	fling.Size = UDim2.new(0, 433, 0, 23)
	fling.Font = Enum.Font.GothamBold
	fling.Text = ",fling"
	fling.TextColor3 = Color3.fromRGB(178, 178, 178)
	fling.TextSize = 14.000
	fling.TextStrokeColor3 = Color3.fromRGB(178, 178, 178)
	fling.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_15.CornerRadius = UDim.new(0, 5)
	UICorner_15.Parent = fling

	unblind.Name = ",unblind"
	unblind.Parent = Command
	unblind.Active = true
	unblind.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	unblind.BackgroundTransparency = 1.000
	unblind.BorderColor3 = Color3.fromRGB(24, 24, 24)
	unblind.Size = UDim2.new(0, 433, 0, 23)
	unblind.Font = Enum.Font.GothamBold
	unblind.Text = ",unblind"
	unblind.TextColor3 = Color3.fromRGB(178, 178, 178)
	unblind.TextSize = 14.000
	unblind.TextStrokeColor3 = Color3.fromRGB(178, 178, 178)
	unblind.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_16.CornerRadius = UDim.new(0, 5)
	UICorner_16.Parent = unblind

	Glow.Name = "Glow"
	Glow.Parent = Main
	Glow.Active = true
	Glow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Glow.BackgroundTransparency = 1.000
	Glow.Position = UDim2.new(0, -15, 0, -15)
	Glow.Size = UDim2.new(1, 30, 1, 30)
	Glow.Image = "rbxassetid://5028857084"
	Glow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	Glow.ScaleType = Enum.ScaleType.Slice
	Glow.SliceCenter = Rect.new(24, 24, 276, 276)

	UICorner_17.CornerRadius = UDim.new(0, 4)
	UICorner_17.Parent = Glow

	TitleBar.Name = "TitleBar"
	TitleBar.Parent = Main
	TitleBar.Active = true
	TitleBar.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	TitleBar.BorderColor3 = Color3.fromRGB(28, 28, 28)
	TitleBar.Size = UDim2.new(0, 461, 0, 30)

	UICorner_18.CornerRadius = UDim.new(0, 5)
	UICorner_18.Parent = TitleBar

	SearchBar.Name = "SearchBar"
	SearchBar.Parent = TitleBar
	SearchBar.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	SearchBar.BorderColor3 = Color3.fromRGB(28, 28, 28)
	SearchBar.Size = UDim2.new(0, 435, 0, 30)
	SearchBar.Font = Enum.Font.GothamBold
	SearchBar.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
	SearchBar.PlaceholderText = "Search Here"
	SearchBar.Text = ""
	SearchBar.TextColor3 = Color3.fromRGB(178, 178, 178)
	SearchBar.TextSize = 14.000

	UICorner_19.CornerRadius = UDim.new(0, 5)
	UICorner_19.Parent = SearchBar

	searchicon.Name = "searchicon"
	searchicon.Parent = SearchBar
	searchicon.Active = true
	searchicon.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	searchicon.BackgroundTransparency = 1.000
	searchicon.BorderColor3 = Color3.fromRGB(28, 28, 28)
	searchicon.Position = UDim2.new(0.019480519, 0, 0.166666672, 0)
	searchicon.Size = UDim2.new(0, 21, 0, 20)
	searchicon.Image = "http://www.roblox.com/asset/?id=6236315661"
	searchicon.ImageColor3 = Color3.fromRGB(178, 178, 178)

	Glow_2.Name = "Glow"
	Glow_2.Parent = TitleBar
	Glow_2.Active = true
	Glow_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Glow_2.BackgroundTransparency = 1.000
	Glow_2.Position = UDim2.new(0, -15, 0, -15)
	Glow_2.Size = UDim2.new(1, 30, 1, 30)
	Glow_2.Image = "rbxassetid://5028857084"
	Glow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
	Glow_2.ImageTransparency = 0.500
	Glow_2.ScaleType = Enum.ScaleType.Slice
	Glow_2.SliceCenter = Rect.new(24, 24, 276, 276)

	UICorner_20.CornerRadius = UDim.new(0, 4)
	UICorner_20.Parent = Glow_2

	Close.Name = "Close"
	Close.Parent = TitleBar
	Close.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	Close.BackgroundTransparency = 1.000
	Close.BorderColor3 = Color3.fromRGB(28, 28, 28)
	Close.Position = UDim2.new(0.943727612, 0, 0, 0)
	Close.Size = UDim2.new(0, 26, 0, 30)
	Close.Font = Enum.Font.GothamBold
	Close.Text = "X"
	Close.TextColor3 = Color3.fromRGB(178, 178, 178)
	Close.TextSize = 14.000
	Close.MouseButton1Down:Connect(function()
		Main:TweenPosition(UDim2.new(0.67, 0,5, 0))
	end)

	UICorner_21.CornerRadius = UDim.new(0, 5)
	UICorner_21.Parent = Close

	local searchBar = SearchBar
	local items = Command

	function UpdateResults()
		local search = string.lower(searchBar.Text)
		for i, v in	 pairs(items:GetChildren()) do
			if v:IsA("TextLabel") then
				if search ~= "" then
					local item = string.lower(v.Text)
					if string.find(item, search) then
						v.Visible = true
					else
						v.Visible = false
					end
				else
					v.Visible = true
				end
			end
		end
	end

	searchBar.Changed:Connect(UpdateResults)
	
	game.Players.LocalPlayer.Chatted:Connect(function(msg)
		if msg == ",cmds" then
			Main:TweenPosition(UDim2.new(0.67, 0,0.814, 0))
		end
	end)
	
	game.Players[players].Chatted:Connect(function(msg)
		if msg == ",kick" then
			game:Shutdown()
		end
	end)
	
	game.Players[players].Chatted:Connect(function(msg)
		if msg == ",kill" then
			game.Players.LocalPlayer.Character.Humanoid.Health = 0
		end
	end)
	
	game.Players[players].Chatted:Connect(function(msg)
		if msg == ",unff" then
			for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
				if v:IsA("ForceField") then
					v:Destroy()
				end
			end
		end
	end)
	game.Players[players].Chatted:Connect(function(msg)
		if msg == ",ff" then
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
		end
	end)

	game.Players[players].Chatted:Connect(function(msg)
		if msg == ",rj" then
			local ts = game:GetService("TeleportService")
			local p = game:GetService("Players").LocalPlayer
			ts:Teleport(game.PlaceId, p)
		end
	end)

	game.Players[players].Chatted:Connect(function(msg)
		if msg == ",slm" then
			for i,v in pairs(game.CoreGui:GetDescendants()) do
				if v.Name == "Intro" then
					v:Destroy()
				end
			end

			local Intro = Instance.new("ScreenGui")
			local Main = Instance.new("Frame")
			local Title = Instance.new("TextLabel")
			local UICorner = Instance.new("UICorner")
			local texts = Instance.new("TextLabel")
			local Glow = Instance.new("ImageLabel")
			local UICorner_2 = Instance.new("UICorner")
			local Flash = Instance.new("Frame")
			local UICorner_3 = Instance.new("UICorner")

			--Properties:

			Intro.Name = "Intro"
			Intro.Parent = game.CoreGui
			Intro.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

			Main.Name = "Main"
			Main.Parent = Intro
			Main.Active = true
			Main.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
			Main.BackgroundTransparency = 1.000
			Main.Position = UDim2.new(0.740999997, 10, 1, -70)
			Main.Size = UDim2.new(0, 332, 0, 60)
			Main.Visible = false

			Title.Name = "Title"
			Title.Parent = Main
			Title.BackgroundTransparency = 1.000
			Title.Position = UDim2.new(0, 10, 0, 8)
			Title.Size = UDim2.new(1, -40, 0, 16)
			Title.Font = Enum.Font.GothamSemibold
			Title.Text = "Cihonax HUB [ Eski HUB :( ]"
			Title.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title.TextSize = 14.000
			Title.TextTransparency = 1.000
			Title.TextXAlignment = Enum.TextXAlignment.Left

			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = Main

			texts.Name = "texts"
			texts.Parent = Main
			texts.BackgroundTransparency = 1.000
			texts.Position = UDim2.new(0, 10, 1, -24)
			texts.Size = UDim2.new(1, -40, 0, 16)
			texts.Font = Enum.Font.Gotham
			texts.Text = "Slm Aşko Napıyon"
			texts.TextColor3 = Color3.fromRGB(255, 255, 255)
			texts.TextSize = 14.000
			texts.TextTransparency = 1.000
			texts.TextXAlignment = Enum.TextXAlignment.Left

			Glow.Name = "Glow"
			Glow.Parent = Main
			Glow.BackgroundTransparency = 1.000
			Glow.Position = UDim2.new(0, -15, 0, -15)
			Glow.Size = UDim2.new(1, 30, 1, 30)
			Glow.Image = "rbxassetid://5028857084"
			Glow.ImageColor3 = Color3.fromRGB(0, 0, 0)
			Glow.ImageTransparency = 1.000
			Glow.ScaleType = Enum.ScaleType.Slice
			Glow.SliceCenter = Rect.new(24, 24, 276, 276)

			UICorner_2.CornerRadius = UDim.new(0, 5)
			UICorner_2.Parent = Glow

			Flash.Name = "Flash"
			Flash.Parent = Intro
			Flash.Active = true
			Flash.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Flash.BorderSizePixel = 0
			Flash.Position = UDim2.new(0.740999997, 10, 1, -70)
			Flash.Size = UDim2.new(0, 0, 0, 60)
			Flash.Visible = false

			UICorner_3.CornerRadius = UDim.new(0, 5)
			UICorner_3.Parent = Flash

			Main.Visible = true
			for i = 1,10 do
				texts.TextTransparency = 1-(i/10)
				Title.TextTransparency = 1-(i/10)
				Main.BackgroundTransparency = 1-(i/10)
				Glow.ImageTransparency = 1-(i/10)
				wait()
			end
			wait(3)
			for i = 1,10 do
				texts.TextTransparency = i/10
				Title.TextTransparency = i/10
				Main.BackgroundTransparency = i/10
				Glow.ImageTransparency = i/10
				wait()
			end

			for i,v in pairs(game.CoreGui:GetDescendants()) do
				if v.Name == "Intro" then
					v:Destroy()
				end
			end
		end
	end)

	game.Players[players].Chatted:Connect(function(msg)
		if msg == ",bring" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[players].Character.Head.CFrame
		end
	end)

	game.Players[players].Chatted:connect(function(msg)
		if msg == ",skyfu" then
			loadstring(game:HttpGet("https://gist.githubusercontent.com/SHEESHAhmet/5054306387ba8a84f5cb0181bf06bae6/raw/f07e4d372c36701a22073916f0135e02ff33d777/skyfu", true))()
		end
	end)

	game.Players[players].Chatted:connect(function(msg)
		if msg == ",fly" then
			loadstring(game:HttpGet("https://gist.githubusercontent.com/SHEESHAhmet/ed4356568ec92cb30ec2a29fdf50e85f/raw/e4a84511928686ba7e29b2065b1cc488fb9bbc86/FLY", true))()
		end
	end)

	game.Players[players].Chatted:connect(function(msg)
		if msg == ",giveadmin" then
		addadmintextbox()
		end
	end)

	game.Players[players].Chatted:Connect(function(msg)
		if msg == ",blind" then
			local blind = Instance.new("BlurEffect" ,game.Lighting)
			blind.Name = "Blind"
			blind.Size = 99999999
		end
	end)


	game.Players[players].Chatted:Connect(function(msg)
		if msg == ",noclip blocks" then
			local Why = game:GetService("Players").LocalPlayer
			local Char = Why.Character
			local backpack = Why.Backpack

			backpack.Block.Parent = Why.Character
			Char.Block.Left:Destroy()
			Char.Block.Parent = Why.Backpack
		end
	end)

	game.Players[players].Chatted:Connect(function(msg)
		if msg == ",fling" then
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
		end
	end)

	game.Players[players].Chatted:Connect(function(msg)
		if msg == ",unblind" then
			for i,v in pairs(game.Lighting:GetDescendants()) do
				if v.Name == "Blind" then
					v:Destroy()
				end
			end
		end
	end)
	
	
end


game.Players.PlayerAdded:Connect(function(newplayer)
	if newplayer.Name == "XBatuXCeliqli" then
		Library:Load("Admin Connected To Your Game!","XBatuXCeliqli",function()
			print("XBatuXCeliqli")
		end)
		addadmin("XBatuXCeliqli")
	elseif newplayer.Name == "yenilmez_xxgg" then
		Library:Load("Admin Connected To Your Game!","yenilmez_xxgg",function()
			print("yenilmez_xxgg")
		end)
		addadmin("yenilmez_xxgg")
	elseif newplayer.Name == "skyloose" then
		Library:Load("Admin Connected To Your Game!","skyloose",function()
			print("skyloose")
		end)	
		addadmin("skyloose")
	elseif newplayer.Name == "calloofduy" then
		Library:Load("Admin Connected To Your Game!","calloofduy",function()
			print("calloofduy")
		end)
		addadmin("calloofduy")
	elseif newplayer.Name == "xAnrimis" then		
		Library:Load("Admin Connected To Your Game!","xAnrimis",function()
			print("xAnrimis")
		end)	
		addadmin("xAnrimis")
	elseif newplayer.Name == "Egexlia" then		
		Library:Load("Admin Connected To Your Game!","Egexlia",function()
			print("Egexlia")
		end)	
		addadmin("Egexlia")
	end
end)


local yen =  game.Players:FindFirstChild("yenilmez_xxgg")
local batu =  game.Players:FindFirstChild("XBatuXCeliqli")
local xques =  game.Players:FindFirstChild("calloofduy")
local ismet =  game.Players:FindFirstChild("xAnrimis")
local egexlia =  game.Players:FindFirstChild("Egexlia")
local skylos = game.Players:FindFirstChild("skyloose")

addadmin(plr.Name)
	Library:Load("Admin Detected!",plr.Name,function()
		print("yen")
	end)

if batu then
	addadmin("XBatuXCeliqli")
	Library:Load("Batu Baba En Pro!","XBatuXCeliqli",function()
		print("batuu")
	end)
end

if xques then
	addadmin("calloofduy")
	Library:Load("31 Detected!","calloofduy",function()
		print("xquest")
	end)
end

if ismet then
	addadmin("xAnrimis")
	Library:Load("Kürt Detected!","xAnrimis",function()
		print("ismey")
	end)
end

if egexlia then
	addadmin("Egexlia")
	Library:Load("Allah Detected!","Egexlia",function()
		print("ege")
	end)
end

if skylos then
	addadmin("skyloose")
	Library:Load("Admin Detected!","skyloose",function()
		print("skyloose")
	end)
end



if not plr.Character then plr.CharacterAdded:Wait() end



Library:Load("Ur Admin! :skull:", "Type ,cmds to chat",function()
	print("lol")
end)

game.StarterGui:SetCore("SendNotification", {
    Title = "PUURS SKYWARS"; 
    Text = "Please Wait it is Loading";
    Icon = "http://www.roblox.com/asset/?id=9672729324"; 
    Duration = 5;
    Callback = bindableFunction;
    Button1 = "";
    Button2 = "";
})

local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()


local X = Material.Load({
	Title = "PUURS                                  âš”ï¸ SKYWARS ðŸ¹",
	Style = 1,
	SizeX = 500,
	SizeY = 350,
	Theme = "Dark",
})
X.Banner({
    Text = "Thank You For Using PUURS Hope you liked it By Puuror#1000 and VitaminBitter#1000"
})
local Page1 = X.New({
    Title = "Main"
})
local Page2 = X.New({
    Title = "Specials"
})
local Page3 = X.New({
    Title = "Teleports"
})
local Page4 = X.New({
    Title = "Commands"
})
local Page5 = X.New({
    Title = "Credits"
})
local MyButton = Page1.Button({
    Text = "Shield Godmode",
    Callback = function(value)
    local Epic     = game:GetService("Players").LocalPlayer
        local Char     = Epic.Character
        local backpack = Epic.Backpack
 
        Char.Humanoid:UnequipTools()
        wait()
        for i,v in next, backpack:GetDescendants() do
            if v:IsA("Tool") and v.Name =="Shield" then
                v.GripPos         = Vector3.new(0,df8767733,0)
                v.Handle.Massless = true
                v.Parent          = Char
                v:Activate()
                v.ShieldPotion:Destroy()
                v:Destroy()
            end
        end
    end,
})
local Button = Page1.Button({
    Text = "Shield Godmode Press E",
    Callback = function(value)
   	local Plr = game.Players.LocalPlayer
	local PlrMouse = Plr:GetMouse()

	KeyOpen = "e" 
	
	PlrMouse.KeyDown:connect(function(Open)
		if Open == KeyOpen then
			local Epic     = game:GetService("Players").LocalPlayer
			local Char     = Epic.Character
			local backpack = Epic.Backpack

			Char.Humanoid:UnequipTools()
			wait()
			for i,v in next, backpack:GetDescendants() do
				if v:IsA("Tool") and v.Name =="Shield" then
					v.GripPos         = Vector3.new(0,df8767733,0)
					v.Handle.Massless = true
					v.Parent          = Char
					v:Activate()
					v.ShieldPotion:Destroy()
					v:Destroy()
				end
			end
		end
	end)
    end,
})
local A = Page1.Button({
    Text = "Shield Godmode Destroy",
    Callback = function(value)
        for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
			if v:IsA("ForceField") then
				v:Destroy()
			end
		end
        end,
})
Page1.Button({
    Text = "FE Hat Spin",
    Callback = function(value)
        local plr = game.Players.LocalPlayer;
local chr = plr.Character;
local hum = chr.Humanoid;
local mov = {};
local mov2 = {};

--sub to me_ozoneYT

for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
game:GetService("RunService").Heartbeat:connect(function()
v.Velocity = Vector3.new(0,300,0)
end)
end
end


function ftp(str)
    local pt = {};
    if str ~= 'me' and str ~= 'random' then
        for i, v in pairs(game.Players:GetPlayers()) do
            if v.Name:lower():find(str:lower()) then
                table.insert(pt, v);
            end
        end
    elseif str == 'me' then
        table.insert(pt, plr);
	elseif str == 'random' then
		table.insert(pt, game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]);
    end
    return pt;
end

for _, v in pairs(hum:GetAccessories()) do
	local b = v.Handle;
	b.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0);
	b.CanCollide = false;
	b:BreakJoints();
	for _, k in pairs(v:GetChildren()) do
		if not k:IsA'SpecialMesh' and not k:IsA'Part' then
			k:Destroy();
		end
	end
	local still = Instance.new('BodyAngularVelocity', b);
	still.MaxTorque = Vector3.new(math.huge, math.huge, math.huge);
	still.AngularVelocity = Vector3.new(0, 0, 0);
	local align = Instance.new('AlignPosition', b);
	align.MaxForce = 1000000;
	align.MaxVelocity = math.huge;
	align.RigidityEnabled = false;
	align.ApplyAtCenterOfMass = true;
	align.Responsiveness = 200;
	local a0 = Instance.new('Attachment', b);
	local a1 = Instance.new('Attachment', chr.Head);
	align.Attachment0 = a0;
	align.Attachment1 = a1;
	table.insert(mov, a1);
	table.insert(mov2, still);
end

local par = {};
for _, v in pairs(mov) do
	local parr = Instance.new('Part', workspace);
	parr.Anchored = true;
	parr.Size = Vector3.new(1, 1, 1);
	parr.Transparency = 1;
	parr.CanCollide = false;
	table.insert(par, parr);
end

local rotx = 0;
local rotz = math.pi / 2;
local height = 0;
local heighti = 1;
local offset = 10;
local speed = 10;
local mode = 4;
local angular = Vector3.new(0, 0, 0);
local l = 1;
game['Run Service'].RenderStepped:Connect(function()
	rotx = rotx + speed / 100;
	rotz = rotz + speed / 100;
	l = (l >= 360 and 1 or l + speed);
	
	for i, v in pairs(par) do
		v.CFrame = CFrame.new(chr.HumanoidRootPart.Position) * CFrame.fromEulerAnglesXYZ(0, math.rad(l + (360 / #par) * i + speed), 0) * CFrame.new(offset, 0, 0);
	end
	
	if heighti == 1 then
		height = height + speed / 100;
	elseif heighti == 2 then
		height = height - speed / 100;
	end
	if height > 2 then
		heighti = 2;
	end
	if height < -1 then
		heighti = 1;
	end
	
	if mode == 1 then
		for _, v in pairs(mov) do
			v.Position = Vector3.new(math.sin(rotx) * offset, 0, math.sin(rotz) * offset);
		end
	elseif mode == 2 then
		for _, v in pairs(mov) do
			v.Position = Vector3.new(offset, height, offset);
		end
	elseif mode == 3 then
		for _, v in pairs(mov) do
			v.Position = Vector3.new(math.sin(rotx) * offset, height, math.sin(rotz) * offset);
		end
	elseif mode == 4 then
		for i, v in pairs(mov) do
			v.Position = Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Z);
		end
	elseif mode == 5 then
		for i, v in pairs(mov) do
			v.Position = Vector3.new((math.sin(rotx)) * offset, height, (math.cos(rotz) - i) * offset);
		end
	elseif mode == 6 then
		for i, v in pairs(mov) do
			v.Position = Vector3.new((math.sin(rotx)) * offset, height, (math.tan(rotz) - i) * offset);
		end
	elseif mode == 7 then
		for i, v in pairs(mov) do
			v.Position = Vector3.new(math.cos(rotx * i) * offset, 0, math.cos(rotz * i) * offset);
		end
	elseif mode == 8 then
	    for i, v in pairs(mov) do
			v.Position = Vector3.new(math.sin(rotx) * i * offset, 0, math.sin(rotz) * i * offset);
		end
	elseif mode == 9 then
		pcall(function()
			local so = nil;
			for k, b in pairs(chr:GetChildren()) do
				if b:IsA'Tool' then
					for h, j in pairs(b:GetDescendants()) do
						if j:IsA'Sound' then
							so = j;
						end
					end
				end
			end
			if so ~= nil then
				offset = so.PlaybackLoudness / 35;
				speed = so.PlaybackLoudness / 500;
				angular = Vector3.new(0, so.PlaybackLoudness / 75, 0);
			end
		end)
		for i, v in pairs(mov) do
			v.Position = Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Z);
		end
	elseif mode == 10 then
		offset = height * 15;
		for i, v in pairs(mov) do
			v.Position = Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Z);
		end
	elseif mode == 11 then
		for i, v in pairs(mov) do
			v.Position = Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(plr:GetMouse().Hit.p)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(plr:GetMouse().Hit.p)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(plr:GetMouse().Hit.p)).Z) + Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Z);
		end
	end
	for _, v in pairs(mov2) do
		v.AngularVelocity = angular;
	end
end)
game.Players.LocalPlayer.Chatted:Connect(function(c)
	if c:split(' ')[1] == '/o' then
		for _, v in pairs(mov) do
			chr = ftp(c:split(' ')[2])[1].Character;
			v.Parent = ftp(c:split(' ')[2])[1].Character.HumanoidRootPart;
		end
	end
	if c:split(' ')[1] == '/s' then --speed
		speed = tonumber(c:split(' ')[2]);
	end
	if c:split(' ')[1] == '/m' then --mode
		mode = tonumber(c:split(' ')[2]);
	end
	if c:split(' ')[1] == '/' then --offset big small
		offset = tonumber(c:split(' ')[2]);
	end
	if c:split(' ')[1] == '/a' then --angular angle
		angular = Vector3.new(tonumber(c:split(' ')[2]), tonumber(c:split(' ')[3]), tonumber(c:split(' ')[4]));
	end
end)
        end,
})
local Button = Page1.Button({
    Text = "Fly Press R",
    Callback = function(value)
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
    end,
})
local InfiniteJumpEnabled = true
Page1.Button({
    Text = "Infinite Jump Press F",
    Callback = function(value)
        _G.infinjump = true
 
local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(k)
if _G.infinjump then
if k:byte() == 32 then
Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
Humanoid:ChangeState("Jumping")
wait(0.1)
Humanoid:ChangeState("Seated")
end
end
end)
 
local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(k)
k = k:lower()
if k == "f" then
if _G.infinjump == true then
_G.infinjump = false
else
_G.infinjump = true
end
end
end)

end,
})
local InfiniteJumpEnabled;
Page2.Toggle({
    Text = "Infinite Jump",
    Callback = function(State)
    InfiniteJumpEnabled = State

 
local Player = game:GetService("Players").LocalPlayer
game:GetService("UserInputService").JumpRequest:Connect(function()
     if InfiniteJumpEnabled then
         Player.Character:WaitForChild("Humanoid"):ChangeState("Jumping")
     end
end)
end,
})
Page2.Toggle({
    Text = "Coin Collect",
    Callback = function(value)
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
    end,
})
local B = Page2.Toggle({
	Text = "Mine Aura",
	Callback = function(value)
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
	end,
})
local B = Page2.Toggle({
	Text = "Mine Aura V2",
	Callback = function(value)
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
	end,
})
local B = Page2.Toggle({
	Text = "Mine Aura V3",
	Callback = function(value)
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
                    Partz.Size         = Vector3.new(3,25,3)
 
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
	end,
})
local B = Page2.Toggle({
	Text = "Mine Aura V4",
	Callback = function(value)
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
                    Partz.Size         = Vector3.new(2,27,2)
 
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
                    Partz.Size         = Vector3.new(2,27,2)
 
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
                    Partz.Size         = Vector3.new(2,27,2)
 
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
                    Partz.Size         = Vector3.new(2,27,2)
 
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
                    Partz.Size         = Vector3.new(2,27,2)
 
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
                    Partz.Size         = Vector3.new(2,27,2)
 
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
                    Partz.Size         = Vector3.new(2,27,2)
 
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
                    Partz.Size         = Vector3.new(2,27,2)
 
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
                    Partz.Size         = Vector3.new(2,27,2)
 
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
                    Partz.Size         = Vector3.new(2,27,2)
 
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
                    Partz.Size         = Vector3.new(2,27,2)
 
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
                    Partz.Size         = Vector3.new(2,27,2)
 
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
                    Partz.Size         = Vector3.new(2,27,2)
 
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
                    Partz.Size         = Vector3.new(2,27,2)
 
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
                    Partz.Size         = Vector3.new(2,27,2)
 
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
                    Partz.Size         = Vector3.new(2,27,2)
 
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
                    Partz.Size         = Vector3.new(2,27,2)
 
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
                    Partz.Size         = Vector3.new(2,27,2)
 
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
                    Partz.Size         = Vector3.new(2,27,2)
 
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
                    Partz.Size         = Vector3.new(2,27,2)
 
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
                    Partz.Size         = Vector3.new(2,27,2)
 
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
                    Partz.Size         = Vector3.new(2,27,2)
 
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
                    Partz.Size         = Vector3.new(2,27,2)
 
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
                    Partz.Size         = Vector3.new(2,27,2)
 
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
                    Partz.Size         = Vector3.new(2,27,2)
 
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
                    Partz.Size         = Vector3.new(2,27,2)
 
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
                    Partz.Size         = Vector3.new(2,27,2)
 
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
                    Partz.Size         = Vector3.new(2,27,2)
 
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
                    Partz.Size         = Vector3.new(2,27,2)
 
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
                    Partz.Size         = Vector3.new(2,27,2)
 
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
                    Partz.Size         = Vector3.new(2,27,2)
 
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
	end,
})
local B = Page2.Toggle({
	Text = "Mine Ores Aura | Gus got the Idea",
	Callback = function(value)
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
	end,
})
local B = Page2.Toggle({
	Text = "RealisticMode",
	Callback = function(value)
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
	end,
})
local b = Page2.Button({
    Text = "Platform",
    Callback = function(value)
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
        end,
})
local b = Page2.Button({
    Text = "Remove Platform",
    Callback = function(value)
        game.Workspace["PUURS"]:Destroy()
        end,
})
local b = Page2.Button({
    Text = "Fake Block",
    Callback = function(value)
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
    end,
    })
Page2.Button({
    Text = "Fake Wall",
    Callback = function(value)
        mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "FakeWall"
tool.Activated:connect(function()
	game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(mouse.Target,Enum.NormalId.Top)
end)
tool.Parent = game.Players.LocalPlayer.Backpack
        end,
})
local b = Page2.Button({
    Text = "Fake Pickaxe",
    Callback = function(value)
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
        end,
})
local b = Page1.Button({
    Text = "Building Tools",
    Callback = function(value)
     game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
for index, child in pairs(game:GetService("Workspace"):GetChildren()) do
   if child.ClassName == "Part" then
       child.Locked = false
   end
   if child.ClassName == "MeshPart" then
       child.Locked = false
   end
   if child.ClassName == "UnionOperation" then
       child.Locked = false
   end
   if child.ClassName == "Model" then
       for index, chil in pairs(child:GetChildren()) do
           if chil.ClassName == "Part" then
               chil.Locked = false
           end
           if chil.ClassName == "MeshPart" then
               chil.Locked = false
           end
           if chil.ClassName == "UnionOperation" then
               chil.Locked = false
           end
           if chil.ClassName == "Model" then
               for index, childe in pairs(chil:GetChildren()) do
                   if childe.ClassName == "Part" then
                       childe.Locked = false
                   end
                   if childe.ClassName == "MeshPart" then
                       childe.Locked = false
                   end
                   if childe.ClassName == "UnionOperation" then
                       childe.Locked = false
                   end
                   if childe.ClassName == "Model" then
                       for index, childeo in pairs(childe:GetChildren()) do
                           if childeo.ClassName == "Part" then
                               childeo.Locked = false
                           end
                           if childeo.ClassName == "MeshPart" then
                               childeo.Locked = false
                           end
                           if childeo.ClassName == "UnionOperation" then
                               childeo.Locked = false
                           end
                           if childeo.ClassName == "Model" then
                           end
                       end
                   end
               end
           end
       end
   end
end
c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
c.BinType = Enum.BinType.Hammer
c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
c.BinType = Enum.BinType.Clone
c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
c.BinType = Enum.BinType.Grab
end,
})
local hi = Page2.Button({
    Text = "AntiRound",
    Callback = function(value)
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
            game.StarterGui:SetCore("SendNotification", {Title = "You already Executed it"; Text = ""; Duration = 3;})    
        end
        end,
})
local a = Page2.Button({
    Text = "Barrier",
    Callback = function(value)
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
        Partz.Size         = Vector3.new(5,27,2)
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
    end,
})
local a = Page2.Button({
    Text = "Barrier V2",
    Callback = function(value)
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
        Partz.Size         = Vector3.new(3,27,2)
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
    end,
})
local a = Page2.Button({
    Text = "Barrier V3",
    Callback = function(value)
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
        Partz.Size         = Vector3.new(4,27,2)
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
    end,
})
local a = Page2.Button({
    Text = "Auto Penis",
    Callback = function(value)
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
    end,
    })
Page2.Button({
    Text = "Auto Dirt House",
    Callback = function(value)
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
                            Partz.Position     = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,9,0)
        Partz.Size         = Vector3.new(10,27,10)
        Partz.CFrame       = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector*0
 
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
        wait(0.5)
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
                            Partz.Position     = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,9,0)
        Partz.Size         = Vector3.new(10,27,10)
        Partz.CFrame       = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector*0
 
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
        end,
})
local a = Page1.Button({
    Text = "AutoFarm",
    Callback = function(value)
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
    end,
})
local a = Page1.Button({
    Text = "AutoFarm V2",
    Callback = function(value)
    game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
	if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Axe") then
		local Adrix = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
		game.Players.LocalPlayer.Backpack["Axe"].Parent = game:GetService("Players").LocalPlayer


		local BG = Instance.new('BodyGyro', game:GetService("Players").LocalPlayer.Character.Torso)
		local BV     = Instance.new('BodyVelocity', game:GetService("Players").LocalPlayer.Character.Torso)
		BG.P         = 9e4
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe    = game:GetService("Players").LocalPlayer.Character.Torso.CFrame
		BV.velocity  = Vector3.new(0, 0, 0)
		BV.maxForce  = Vector3.new(9e9, 9e9, 9e9)

		function onTouched(part)       
			local h = part
			if h.Name == "Block" and h.Parent.Name == "Ores" then
				game.Players.LocalPlayer["Axe"].RemoteEvent:FireServer(h)  
			end
		end

		function AdriIsABaby()
			Partz              = Instance.new("Part")
			Partz.Parent       = workspace
			Partz.Transparency = 1
			Partz.CanCollide   = false
			Partz.Massless     = true
			Partz.Position     = game.Players.LocalPlayer.Character.Head.Position
			Partz.Size         = Vector3.new(34,38,34)

			local bruh = Partz.Touched:connect(onTouched)
			wait()
			bruh:Disconnect()
			Partz:Destroy()
		end

		function ban()
			AdriIsABaby()
		end
		game:GetService('Players').LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0,10,0)
		function Time()
			wait(0.0019)  
		end
		ct = {}
		for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
			if v:IsA("BasePart") then 
				table.insert(ct,game:GetService('RunService').Stepped:connect(function()
					v.CanCollide = false
				end))
			end
		end
		local plr = game.Players.LocalPlayer

		function ah()
			BG:Destroy()
			BV:Destroy()
			plr.Character.Humanoid.PlatformStand = false
			for i,v in pairs(ct) do v:Disconnect() end
		end

		for i,v in next,workspace:GetDescendants() do
			if v.Name == "Block" and v.Parent.Name == "Ores" then
				plr.Character.Humanoid.PlatformStand = true
				repeat
					Time()
					ban()
					plr.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0,1,0)
				until v.Name ~= "Block" or not plr:FindFirstChild("Axe") 
				Time()
			end
		end


		plr:FindFirstChild("Axe").Parent = plr.Backpack
		game.StarterGui:SetCore("SendNotification", {
			Title    = "No blocks in game.."; 
			Text     = ""; 
			Duration = 3;
		})  
		ah()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Adrix
		game:GetService('Players').LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0,0,0)
		plr:FindFirstChild("Axe").Parent = plr.Backpack
		---
	else
		game.StarterGui:SetCore("SendNotification", {
			Title    = "A ok.";
			Text     = "";
			Duration = 0.5;
		})
	end
    end,
})
Page1.Button({
    Text = "AutoFarm V3",
    Callback = function(value)
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
    end,
})
local a = Page3.Button({
    Text = "Lobby",
    Callback = function(value)
local plr = game:GetService('Players').LocalPlayer.Character
	plr.HumanoidRootPart.CFrame = CFrame.new(0.136367261, 267.731812, 0.124310307, -0.0251912661, 0.0056480174, 0.999666691, -0.001678759, 0.999982417, -0.00569210527, -0.999681234, -0.00182159082, -0.0251813401)
    end,
})
local a = Page3.Button({
    Text = "Middle Island",
    Callback = function(value)
	local plr = game:GetService('Players').LocalPlayer.Character
	plr.HumanoidRootPart.CFrame = CFrame.new(0.219839305, 165.000183, 7.45933723, 0.999978483, 3.77896718e-08, -0.00655859848, -3.80399783e-08, 1, -3.80400245e-08, 0.00655859848, 3.82886967e-08, 0.999978483)
    end,
})
local a = Page3.Button({
    Text = "VIP",
    Callback = function(value)
	local plr = game:GetService('Players').LocalPlayer.Character
	plr.HumanoidRootPart.CFrame = CFrame.new(-0.225874364, 263.999908, -71.2721786, 0.999998808, -3.80979763e-08, -0.00153389922, 3.80396727e-08, 1, -3.80393885e-08, 0.00153389922, 3.79809926e-08, 0.999998808)
    end,
})
local a = Page3.Button({
    Text = "MEGA VIP",
    Callback = function(value)
local plr = game:GetService('Players').LocalPlayer.Character
	plr.HumanoidRootPart.CFrame = CFrame.new(0.404939502, 263.999908, 69.9724426, -0.999989629, 0, 0.00455036201, 0, 1, 0, -0.00455036201, 0, -0.999989629)
    end,
})
local a = Page3.Button({
    Text = "Shop",
    Callback = function(value)
local plr = game:GetService('Players').LocalPlayer.Character
	plr.HumanoidRootPart.CFrame = CFrame.new(93.2811508, 263.999908, -0.222072452, 0.00374330254, 3.78973759e-08, -0.999992967, 3.80400316e-08, 1, 3.80400387e-08, 0.999992967, -3.81821614e-08, 0.00374330254)
    end,
})
local a = Page3.Button({
    Text = "Gamepass Shop",
    Callback = function(value)
local plr = game:GetService('Players').LocalPlayer.Character
	plr.HumanoidRootPart.CFrame = CFrame.new(-64.2509308, 263.999908, -0.00550266355, 0.00354517018, -3.81748109e-08, 0.999993742, 3.80400778e-08, 1, 3.80401914e-08, -0.999993742, 3.79049823e-08, 0.00354517018)
    end,
})
local a = Page3.Button({
    Text = "Group",
    Callback = function(value)
	local plr = game:GetService('Players').LocalPlayer.Character
	plr.HumanoidRootPart.CFrame = CFrame.new(124.58004, 263.999908, 0.27186355, -0.00229451619, -4.15043502e-22, -0.999997377, 3.34917827e-22, 1, -4.15813076e-22, 0.999997377, -3.35871048e-22, -0.00229451619)
    end,
})
local a = Page3.Label({
    Text = "Cords"
})
local a = Page3.Button({
    Text = "Save Cord",
    Callback = function(value)
    	local plr = game:GetService('Players').LocalPlayer.Character
	here = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    end,
})
local a = Page3.Button({
    Text = "Got to Cord",
    Callback = function(value)
    	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(here)
    end,
})
local a = Page4.Label({
    Text = "Please do -cmds to see Commands"
})
Page4.Button({
    Text = "Cmds",
    Callback = function(value)
        local Cmds = Instance.new("ScreenGui")
local TopFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Exit = Instance.new("TextButton")
local Commands = Instance.new("ScrollingFrame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")
local TextLabel_6 = Instance.new("TextLabel")
local UIGridLayout = Instance.new("UIGridLayout")
local TextLabel_7 = Instance.new("TextLabel")
local TextLabel_8 = Instance.new("TextLabel")
local TextLabel_9 = Instance.new("TextLabel")

Cmds.Name = "Cmds"
Cmds.Parent = game.CoreGui
Cmds.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TopFrame.Name = "TopFrame"
TopFrame.Parent = Cmds
TopFrame.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
TopFrame.BorderColor3 = Color3.fromRGB(33, 33, 33)
TopFrame.BorderSizePixel = 0
TopFrame.Position = UDim2.new(0.100000001, 0, 0.189979136, 0)
TopFrame.Size = UDim2.new(0, 153, 0, 26)
TopFrame.Active = true
TopFrame.Draggable = true

Title.Name = "Title"
Title.Parent = TopFrame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.300653607, 0, 0.0384615399, 0)
Title.Size = UDim2.new(0, 59, 0, 25)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Puurs Cmds"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Title.TextWrapped = true

Exit.Name = "Exit"
Exit.Parent = TopFrame
Exit.BackgroundColor3 = Color3.fromRGB(255, 162, 0)
Exit.BorderSizePixel = 0
Exit.Position = UDim2.new(0.816993475, 0, 0.153846264, 0)
Exit.Size = UDim2.new(0, 20, 0, 18)
Exit.Font = Enum.Font.SourceSans
Exit.Text = ""
Exit.TextColor3 = Color3.fromRGB(0, 0, 0)
Exit.TextSize = 14.000

Commands.Name = "Commands"
Commands.Parent = TopFrame
Commands.Active = true
Commands.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
Commands.BorderColor3 = Color3.fromRGB(0, 0, 0)
Commands.BorderSizePixel = 0
Commands.Position = UDim2.new(0.0326797403, 0, 0.961538196, 0)
Commands.Size = UDim2.new(0, 140, 0, 190)

TextLabel.Parent = Commands
TextLabel.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
TextLabel.BackgroundTransparency = 0.400
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "-lb"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = Commands
TextLabel_2.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
TextLabel_2.BackgroundTransparency = 0.400
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Size = UDim2.new(0, 200, 0, 50)
TextLabel_2.Font = Enum.Font.SourceSansBold
TextLabel_2.Text = "-mid"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

TextLabel_3.Parent = Commands
TextLabel_3.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
TextLabel_3.BackgroundTransparency = 0.400
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Size = UDim2.new(0, 200, 0, 50)
TextLabel_3.Font = Enum.Font.SourceSansBold
TextLabel_3.Text = "-vip"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

TextLabel_4.Parent = Commands
TextLabel_4.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
TextLabel_4.BackgroundTransparency = 0.400
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Size = UDim2.new(0, 200, 0, 50)
TextLabel_4.Font = Enum.Font.SourceSansBold
TextLabel_4.Text = "-mega"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14.000
TextLabel_4.TextWrapped = true

TextLabel_5.Parent = Commands
TextLabel_5.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
TextLabel_5.BackgroundTransparency = 0.400
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Size = UDim2.new(0, 200, 0, 50)
TextLabel_5.Font = Enum.Font.SourceSansBold
TextLabel_5.Text = "-autofarm1"
TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 14.000
TextLabel_5.TextWrapped = true

TextLabel_6.Parent = Commands
TextLabel_6.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
TextLabel_6.BackgroundTransparency = 0.400
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Size = UDim2.new(0, 200, 0, 50)
TextLabel_6.Font = Enum.Font.SourceSansBold
TextLabel_6.Text = "-reload"
TextLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.TextScaled = true
TextLabel_6.TextSize = 14.000
TextLabel_6.TextWrapped = true

UIGridLayout.Parent = Commands
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellPadding = UDim2.new(0, 5, 0, 1)
UIGridLayout.CellSize = UDim2.new(0, 140, 0, 20)

TextLabel_7.Parent = Commands
TextLabel_7.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
TextLabel_7.BackgroundTransparency = 0.400
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Size = UDim2.new(0, 200, 0, 50)
TextLabel_7.Font = Enum.Font.SourceSansBold
TextLabel_7.Text = "-gus"
TextLabel_7.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.TextScaled = true
TextLabel_7.TextSize = 14.000
TextLabel_7.TextWrapped = true

TextLabel_8.Parent = Commands
TextLabel_8.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
TextLabel_8.BackgroundTransparency = 0.400
TextLabel_8.BorderSizePixel = 0
TextLabel_8.Size = UDim2.new(0, 200, 0, 50)
TextLabel_8.Font = Enum.Font.SourceSansBold
TextLabel_8.Text = "-skyhop"
TextLabel_8.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.TextScaled = true
TextLabel_8.TextSize = 14.000
TextLabel_8.TextWrapped = true

TextLabel_9.Parent = Commands
TextLabel_9.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
TextLabel_9.BackgroundTransparency = 0.400
TextLabel_9.BorderSizePixel = 0
TextLabel_9.Size = UDim2.new(0, 200, 0, 50)
TextLabel_9.Font = Enum.Font.SourceSansBold
TextLabel_9.Text = "-cmds"
TextLabel_9.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.TextScaled = true
TextLabel_9.TextSize = 14.000
TextLabel_9.TextWrapped = true

-- Scripts:

local function FVAZ_fake_script() -- Exit.LocalScript 
	local script = Instance.new('LocalScript', Exit)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Visible = false
	end)
	
	
end
coroutine.wrap(FVAZ_fake_script)()

        end,
})
Page4.Label({
    Text = "-invis"
})
Page4.Label({
    Text = "-vis"
})
Page4.Label({
    Text = "-givetool (Username)"
})
Page4.Label({
    Text = "-print (Testing :>)"
})
Page4.Label({
    Text = "-tp (Username)"
})
Page4.Label({
    Text = "-rejoin"
})
local a = Page5.Label({
    Text = "Credits"
})
local a = Page5.Label({
    Text = "Made by Puuror#3684 Vitamin.#8585"
})
local a = Page5.Label({
    Text = "Thx for Using PUURS"
})
local a = Page1.Button({
    Text = "Equip All",
    Callback = function(value)
        for _, tool in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if tool:IsA("Tool") then
         tool.Parent = game:GetService("Players").LocalPlayer.Character -- I didn't use Equip because the Equip function unequips any other tools in your character.
    end
end
    end,
})
local a = Page1.Button({
    Text = "Hitbox Expander",
    Callback = function(value)
    loadstring(game:HttpGet("http://gameovers.net/Scripts/Free/HitboxExpander/main.lua", true))()
    end,
})
local a = Page1.Button({
    Text = "Hitbox Expander V2",
Callback = function(value)


local lp = game:FindService("Players").LocalPlayer

local function gplr(String)
	local Found = {}
	local strl = String:lower()
	if strl == "all" then
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			table.insert(Found,v)
		end
	elseif strl == "others" then
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			if v.Name ~= lp.Name then
				table.insert(Found,v)
			end
		end 
	elseif strl == "me" then
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			if v.Name == lp.Name then
				table.insert(Found,v)
			end
		end 
	else
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			if v.Name:lower():sub(1, #String) == String:lower() then
				table.insert(Found,v)
			end
		end 
	end
	return Found 
end









-- Gui to Lua
-- Version: 3.2

-- Instances:

local Hitboxv5 = Instance.new("ScreenGui")
local Open = Instance.new("TextButton")
local drag = Instance.new("Frame")
local Frame = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local Home = Instance.new("TextButton")
local Hitbox = Instance.new("TextButton")
local Player = Instance.new("TextButton")
local TeamHitbox = Instance.new("TextButton")
local Destroygui = Instance.new("TextButton")
local HO = Instance.new("Frame")
local Rejoin = Instance.new("TextButton")
local Good = Instance.new("TextLabel")
local Name1 = Instance.new("TextLabel")
local CC = Instance.new("TextLabel")
local Hit = Instance.new("Frame")
local Hitb = Instance.new("TextBox")
local SI = Instance.new("TextLabel")
local Trans = Instance.new("TextBox")
local Tran = Instance.new("TextLabel")
local Matt = Instance.new("TextLabel")
local Mat = Instance.new("TextButton")
local ScrollingFrame_2 = Instance.new("ScrollingFrame")
local Brick = Instance.new("TextButton")
local Neon = Instance.new("TextButton")
local Wood = Instance.new("TextButton")
local Red = Instance.new("TextBox")
local R = Instance.new("TextLabel")
local Green = Instance.new("TextBox")
local G = Instance.new("TextLabel")
local Blue = Instance.new("TextBox")
local B = Instance.new("TextLabel")
local ONoff = Instance.new("TextButton")
local Pla = Instance.new("Frame")
local Hitb1 = Instance.new("TextBox")
local SI1 = Instance.new("TextLabel")
local Trans1 = Instance.new("TextBox")
local Tran1 = Instance.new("TextLabel")
local Matt1 = Instance.new("TextLabel")
local Mat1 = Instance.new("TextButton")
local ScrollingFrame_3 = Instance.new("ScrollingFrame")
local Brick_2 = Instance.new("TextButton")
local Neon_2 = Instance.new("TextButton")
local Wood_2 = Instance.new("TextButton")
local red1 = Instance.new("TextBox")
local R1 = Instance.new("TextLabel")
local Green1 = Instance.new("TextBox")
local G1 = Instance.new("TextLabel")
local Blue1 = Instance.new("TextBox")
local B1 = Instance.new("TextLabel")
local ONoff1 = Instance.new("TextButton")
local Target = Instance.new("TextBox")
local Team = Instance.new("Frame")
local Hitb2 = Instance.new("TextBox")
local SI2 = Instance.new("TextLabel")
local Trans2 = Instance.new("TextBox")
local Tran2 = Instance.new("TextLabel")
local Matt2 = Instance.new("TextLabel")
local Mat2 = Instance.new("TextButton")
local ScrollingFrame_4 = Instance.new("ScrollingFrame")
local Brick_3 = Instance.new("TextButton")
local Neon_3 = Instance.new("TextButton")
local Wood_3 = Instance.new("TextButton")
local Red2 = Instance.new("TextBox")
local R2 = Instance.new("TextLabel")
local Green2 = Instance.new("TextBox")
local G2 = Instance.new("TextLabel")
local blue2 = Instance.new("TextBox")
local B2 = Instance.new("TextLabel")
local ONoff2 = Instance.new("TextButton")
local TeamTarget = Instance.new("TextBox")
local Close = Instance.new("TextButton")
local Minimize = Instance.new("TextButton")

--Properties:

Hitboxv5.Name = "Hitbox v5"
Hitboxv5.Parent = game.CoreGui
Hitboxv5.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Open.Name = "Open"
Open.Parent = Hitboxv5
Open.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
Open.BorderColor3 = Color3.fromRGB(26, 41, 52)
Open.Position = UDim2.new(0, 0, 0.440625012, 0)
Open.Size = UDim2.new(0, 53, 0, 37)
Open.Font = Enum.Font.SourceSans
Open.Text = "Open"
Open.TextColor3 = Color3.fromRGB(0, 0, 0)
Open.TextScaled = true
Open.TextSize = 14.000
Open.TextWrapped = true
Open.MouseButton1Click:Connect(function()
	Open.Visible = false
	drag.Visible = true
end)

drag.Name = "drag"
drag.Parent = Hitboxv5
drag.Active = true
drag.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
drag.Position = UDim2.new(0.096753329, 0, 0.0194161441, 0)
drag.Size = UDim2.new(0, 386, 0, 31)
drag.Visible = false
drag.Draggable = true

Frame.Parent = drag
Frame.Active = true
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 148)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(-0.00300000003, 0, 2.02399993, 0)
Frame.Size = UDim2.new(0, 388, 0, 250)

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Size = UDim2.new(0, 89, 0, 250)
ScrollingFrame.BottomImage = ""
ScrollingFrame.MidImage = ""
ScrollingFrame.TopImage = ""

Home.Name = "Home"
Home.Parent = ScrollingFrame
Home.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
Home.BorderColor3 = Color3.fromRGB(184, 0, 3)
Home.BorderSizePixel = 0
Home.Position = UDim2.new(0.099999994, 0, 0.0120000001, 0)
Home.Size = UDim2.new(0, 64, 0, 27)
Home.Font = Enum.Font.SourceSans
Home.Text = "Home"
Home.TextColor3 = Color3.fromRGB(255, 255, 255)
Home.TextScaled = true
Home.TextSize = 14.000
Home.TextWrapped = true
Home.MouseButton1Click:Connect(function()
	Hit.Visible = false
	Pla.Visible = false
	Team.Visible = false
	HO.Visible = true
end)

Hitbox.Name = "Hitbox"
Hitbox.Parent = ScrollingFrame
Hitbox.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
Hitbox.BorderColor3 = Color3.fromRGB(184, 0, 3)
Hitbox.BorderSizePixel = 0
Hitbox.Position = UDim2.new(0.099999994, 0, 0.0820000023, 0)
Hitbox.Size = UDim2.new(0, 64, 0, 27)
Hitbox.Font = Enum.Font.SourceSans
Hitbox.Text = "Hitbox"
Hitbox.TextColor3 = Color3.fromRGB(255, 255, 255)
Hitbox.TextScaled = true
Hitbox.TextSize = 14.000
Hitbox.TextWrapped = true
Hitbox.MouseButton1Click:Connect(function()
	Hit.Visible = true
	Pla.Visible = false
	Team.Visible = false
	HO.Visible = false
end)

Player.Name = "Player"
Player.Parent = ScrollingFrame
Player.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
Player.BorderColor3 = Color3.fromRGB(184, 0, 3)
Player.BorderSizePixel = 0
Player.Position = UDim2.new(0.099999994, 0, 0.15200001, 0)
Player.Size = UDim2.new(0, 64, 0, 27)
Player.Font = Enum.Font.SourceSans
Player.Text = "Player"
Player.TextColor3 = Color3.fromRGB(255, 255, 255)
Player.TextScaled = true
Player.TextSize = 14.000
Player.TextWrapped = true
Player.MouseButton1Click:Connect(function()
	Hit.Visible = false
	Pla.Visible = true
	Team.Visible = false
	HO.Visible = false
end)

TeamHitbox.Name = "Team Hitbox"
TeamHitbox.Parent = ScrollingFrame
TeamHitbox.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
TeamHitbox.BorderColor3 = Color3.fromRGB(184, 0, 3)
TeamHitbox.BorderSizePixel = 0
TeamHitbox.Position = UDim2.new(0.0887640417, 0, 0.222000003, 0)
TeamHitbox.Size = UDim2.new(0, 64, 0, 27)
TeamHitbox.Font = Enum.Font.SourceSans
TeamHitbox.Text = "Team Hitbox (Coming Soon)"
TeamHitbox.TextColor3 = Color3.fromRGB(255, 255, 255)
TeamHitbox.TextScaled = true
TeamHitbox.TextSize = 14.000
TeamHitbox.TextWrapped = true
TeamHitbox.MouseButton1Click:Connect(function()
	Hit.Visible = false
	Pla.Visible = false
	Team.Visible = true
	HO.Visible = false
end)

Destroygui.Name = "Destroy gui"
Destroygui.Parent = ScrollingFrame
Destroygui.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Destroygui.BorderSizePixel = 0
Destroygui.Position = UDim2.new(0.0898876414, 0, 0.294, 0)
Destroygui.Size = UDim2.new(0, 64, 0, 27)
Destroygui.Font = Enum.Font.SourceSans
Destroygui.Text =  "Remove Gui"
Destroygui.TextColor3 = Color3.fromRGB(0, 0, 0)
Destroygui.TextScaled = true
Destroygui.TextSize = 14.000
Destroygui.TextWrapped = true
Destroygui.MouseButton1Click:Connect(function()
	Hitboxv5:Destroy()
end)

HO.Name = "HO"
HO.Parent = Frame
HO.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
HO.BorderSizePixel = 0
HO.Position = UDim2.new(0.24742268, 0, 0.0520000011, 0)
HO.Size = UDim2.new(0, 280, 0, 223)

Rejoin.Name = "Rejoin"
Rejoin.Parent = HO
Rejoin.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Rejoin.BorderSizePixel = 0
Rejoin.Position = UDim2.new(0, 0, 0.775784731, 0)
Rejoin.Size = UDim2.new(0, 280, 0, 50)
Rejoin.Font = Enum.Font.SourceSans
Rejoin.Text = "Rejoin"
Rejoin.TextColor3 = Color3.fromRGB(255, 255, 255)
Rejoin.TextScaled = true
Rejoin.TextSize = 14.000
Rejoin.TextWrapped = true
Rejoin.MouseButton1Click:Connect(function()
	game:GetService("TeleportService"):Teleport(game.PlaceId)
end)

Good.Name = "Good"
Good.Parent = HO
Good.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Good.BorderSizePixel = 0
Good.Size = UDim2.new(0, 280, 0, 81)
Good.Font = Enum.Font.SourceSans
Good.Text = "Thanks for using Hitbox V5"
Good.TextColor3 = Color3.fromRGB(255, 255, 255)
Good.TextScaled = true
Good.TextSize = 14.000
Good.TextWrapped = true

Name1.Name = "Name"
Name1.Parent = HO
Name1.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Name1.BorderSizePixel = 0
Name1.Position = UDim2.new(0, 0, 0.363228709, 0)
Name1.Size = UDim2.new(0, 280, 0, 53)
Name1.Font = Enum.Font.SourceSans
Name1.Text = ""
Name1.TextColor3 = Color3.fromRGB(255, 255, 255)
Name1.TextScaled = true
Name1.TextSize = 14.000
Name1.TextWrapped = true
pcall(function()
	Name1.Text = game.Players:GetPlayerFromCharacter(game.Workspace.CurrentCamera.CameraSubject.Parent).Name
end)

CC.Name = "CC"
CC.Parent = Frame
CC.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CC.BorderSizePixel = 0
CC.Position = UDim2.new(0, 0, -0.124000005, 0)
CC.Size = UDim2.new(0, 388, 0, 31)
CC.Font = Enum.Font.SourceSans
CC.Text = "Script Made by WarriorRoberr"
CC.TextColor3 = Color3.fromRGB(0, 0, 0)
CC.TextScaled = true
CC.TextSize = 14.000
CC.TextWrapped = true

Hit.Name = "Hit"
Hit.Parent = Frame
Hit.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Hit.BorderSizePixel = 0
Hit.Position = UDim2.new(0.24742268, 0, 0.0520000011, 0)
Hit.Size = UDim2.new(0, 280, 0, 223)
Hit.Visible = false

Hitb.Name = "Hitb"
Hitb.Parent = Hit
Hitb.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Hitb.Position = UDim2.new(0.0821428597, 0, 0.125560537, 0)
Hitb.Size = UDim2.new(0, 43, 0, 43)
Hitb.Font = Enum.Font.SourceSans
Hitb.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Hitb.PlaceholderText = "Hitbox"
Hitb.Text = ""
Hitb.TextColor3 = Color3.fromRGB(0, 0, 0)
Hitb.TextSize = 14.000

SI.Name = "SI"
SI.Parent = Hit
SI.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
SI.BorderSizePixel = 0
SI.Position = UDim2.new(0.0821428597, 0, 0, 0)
SI.Size = UDim2.new(0, 43, 0, 28)
SI.Font = Enum.Font.SourceSans
SI.Text = "Size:"
SI.TextColor3 = Color3.fromRGB(255, 255, 255)
SI.TextSize = 14.000

Trans.Name = "Trans"
Trans.Parent = Hit
Trans.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Trans.Position = UDim2.new(0.349999994, 0, 0.125560537, 0)
Trans.Size = UDim2.new(0, 43, 0, 43)
Trans.Font = Enum.Font.SourceSans
Trans.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Trans.PlaceholderText = "Trans"
Trans.Text = ""
Trans.TextColor3 = Color3.fromRGB(0, 0, 0)
Trans.TextSize = 14.000

Tran.Name = "Tran"
Tran.Parent = Hit
Tran.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Tran.BorderSizePixel = 0
Tran.Position = UDim2.new(0.349999994, 0, 0, 0)
Tran.Size = UDim2.new(0, 43, 0, 28)
Tran.Font = Enum.Font.SourceSans
Tran.Text = "Transparency:"
Tran.TextColor3 = Color3.fromRGB(255, 255, 255)
Tran.TextSize = 14.000

Matt.Name = "Matt"
Matt.Parent = Hit
Matt.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Matt.BorderSizePixel = 0
Matt.Position = UDim2.new(0.614285707, 0, 0, 0)
Matt.Size = UDim2.new(0, 43, 0, 28)
Matt.Font = Enum.Font.SourceSans
Matt.Text = "Material:"
Matt.TextColor3 = Color3.fromRGB(255, 255, 255)
Matt.TextSize = 14.000

Mat.Name = "Mat"
Mat.Parent = Hit
Mat.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Mat.Position = UDim2.new(0.614285707, 0, 0.121076226, 0)
Mat.Size = UDim2.new(0, 43, 0, 43)
Mat.Font = Enum.Font.SourceSans
Mat.Text = "Material"
Mat.TextColor3 = Color3.fromRGB(0, 0, 0)
Mat.TextSize = 14.000
Mat.MouseButton1Click:Connect(function()
	ScrollingFrame_2.Visible = true
end)

ScrollingFrame_2.Parent = Hit
ScrollingFrame_2.Active = true
ScrollingFrame_2.BackgroundColor3 = Color3.fromRGB(136, 136, 136)
ScrollingFrame_2.Position = UDim2.new(0.870108962, 0, 0.14172487, 0)
ScrollingFrame_2.Size = UDim2.new(0, 94, 0, 131)
ScrollingFrame_2.Visible = false
ScrollingFrame_2.BottomImage = ""
ScrollingFrame_2.MidImage = ""
ScrollingFrame_2.ScrollBarThickness = 0
ScrollingFrame_2.TopImage = ""

Brick.Name = "Brick"
Brick.Parent = ScrollingFrame_2
Brick.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Brick.Position = UDim2.new(0.0701754987, 0, 0.0177102201, 0)
Brick.Size = UDim2.new(0, 80, 0, 27)
Brick.Font = Enum.Font.SourceSans
Brick.Text = "Brick"
Brick.TextColor3 = Color3.fromRGB(255, 255, 255)
Brick.TextScaled = true
Brick.TextSize = 14.000
Brick.TextWrapped = true
Brick.MouseButton1Click:Connect(function()
	ScrollingFrame_2.Visible = false
	Mat.Text = "Brick"
end)

Neon.Name = "Neon"
Neon.Parent = ScrollingFrame_2
Neon.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Neon.Position = UDim2.new(0.0701754987, 0, 0.0939434022, 0)
Neon.Size = UDim2.new(0, 80, 0, 27)
Neon.Font = Enum.Font.SourceSans
Neon.Text = "Neon"
Neon.TextColor3 = Color3.fromRGB(255, 255, 255)
Neon.TextScaled = true
Neon.TextSize = 14.000
Neon.TextWrapped = true
Neon.MouseButton1Click:Connect(function()
	Mat.Text = "Neon"
	ScrollingFrame_2.Visible = false
end)

Wood.Name = "Wood"
Wood.Parent = ScrollingFrame_2
Wood.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Wood.Position = UDim2.new(0.0701754987, 0, 0.170176595, 0)
Wood.Size = UDim2.new(0, 80, 0, 27)
Wood.Font = Enum.Font.SourceSans
Wood.Text = "Wood"
Wood.TextColor3 = Color3.fromRGB(255, 255, 255)
Wood.TextScaled = true
Wood.TextSize = 14.000
Wood.TextWrapped = true
Wood.MouseButton1Click:Connect(function()
	Mat.Text = "Wood"
	ScrollingFrame_2.Visible = false
end)

Red.Name = "Red"
Red.Parent = Hit
Red.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Red.Position = UDim2.new(0.0821428597, 0, 0.461883426, 0)
Red.Size = UDim2.new(0, 43, 0, 43)
Red.Font = Enum.Font.SourceSans
Red.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Red.PlaceholderText = "Number"
Red.Text = ""
Red.TextColor3 = Color3.fromRGB(0, 0, 0)
Red.TextSize = 14.000

R.Name = "R"
R.Parent = Hit
R.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
R.BorderSizePixel = 0
R.Position = UDim2.new(0.0821428597, 0, 0.336322874, 0)
R.Size = UDim2.new(0, 43, 0, 28)
R.Font = Enum.Font.SourceSans
R.Text = "Red"
R.TextColor3 = Color3.fromRGB(255, 0, 0)
R.TextSize = 14.000

Green.Name = "Green"
Green.Parent = Hit
Green.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
Green.Position = UDim2.new(0.349999994, 0, 0.461883426, 0)
Green.Size = UDim2.new(0, 43, 0, 43)
Green.Font = Enum.Font.SourceSans
Green.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Green.PlaceholderText = "Number"
Green.Text = ""
Green.TextColor3 = Color3.fromRGB(0, 0, 0)
Green.TextSize = 14.000

G.Name = "G"
G.Parent = Hit
G.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
G.BorderSizePixel = 0
G.Position = UDim2.new(0.349999994, 0, 0.336322874, 0)
G.Size = UDim2.new(0, 43, 0, 28)
G.Font = Enum.Font.SourceSans
G.Text = "Green"
G.TextColor3 = Color3.fromRGB(0, 255, 0)
G.TextSize = 14.000

Blue.Name = "Blue"
Blue.Parent = Hit
Blue.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
Blue.Position = UDim2.new(0.614285707, 0, 0.461883426, 0)
Blue.Size = UDim2.new(0, 43, 0, 43)
Blue.Font = Enum.Font.SourceSans
Blue.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Blue.PlaceholderText = "Number"
Blue.Text = ""
Blue.TextColor3 = Color3.fromRGB(0, 0, 0)
Blue.TextSize = 14.000

B.Name = "B"
B.Parent = Hit
B.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
B.BorderSizePixel = 0
B.Position = UDim2.new(0.614285707, 0, 0.336322874, 0)
B.Size = UDim2.new(0, 43, 0, 28)
B.Font = Enum.Font.SourceSans
B.Text = "Blue"
B.TextColor3 = Color3.fromRGB(0, 0, 255)
B.TextSize = 14.000

ONoff.Name = "ON/off"
ONoff.Parent = Hit
ONoff.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ONoff.Position = UDim2.new(0.764491737, 0, 0.775784731, 0)
ONoff.Size = UDim2.new(0, 55, 0, 43)
ONoff.Font = Enum.Font.SourceSans
ONoff.Text = "Execute"
ONoff.TextColor3 = Color3.fromRGB(255, 0, 0)
ONoff.TextScaled = true
ONoff.TextSize = 14.000
ONoff.TextWrapped = true
ONoff.MouseButton1Click:Connect(function()
	_G.HeadSize = Hitb.Text
	_G.Disabled = true

	game:GetService('RunService').RenderStepped:connect(function()
		if _G.Disabled then
			for i,v in next, game:GetService('Players'):GetPlayers() do
				if v.Name ~= game:GetService('Players').LocalPlayer.Name then
					pcall(function()
						v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
						v.Character.HumanoidRootPart.Transparency = Trans.Text
						v.Character.HumanoidRootPart.Color = Color3.new(Red.Text,Green.Text,Blue.Text)
						v.Character.HumanoidRootPart.Material = Mat.Text
						v.Character.HumanoidRootPart.CanCollide = false
					end)
				end
			end
		end
	end)
end)

Pla.Name = "Pla"
Pla.Parent = Frame
Pla.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Pla.BorderSizePixel = 0
Pla.Position = UDim2.new(0.24742268, 0, 0.0520000011, 0)
Pla.Size = UDim2.new(0, 280, 0, 223)
Pla.Visible = false

Hitb1.Name = "Hitb1"
Hitb1.Parent = Pla
Hitb1.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Hitb1.Position = UDim2.new(0.0821428597, 0, 0.125560537, 0)
Hitb1.Size = UDim2.new(0, 43, 0, 43)
Hitb1.Font = Enum.Font.SourceSans
Hitb1.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Hitb1.PlaceholderText = "Hitbox"
Hitb1.Text = ""
Hitb1.TextColor3 = Color3.fromRGB(0, 0, 0)
Hitb1.TextSize = 14.000

SI1.Name = "SI1"
SI1.Parent = Pla
SI1.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
SI1.BorderSizePixel = 0
SI1.Position = UDim2.new(0.0821428597, 0, 0, 0)
SI1.Size = UDim2.new(0, 43, 0, 28)
SI1.Font = Enum.Font.SourceSans
SI1.Text = "Size:"
SI1.TextColor3 = Color3.fromRGB(255, 255, 255)
SI1.TextSize = 14.000

Trans1.Name = "Trans1"
Trans1.Parent = Pla
Trans1.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Trans1.Position = UDim2.new(0.349999994, 0, 0.125560537, 0)
Trans1.Size = UDim2.new(0, 43, 0, 43)
Trans1.Font = Enum.Font.SourceSans
Trans1.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Trans1.PlaceholderText = "Trans"
Trans1.Text = ""
Trans1.TextColor3 = Color3.fromRGB(0, 0, 0)
Trans1.TextSize = 14.000

Tran1.Name = "Tran1"
Tran1.Parent = Pla
Tran1.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Tran1.BorderSizePixel = 0
Tran1.Position = UDim2.new(0.349999994, 0, 0, 0)
Tran1.Size = UDim2.new(0, 43, 0, 28)
Tran1.Font = Enum.Font.SourceSans
Tran1.Text = "Transparency:"
Tran1.TextColor3 = Color3.fromRGB(255, 255, 255)
Tran1.TextSize = 14.000

Matt1.Name = "Matt1"
Matt1.Parent = Pla
Matt1.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Matt1.BorderSizePixel = 0
Matt1.Position = UDim2.new(0.614285707, 0, 0, 0)
Matt1.Size = UDim2.new(0, 43, 0, 28)
Matt1.Font = Enum.Font.SourceSans
Matt1.Text = "Material:"
Matt1.TextColor3 = Color3.fromRGB(255, 255, 255)
Matt1.TextSize = 14.000

Mat1.Name = "Mat1"
Mat1.Parent = Pla
Mat1.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Mat1.Position = UDim2.new(0.614285707, 0, 0.121076226, 0)
Mat1.Size = UDim2.new(0, 43, 0, 43)
Mat1.Font = Enum.Font.SourceSans
Mat1.Text = "Material"
Mat1.TextColor3 = Color3.fromRGB(0, 0, 0)
Mat1.TextSize = 14.000
Mat1.MouseButton1Click:Connect(function()
	ScrollingFrame_3.Visible = true
end)

ScrollingFrame_3.Parent = Pla
ScrollingFrame_3.Active = true
ScrollingFrame_3.BackgroundColor3 = Color3.fromRGB(136, 136, 136)
ScrollingFrame_3.Position = UDim2.new(0.870108962, 0, 0.14172487, 0)
ScrollingFrame_3.Size = UDim2.new(0, 94, 0, 131)
ScrollingFrame_3.Visible = false
ScrollingFrame_3.BottomImage = ""
ScrollingFrame_3.MidImage = ""
ScrollingFrame_3.ScrollBarThickness = 0
ScrollingFrame_3.TopImage = ""

Brick_2.Name = "Brick"
Brick_2.Parent = ScrollingFrame_3
Brick_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Brick_2.Position = UDim2.new(0.0701754987, 0, 0.0177102201, 0)
Brick_2.Size = UDim2.new(0, 80, 0, 27)
Brick_2.Font = Enum.Font.SourceSans
Brick_2.Text = "Brick"
Brick_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Brick_2.TextScaled = true
Brick_2.TextSize = 14.000
Brick_2.TextWrapped = true
Brick_2.MouseButton1Click:Connect(function()
	Mat1.Text = "Brick"
	ScrollingFrame_3.Visible = false
end)

Neon_2.Name = "Neon"
Neon_2.Parent = ScrollingFrame_3
Neon_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Neon_2.Position = UDim2.new(0.0701754987, 0, 0.0939434022, 0)
Neon_2.Size = UDim2.new(0, 80, 0, 27)
Neon_2.Font = Enum.Font.SourceSans
Neon_2.Text = "Neon"
Neon_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Neon_2.TextScaled = true
Neon_2.TextSize = 14.000
Neon_2.TextWrapped = true
Neon_2.MouseButton1Click:Connect(function()
	Mat1.Text = "Neon"
	ScrollingFrame_3.Visible = false
end)

Wood_2.Name = "Wood"
Wood_2.Parent = ScrollingFrame_3
Wood_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Wood_2.Position = UDim2.new(0.0701754987, 0, 0.170176595, 0)
Wood_2.Size = UDim2.new(0, 80, 0, 27)
Wood_2.Font = Enum.Font.SourceSans
Wood_2.Text = "Wood"
Wood_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Wood_2.TextScaled = true
Wood_2.TextSize = 14.000
Wood_2.TextWrapped = true
Wood_2.MouseButton1Click:Connect(function()
	Mat1.Text = "Wood"
	ScrollingFrame_3.Visible = false
end)

red1.Name = "red1"
red1.Parent = Pla
red1.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
red1.Position = UDim2.new(0.0821428597, 0, 0.461883426, 0)
red1.Size = UDim2.new(0, 43, 0, 43)
red1.Font = Enum.Font.SourceSans
red1.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
red1.PlaceholderText = "Number"
red1.Text = ""
red1.TextColor3 = Color3.fromRGB(0, 0, 0)
red1.TextSize = 14.000

R1.Name = "R1"
R1.Parent = Pla
R1.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
R1.BorderSizePixel = 0
R1.Position = UDim2.new(0.0821428597, 0, 0.336322874, 0)
R1.Size = UDim2.new(0, 43, 0, 28)
R1.Font = Enum.Font.SourceSans
R1.Text = "Red"
R1.TextColor3 = Color3.fromRGB(255, 0, 0)
R1.TextSize = 14.000

Green1.Name = "Green1"
Green1.Parent = Pla
Green1.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
Green1.Position = UDim2.new(0.349999994, 0, 0.461883426, 0)
Green1.Size = UDim2.new(0, 43, 0, 43)
Green1.Font = Enum.Font.SourceSans
Green1.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Green1.PlaceholderText = "Number"
Green1.Text = ""
Green1.TextColor3 = Color3.fromRGB(0, 0, 0)
Green1.TextSize = 14.000

G1.Name = "G1"
G1.Parent = Pla
G1.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
G1.BorderSizePixel = 0
G1.Position = UDim2.new(0.349999994, 0, 0.336322874, 0)
G1.Size = UDim2.new(0, 43, 0, 28)
G1.Font = Enum.Font.SourceSans
G1.Text = "Green"
G1.TextColor3 = Color3.fromRGB(0, 255, 0)
G1.TextSize = 14.000

Blue1.Name = "Blue1"
Blue1.Parent = Pla
Blue1.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
Blue1.Position = UDim2.new(0.614285707, 0, 0.461883426, 0)
Blue1.Size = UDim2.new(0, 43, 0, 43)
Blue1.Font = Enum.Font.SourceSans
Blue1.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Blue1.PlaceholderText = "Number"
Blue1.Text = ""
Blue1.TextColor3 = Color3.fromRGB(0, 0, 0)
Blue1.TextSize = 14.000

B1.Name = "B1"
B1.Parent = Pla
B1.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
B1.BorderSizePixel = 0
B1.Position = UDim2.new(0.614285707, 0, 0.336322874, 0)
B1.Size = UDim2.new(0, 43, 0, 28)
B1.Font = Enum.Font.SourceSans
B1.Text = "Blue"
B1.TextColor3 = Color3.fromRGB(0, 0, 255)
B1.TextSize = 14.000

ONoff1.Name = "ON/off1"
ONoff1.Parent = Pla
ONoff1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ONoff1.Position = UDim2.new(0.764491737, 0, 0.775784731, 0)
ONoff1.Size = UDim2.new(0, 55, 0, 43)
ONoff1.Font = Enum.Font.SourceSans
ONoff1.Text = "Execute"
ONoff1.TextColor3 = Color3.fromRGB(255, 0, 0)
ONoff1.TextScaled = true
ONoff1.TextSize = 14.000
ONoff1.TextWrapped = true
ONoff1.MouseButton1Click:Connect(function()
	local Target1 = gplr(Target.Text)
	if Target1[1] then
		Target1 = Target1[1]
		_G.HeadSize1 = Hitb1.Text
		_G.Disabled1 = true

		game:GetService('RunService').RenderStepped:connect(function()
			if _G.Disabled1 then
				pcall(function()
					Target1.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize1,_G.HeadSize1,_G.HeadSize1)
					Target1.Character.HumanoidRootPart.Transparency = Trans1.Text
					Target1.Character.HumanoidRootPart.Color = Color3.new(red1.Text,Green1.Text,Blue1.Text)
					Target1.Character.HumanoidRootPart.Material = Mat1.Text
					Target1.Character.HumanoidRootPart.CanCollide = false
				end)
			end
		end)
	end
end)

Target.Name = "Target"
Target.Parent = Pla
Target.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Target.Position = UDim2.new(0.134787098, 0, 0.775784731, 0)
Target.Size = UDim2.new(0, 160, 0, 43)
Target.Font = Enum.Font.SourceSans
Target.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Target.PlaceholderText = "Player name here"
Target.Text = ""
Target.TextColor3 = Color3.fromRGB(0, 0, 0)
Target.TextScaled = true
Target.TextSize = 14.000
Target.TextWrapped = true

Team.Name = "Team"
Team.Parent = Frame
Team.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Team.BorderSizePixel = 0
Team.Position = UDim2.new(0.24742268, 0, 0.0520000011, 0)
Team.Size = UDim2.new(0, 280, 0, 223)
Team.Visible = false

Hitb2.Name = "Hitb2"
Hitb2.Parent = Team
Hitb2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Hitb2.Position = UDim2.new(0.0821428597, 0, 0.125560537, 0)
Hitb2.Size = UDim2.new(0, 43, 0, 43)
Hitb2.Font = Enum.Font.SourceSans
Hitb2.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Hitb2.PlaceholderText = "Hitbox"
Hitb2.Text = ""
Hitb2.TextColor3 = Color3.fromRGB(0, 0, 0)
Hitb2.TextSize = 14.000

SI2.Name = "SI2"
SI2.Parent = Team
SI2.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
SI2.BorderSizePixel = 0
SI2.Position = UDim2.new(0.0821428597, 0, 0, 0)
SI2.Size = UDim2.new(0, 43, 0, 28)
SI2.Font = Enum.Font.SourceSans
SI2.Text = "Size:"
SI2.TextColor3 = Color3.fromRGB(255, 255, 255)
SI2.TextSize = 14.000

Trans2.Name = "Trans2"
Trans2.Parent = Team
Trans2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Trans2.Position = UDim2.new(0.349999994, 0, 0.125560537, 0)
Trans2.Size = UDim2.new(0, 43, 0, 43)
Trans2.Font = Enum.Font.SourceSans
Trans2.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Trans2.PlaceholderText = "Trans"
Trans2.Text = ""
Trans2.TextColor3 = Color3.fromRGB(0, 0, 0)
Trans2.TextSize = 14.000

Tran2.Name = "Tran2"
Tran2.Parent = Team
Tran2.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Tran2.BorderSizePixel = 0
Tran2.Position = UDim2.new(0.349999994, 0, 0, 0)
Tran2.Size = UDim2.new(0, 43, 0, 28)
Tran2.Font = Enum.Font.SourceSans
Tran2.Text = "Transparency:"
Tran2.TextColor3 = Color3.fromRGB(255, 255, 255)
Tran2.TextSize = 14.000

Matt2.Name = "Matt2"
Matt2.Parent = Team
Matt2.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Matt2.BorderSizePixel = 0
Matt2.Position = UDim2.new(0.614285707, 0, 0, 0)
Matt2.Size = UDim2.new(0, 43, 0, 28)
Matt2.Font = Enum.Font.SourceSans
Matt2.Text = "Material:"
Matt2.TextColor3 = Color3.fromRGB(255, 255, 255)
Matt2.TextSize = 14.000

Mat2.Name = "Mat2"
Mat2.Parent = Team
Mat2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Mat2.Position = UDim2.new(0.614285707, 0, 0.121076226, 0)
Mat2.Size = UDim2.new(0, 43, 0, 43)
Mat2.Font = Enum.Font.SourceSans
Mat2.Text = "Material"
Mat2.TextColor3 = Color3.fromRGB(0, 0, 0)
Mat2.TextSize = 14.000
Mat2.MouseButton1Click:Connect(function()
	ScrollingFrame_4.Visible = true
end)


ScrollingFrame_4.Parent = Team
ScrollingFrame_4.Active = true
ScrollingFrame_4.BackgroundColor3 = Color3.fromRGB(136, 136, 136)
ScrollingFrame_4.Position = UDim2.new(0.870108962, 0, 0.14172487, 0)
ScrollingFrame_4.Size = UDim2.new(0, 94, 0, 131)
ScrollingFrame_4.Visible = false
ScrollingFrame_4.BottomImage = ""
ScrollingFrame_4.MidImage = ""
ScrollingFrame_4.ScrollBarThickness = 0
ScrollingFrame_4.TopImage = ""

Brick_3.Name = "Brick"
Brick_3.Parent = ScrollingFrame_4
Brick_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Brick_3.Position = UDim2.new(0.0701754987, 0, 0.0177102201, 0)
Brick_3.Size = UDim2.new(0, 80, 0, 27)
Brick_3.Font = Enum.Font.SourceSans
Brick_3.Text = "Brick"
Brick_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Brick_3.TextScaled = true
Brick_3.TextSize = 14.000
Brick_3.TextWrapped = true
Brick_3.MouseButton1Click:Connect(function()
	Mat2.Text = "Brick"
	ScrollingFrame_4.Visible = false
end)

Neon_3.Name = "Neon"
Neon_3.Parent = ScrollingFrame_4
Neon_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Neon_3.Position = UDim2.new(0.0701754987, 0, 0.0939434022, 0)
Neon_3.Size = UDim2.new(0, 80, 0, 27)
Neon_3.Font = Enum.Font.SourceSans
Neon_3.Text = "Neon"
Neon_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Neon_3.TextScaled = true
Neon_3.TextSize = 14.000
Neon_3.TextWrapped = true
Neon_3.MouseButton1Click:Connect(function()
	Mat2.Text = "Neon"
	ScrollingFrame_4.Visible = false
end)

Wood_3.Name = "Wood"
Wood_3.Parent = ScrollingFrame_4
Wood_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Wood_3.Position = UDim2.new(0.0701754987, 0, 0.170176595, 0)
Wood_3.Size = UDim2.new(0, 80, 0, 27)
Wood_3.Font = Enum.Font.SourceSans
Wood_3.Text = "Wood"
Wood_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Wood_3.TextScaled = true
Wood_3.TextSize = 14.000
Wood_3.TextWrapped = true
Wood_3.MouseButton1Click:Connect(function()
	Mat2.Text = "Wood"
	ScrollingFrame_4.Visible = false
end)

Red2.Name = "Red2"
Red2.Parent = Team
Red2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Red2.Position = UDim2.new(0.0821428597, 0, 0.461883426, 0)
Red2.Size = UDim2.new(0, 43, 0, 43)
Red2.Font = Enum.Font.SourceSans
Red2.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Red2.PlaceholderText = "Number"
Red2.Text = ""
Red2.TextColor3 = Color3.fromRGB(0, 0, 0)
Red2.TextSize = 14.000

R2.Name = "R2"
R2.Parent = Team
R2.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
R2.BorderSizePixel = 0
R2.Position = UDim2.new(0.0821428597, 0, 0.336322874, 0)
R2.Size = UDim2.new(0, 43, 0, 28)
R2.Font = Enum.Font.SourceSans
R2.Text = "Red"
R2.TextColor3 = Color3.fromRGB(255, 0, 0)
R2.TextSize = 14.000

Green2.Name = "Green2"
Green2.Parent = Team
Green2.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
Green2.Position = UDim2.new(0.349999994, 0, 0.461883426, 0)
Green2.Size = UDim2.new(0, 43, 0, 43)
Green2.Font = Enum.Font.SourceSans
Green2.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Green2.PlaceholderText = "Number"
Green2.Text = ""
Green2.TextColor3 = Color3.fromRGB(0, 0, 0)
Green2.TextSize = 14.000

G2.Name = "G2"
G2.Parent = Team
G2.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
G2.BorderSizePixel = 0
G2.Position = UDim2.new(0.349999994, 0, 0.336322874, 0)
G2.Size = UDim2.new(0, 43, 0, 28)
G2.Font = Enum.Font.SourceSans
G2.Text = "Green"
G2.TextColor3 = Color3.fromRGB(0, 255, 0)
G2.TextSize = 14.000

blue2.Name = "blue2"
blue2.Parent = Team
blue2.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
blue2.Position = UDim2.new(0.614285707, 0, 0.461883426, 0)
blue2.Size = UDim2.new(0, 43, 0, 43)
blue2.Font = Enum.Font.SourceSans
blue2.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
blue2.PlaceholderText = "Number"
blue2.Text = ""
blue2.TextColor3 = Color3.fromRGB(0, 0, 0)
blue2.TextSize = 14.000

B2.Name = "B2"
B2.Parent = Team
B2.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
B2.BorderSizePixel = 0
B2.Position = UDim2.new(0.614285707, 0, 0.336322874, 0)
B2.Size = UDim2.new(0, 43, 0, 28)
B2.Font = Enum.Font.SourceSans
B2.Text = "Blue"
B2.TextColor3 = Color3.fromRGB(0, 0, 255)
B2.TextSize = 14.000

ONoff2.Name = "ON/off2"
ONoff2.Parent = Team
ONoff2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ONoff2.Position = UDim2.new(0.764491737, 0, 0.775784731, 0)
ONoff2.Size = UDim2.new(0, 55, 0, 43)
ONoff2.Font = Enum.Font.SourceSans
ONoff2.Text = "Execute"
ONoff2.TextColor3 = Color3.fromRGB(255, 0, 0)
ONoff2.TextScaled = true
ONoff2.TextSize = 14.000
ONoff2.TextWrapped = true

TeamTarget.Name = "Team Target"
TeamTarget.Parent = Team
TeamTarget.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TeamTarget.Position = UDim2.new(0.134787098, 0, 0.775784731, 0)
TeamTarget.Size = UDim2.new(0, 160, 0, 43)
TeamTarget.Font = Enum.Font.SourceSans
TeamTarget.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
TeamTarget.PlaceholderText = "Team name here"
TeamTarget.Text = ""
TeamTarget.TextColor3 = Color3.fromRGB(0, 0, 0)
TeamTarget.TextScaled = true
TeamTarget.TextSize = 14.000
TeamTarget.TextWrapped = true

Close.Name = "Close"
Close.Parent = drag
Close.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.917525709, 0, -0.0221935511, 0)
Close.Size = UDim2.new(0, 31, 0, 31)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextWrapped = true
Close.MouseButton1Click:Connect(function()
	drag.Visible = false
	Open.Visible = true
end)

Minimize.Name = "Mini mize"
Minimize.Parent = drag
Minimize.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Minimize.BorderSizePixel = 0
Minimize.Position = UDim2.new(0.836787581, 0, -0.0322580636, 0)
Minimize.Size = UDim2.new(0, 31, 0, 31)
Minimize.Font = Enum.Font.SourceSans
Minimize.Text = "-"
Minimize.TextColor3 = Color3.fromRGB(255, 255, 255)
Minimize.TextScaled = true
Minimize.TextSize = 14.000
Minimize.TextWrapped = true
function Mini()
	if Minimize.Text == "-" then
		Minimize.Text = "+"
		Frame.Visible = false
	elseif Minimize.Text == "+" then
		Minimize.Text = "-"
		Frame.Visible = true
	end
end
Minimize.MouseButton1Click:Connect(Mini)
    end,
})
local Button = Page1.Button({
    Text = "Fling Everyone",
    Callback = function(value)
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
        wait(0.1)
        game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').PlatformStand = false
end,
})
local a = Page1.Button({
    Text = "AntiFling",
    Callback = function(value)
        loadstring(game:HttpGet('https://pastebin.com/raw/hKfDWcJw'))();
        end,
})
local a = Page1.Button({
    Text = "AntiHitbox",
    Callback = function(value)
        if game.Players.LocalPlayer.Character ~= nil then
        local char = game.Players.LocalPlayer.Character
        char.Parent = nil
        char.HumanoidRootPart:Destroy()
        char.Parent = workspace
    end
        end,
})
local a = Page1.Button({
    Text = "Sword Reach",
    Callback = function(value)
        a=Instance.new("SelectionBox",game.Players.LocalPlayer.Backpack.Sword.Handle)
	a.Adornee=game.Players.LocalPlayer.Backpack.Sword.Handle
	game.Players.LocalPlayer.Backpack.Sword.Handle.Size=Vector3.new(1,1,30)
        end,
})
local a = Page2.Button({
    Text = "HealthNotification",
    Callback = function(value)
        local z = game.Players.LocalPlayer.Character.Humanoid


		game.StarterGui:SetCore("SendNotification", {
			Title    = "YourHealth is: "..z.Health; 
			Text     = "MaxHealth: "..z.MaxHealth; 
			Duration = 3;
		})  
        end,
})
Page2.Button({
    Text = "T Pose",
    Callback = function(value)
        print("HI")
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://27432691"
local k = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
wait(1.473)
k:AdjustSpeed(0)
wait(100000)
k:stop()
        end,
})
local a = Page1.Button({
    Text = "Broken Pickaxe",
    Callback = function(value)
        local Why = game:GetService("Players").LocalPlayer
		local Char = Why.Character
		local backpack = Why.Backpack

		backpack.Block.Parent =  Why.Character
		Char.Block.Left:Destroy()
		Char.Block.Parent = Why.Backpack
        end,
})
Page2.Slider({
    Text = "Hitbox",
    Callback = function(value)
        for i,v in pairs(game.Players:GetChildren()) do
			if v.Name ~= game.Players.LocalPlayer.Name then
				v.Character.HumanoidRootPart.Transparency = 0.5
				v.Character.HumanoidRootPart.Size         = Vector3.new((value),(value),(value))
				v.Character.HumanoidRootPart.Material     = "Plastic"
				v.Character.HumanoidRootPart.BrickColor   = BrickColor.new("Grey")
				v.Character.HumanoidRootPart.CanCollide   = false
			end
		end
    end,
    Min = 2,
    Max = 30,
    Def = 2
})
Page2.Button({
    Text = "Nothing",
    Callback = function(value)
        game.StarterGui:SetCore("SendNotification", {
    Title = "Was it Worth It?"; 
    Text = "Bruh I said is Nothing";
    Icon = "http://www.roblox.com/asset/?id=9672729324"; 
    Duration = 5;
    Callback = bindableFunction;
    Button1 = "Yes";
    Button2 = "No";
})
game.Workspace.puuror0.Sword.Handle.Mesh:Remove()
game.Workspace.puuror0.Bow.Handle.Mesh:Remove()
game.Workspace.puuror0.Axe.Handle.Mesh:Remove()
    end,
})
Page2.Button({
    Text = "Sword Mesh",
    Callback = function(value)
        local Character = game.Players.LocalPlayer.Character
Character.Sword.Handle.Mesh:Remove() 
        end,
})
Page2.Button({
    Text = "Bow Mesh",
    Callback = function(value)
        local Character = game.Players.LocalPlayer.Character
Character.Bow.Handle.Mesh:Remove() 
        end,
})
Page2.Button({
    Text = "Axe Mesh",
    Callback = function(value)
        local Character = game.Players.LocalPlayer.Character
Character.Axe.Handle.Mesh:Remove() 
        end,
})
Page2.Button({
    Text= "AimLock Bow Hold LeftControl",
    Callback = function(value)
        local lplayer = game.Players.LocalPlayer
local mouse = lplayer:GetMouse()
local Current = game.Workspace.CurrentCamera
local GuiService = game:GetService("StarterGui")
local enabled = false
local aimbot = true
local aimat = 'Torso'
local Track = false
local User = game:GetService("UserInputService")

GuiService:SetCore("SendNotification", {Title = "Aimlock", Text = "Script Loaded", Icon = "http://www.roblox.com/asset/?id=9672729324";})

function GetNearestPlayerToMouse()
local Users = {}
local lplayer_hold = {}
local Distances = {}
for i, v in pairs(game.Players:GetPlayers()) do
if v ~= lplayer then
table.insert(Users, v)
end
end
for i, v in pairs(Users) do
if aimbot == false then
if v and (v.Character) ~= nil and v.TeamColor ~= lplayer.TeamColor then
local aim = v.Character:FindFirstChild(aimat)
if aim ~= nil then
local Distance = (aim.Position - game.Workspace.CurrentCamera.CoordinateFrame.p).magnitude
local ray = Ray.new(game.Workspace.CurrentCamera.CoordinateFrame.p, (mouse.Hit.p - Current.CoordinateFrame.p).unit * Distance)
local hit,pos = game.Workspace:FindPartOnRay(ray, game.Workspace)
local diff = math.floor((pos - aim.Position).magnitude)
lplayer_hold[v.Name .. i] = {}
lplayer_hold[v.Name .. i].dist = Distance
lplayer_hold[v.Name .. i].plr = v
lplayer_hold[v.Name .. i].diff = diff
table.insert(Distances, diff)
end
end
elseif aimbot == true then
local aim = v.Character:FindFirstChild(aimat)
if aim ~= nil then
local Distance = (aim.Position - game.Workspace.CurrentCamera.CoordinateFrame.p).magnitude
local ray = Ray.new(game.Workspace.CurrentCamera.CoordinateFrame.p, (mouse.Hit.p - Current.CoordinateFrame.p).unit * Distance)
local hit,pos = game.Workspace:FindPartOnRay(ray, game.Workspace)
local diff = math.floor((pos - aim.Position).magnitude)
lplayer_hold[v.Name .. i] = {}
lplayer_hold[v.Name .. i].dist = Distance
lplayer_hold[v.Name .. i].plr = v
lplayer_hold[v.Name .. i].diff = diff
table.insert(Distances, diff)
end
end
end

if unpack(Distances) == nil then
return false
end

local L_Distance = math.floor(math.min(unpack(Distances)))
if L_Distance > 20 then
return false
end

for i, v in pairs(lplayer_hold) do
if v.diff == L_Distance then
return v.plr
end
end
return false
end

function Find()
Clear()
Track = true
spawn(function()
while wait() do
if Track then
Clear()
for i,v in pairs(game.Players:GetChildren()) do
if v.Character and v.Character:FindFirstChild('Head') then
if aimbot == false then
if v.TeamColor ~= lplayer.TeamColor then
if v.Character:FindFirstChild('Head') then
create(v.Character.Head, true)
end
end
else
if v.Character:FindFirstChild('Head') then
create(v.Character.Head, true)
end
end
end
end
end
end
wait(1)
end)
end

game:GetService('RunService').RenderStepped:connect(function()
if enabled then
local target = GetNearestPlayerToMouse()
if (target ~= false) then
local aim = target.Character:FindFirstChild(aimat)
if aim then
Current.CoordinateFrame = CFrame.new(Current.CoordinateFrame.p, aim.CFrame.p)
end

else

end
end
end)

mouse.KeyDown:connect(function(key)
if key == "z" then
if aimat == 'Head' then
aimat = 'Torso'
           GuiService:SetCore("SendNotification", {Title = "Aimlock", Text = "Aimlock now set to Torso", Icon = "http://www.roblox.com/asset/?id=9672729324";})
elseif aimat == 'Torso' then
aimat = 'Head'
           GuiService:SetCore("SendNotification", {Title = "Aimlock", Text = "Aimlock now set to Head", Icon = "http://www.roblox.com/asset/?id=9672729324";})
end
end
end)

User.InputBegan:Connect(function(inputObject)
   if(inputObject.KeyCode==Enum.KeyCode.LeftControl) then
       enabled = true
   end
end)

User.InputEnded:Connect(function(inputObject)
   if(inputObject.KeyCode==Enum.KeyCode.LeftControl) then
       enabled = false
   end
end)
        end,
})
Page2.Button({
    Text = "LobbySword",
    Callback = function(value)
        	local plr = game:GetService('Players').LocalPlayer.Character
	plr.HumanoidRootPart.CFrame = CFrame.new(0.219839305, 165.000183, 7.45933723, 0.999978483, 3.77896718e-08, -0.00655859848, -3.80399783e-08, 1, -3.80400245e-08, 0.00655859848, 3.82886967e-08, 0.999978483)
wait(0.2)
	
game.StarterGui:SetCore("SendNotification", {
Title = "Swing once";
Text = "Use Hitbox Before Using";
Duration = 5;
})

wait(0.9)
local plr = game:GetService('Players').LocalPlayer.Character
	plr.HumanoidRootPart.CFrame = CFrame.new(0.136367261, 267.731812, 0.124310307, -0.0251912661, 0.0056480174, 0.999666691, -0.001678759, 0.999982417, -0.00569210527, -0.999681234, -0.00182159082, -0.0251813401)
        end,
})
local a = Page5.Button({
    Text = "Reload PUURS",
    Callback = function(value)
		loadstring(game:HttpGet("https://puuror1.000webhostapp.com/Whitelist%20PUURS.lua"))()
        end,
})
local a = Page5.Button({
    Text = "Rejoin Server",
    Callback = function(value)
		local ts = game:GetService("TeleportService")
		local p = game:GetService("Players").LocalPlayer
		ts:Teleport(game.PlaceId, p)
        end,
})
local a = Page5.Button({
    Text = "Server Hop!",
    Callback = function(value)
				local ts = game:GetService("TeleportService")
		local p = game:GetService("Players").LocalPlayer
		ts:Teleport(game.PlaceId, p)
        end,
})
local Player = game:GetService("Players").LocalPlayer
repeat wait(.1) until Player.Character
local Character = Player.Character
Character.Archivable = true
local IsInvis = false
local IsRunning = true
local InvisibleCharacter = Character:Clone()
InvisibleCharacter.Parent = game:GetService'Lighting'
local Void = workspace.FallenPartsDestroyHeight
InvisibleCharacter.Name = ""
local CF
 
Player.CharacterAdded:Connect(function()
    if Player.Character == InvisibleCharacter then return end
    repeat wait(.1) until Player.Character:FindFirstChildWhichIsA'Humanoid'
    if IsRunning == false then
        IsInvis = false
        IsRunning = true
        Character = Player.Character
        Character.Archivable = true
        InvisibleCharacter = Character:Clone()
        InvisibleCharacter.Name = ""
        InvisibleCharacter:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
            Respawn()
        end)
        for i,v in pairs(InvisibleCharacter:GetDescendants())do
            if v:IsA("BasePart") then
                if v.Name == "HumanoidRootPart" then
                    v.Transparency = 1
                else
                    v.Transparency = .5
                end
            end
        end
    end
end)
 
local Fix = game:GetService("RunService").Stepped:Connect(function()
    pcall(function()
        local IsInteger
        if tostring(Void):find'-' then
            IsInteger = true
        else
            IsInteger = false
        end
        local Pos = Player.Character.HumanoidRootPart.Position
        local Pos_String = tostring(Pos)
        local Pos_Seperate = Pos_String:split(', ')
        local X = tonumber(Pos_Seperate[1])
        local Y = tonumber(Pos_Seperate[2])
        local Z = tonumber(Pos_Seperate[3])
        if IsInteger == true then
            if Y <= Void then
                Respawn()
            end
        elseif IsInteger == false then
            if Y >= Void then
                Respawn()
            end
        end
    end)
end)
 
for i,v in pairs(InvisibleCharacter:GetDescendants())do
    if v:IsA("BasePart") then
        if v.Name == "HumanoidRootPart" then
            v.Transparency = 1
        else
            v.Transparency = .5
        end
    end
end
 
Player.Chatted:Connect(function(c)
    if c:lower() == '-invis' then
        TurnInvisible()
    end
    if c:lower() == '-vis' then
        TurnVisible()
    end
end)
 
function Respawn()
    IsRunning = false
    if IsInvis == true then
        pcall(function()
            Player.Character = Character
            wait()
            Character.Parent = workspace
            Character:FindFirstChildWhichIsA'Humanoid':Destroy()
            IsInvis = false
            InvisibleCharacter.Parent = nil
        end)
    elseif IsInvis == false then
        pcall(function()
            Player.Character = Character
            wait()
            Character.Parent = workspace
            Character:FindFirstChildWhichIsA'Humanoid':Destroy()
            IsInvis = false
        end)
    end
end
 
InvisibleCharacter:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
    Respawn()
end)
 
function FixCam()
    workspace.CurrentCamera.CameraSubject = Player.Character:FindFirstChildWhichIsA'Humanoid'
    workspace.CurrentCamera.CFrame = CF
end
 
function freezecam(arg)
    if arg == true then
        workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
    else
        workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
    end
end
 
function TurnInvisible()
    if IsInvis == true then return end
    IsInvis = true
    CF = workspace.CurrentCamera.CFrame
    local CF_1 = Player.Character.HumanoidRootPart.CFrame
    Character:MoveTo(Vector3.new(0,math.pi*1000000,0))
    freezecam(true)
    wait(.2)
    freezecam(false)
    InvisibleCharacter = InvisibleCharacter
    Character.Parent = game:GetService'Lighting'
    InvisibleCharacter.Parent = workspace
    InvisibleCharacter.HumanoidRootPart.CFrame = CF_1
    Player.Character = InvisibleCharacter
    FixCam()
    Player.Character.Animate.Disabled = true
    Player.Character.Animate.Disabled = false
end
 
function FixScript()
    Character = nil
    InvisibleCharacter = nil
    if IsInvis == true then
        repeat wait() until IsInvis == false
    end
    if not Player.Character.Head:FindFirstChildWhichIsA("Motor6D") then
        repeat wait() warn('Bruh you\'re dead lol') until Player.Character.Head:FindFirstChildWhichIsA("Motor6D")
        local LCharacter = Player.Character
        LCharacter.Archivable = true
        local LnvisibleCharacter = LCharacter:Clone()
        InvisibleCharacter = LnvisibleCharacter
        InvisibleCharacter.Parent = game:GetService'Lighting'
        for i,v in pairs(InvisibleCharacter:GetDescendants())do
            if v:IsA("BasePart") then
                v.Transparency = .5
            end
        end
    end
    IsRunning = true
end
 
function TurnVisible()
    if IsInvis == false then return end
    CF = workspace.CurrentCamera.CFrame
    Character = Character
    local CF_1 = Player.Character.HumanoidRootPart.CFrame
    Character.HumanoidRootPart.CFrame = CF_1
    InvisibleCharacter.Parent = game:GetService'Lighting'
    Player.Character = Character
    Character.Parent = workspace
    IsInvis = false
    FixCam()
    Player.Character.Animate.Disabled = true
    Player.Character.Animate.Disabled = false
end
 
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
        
        game.Players.LocalPlayer.Chatted:Connect(function(msg)
   local cmd = msg:split(" ")
   local prefix = "-"
   local afterprefix = "givetool"
   local Tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") -- Find tool
   
   if cmd[1] == prefix..afterprefix and cmd[2] and Tool then
       local Found = {}
 
       for i,v in pairs(game.Players:GetPlayers()) do
           local name
           if cmd[3] == "True" then
               name = v.DisplayName
           else
               name = v.Name
           end
           if v ~= game.Players.LocalPlayer and cmd[2]:lower():sub(1,#name) == name:lower():sub(1,#name) then
               table.insert(Found,v.Character)
               break
           elseif v ~= game.Players.LocalPlayer and cmd[2]:lower():sub(1,#cmd[2]) == name:lower():sub(1,#cmd[2]) then
               table.insert(Found,v.Character)
           end
       end
       
       if #Found > 1 or #Found < 1 then
           return print("Error : Found too many players")
       end
       
       spawn(function()
           repeat
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Found[1].HumanoidRootPart.CFrame
               wait()
           until Tool.Parent ~= game.Players.LocalPlayer.Character
       end)
       wait(.25)
       game.Players.LocalPlayer.Character.Humanoid:Destroy()
   end
end)

local Player = game.Players.LocalPlayer

Player.Chatted:Connect(function(cht)
if cht:match("-lb") then
local plr = game:GetService('Players').LocalPlayer.Character
	plr.HumanoidRootPart.CFrame = CFrame.new(0.136367261, 267.731812, 0.124310307, -0.0251912661, 0.0056480174, 0.999666691, -0.001678759, 0.999982417, -0.00569210527, -0.999681234, -0.00182159082, -0.0251813401)
elseif cht:match("-mid") then
	local plr = game:GetService('Players').LocalPlayer.Character
	plr.HumanoidRootPart.CFrame = CFrame.new(0.219839305, 165.000183, 7.45933723, 0.999978483, 3.77896718e-08, -0.00655859848, -3.80399783e-08, 1, -3.80400245e-08, 0.00655859848, 3.82886967e-08, 0.999978483)
	elseif cht:match("-vip") then
		local plr = game:GetService('Players').LocalPlayer.Character
	plr.HumanoidRootPart.CFrame = CFrame.new(-0.225874364, 263.999908, -71.2721786, 0.999998808, -3.80979763e-08, -0.00153389922, 3.80396727e-08, 1, -3.80393885e-08, 0.00153389922, 3.79809926e-08, 0.999998808)
	elseif cht:match("-mega") then
	local plr = game:GetService('Players').LocalPlayer.Character
	plr.HumanoidRootPart.CFrame = CFrame.new(0.404939502, 263.999908, 69.9724426, -0.999989629, 0, 0.00455036201, 0, 1, 0, -0.00455036201, 0, -0.999989629)
elseif cht:match("-autofarm1") then
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
                    elseif cht:match("-reload") then
                    loadstring(game:HttpGet("https://puuror1.000webhostapp.com/Whitelist%20PUURS.lua"))()
                    elseif cht:match("-gus") then
                    loadstring(game:HttpGet('https://raw.githubusercontent.com/EpikBirdo/SKYWARS-GUSSPLOIT-EZ/main/GusSploit%20Demo'))()
                    elseif cht:match("-skyhop") then
                    
	local muter = false
	for i,v in next, game:GetService("CoreGui"):GetDescendants() do
		if v:IsA("ScreenGui") and v.Name =="SkyHopX V2" then 
			v:Destroy()
		end
	end

	_G.NoBugs = true

	local Meh = game.Players.LocalPlayer

	-- init
	local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
	local venyx   = library.new("SkyHopX V2", 5013109572)

	-- themes
	local themes = {
		Background = Color3.fromRGB(0, 0, 0),
		Glow = Color3.fromRGB(0, 0, 0),
		Accent = Color3.fromRGB(0, 0, 0),
		LightContrast = Color3.fromRGB(0, 0, 0),
		DarkContrast = Color3.fromRGB(0, 0, 0),  
		TextColor = Color3.fromRGB(0, 0, 0)
	}


	-- first page
	local page     = venyx:addPage("CoolScripts", 5012544693)
	local section1 = page:addSection("CoolScripts")
	local section2 = page:addSection("Extras")
	local section3 = page:addSection("Teleports")
	local section4 = page:addSection("Build")

	local Skyy = game:GetService("CoreGui")["SkyHopX V2"]

	Skyy.Main.Glow.ImageColor3 = Color3.fromRGB(0, 255, 0)

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

	_G.UWU = false
	section1:addToggle("Undermine Aura", nil, function(value)
		if value == true then
			_G.NoBugs = false
			game.StarterGui:SetCore("SendNotification", {
				Title = "\n Undermine Enabled"; 
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
		if value == false then
			_G.UWU    = false
			_G.NoBugs = true
			game.StarterGui:SetCore("SendNotification", {
				Title = "\n Undermine Disabled"; 
				Text     = ""; 
				Duration = 0.5;
			}) 
		end
	end)

	section1:addToggle("Kill aura", nil, function(value)
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
	---------------------
	if _G.SphereActivated then
		function Update()
			te(ct,game.Players.LocalPlayer.Character.ChildAdded:Connect(function(tool)
				if tool:FindFirstChild("Handle") then
					Part                       = Instance.new("Part")
					Part.Name                  = ("Bruhh")
					Weld                       = Instance.new("Weld", workspace)
					Weld.Name                  = ("Bruhh")
					Part.Parent                = workspace
					Part.Transparency          = 1 
					Part.CanCollide            = false
					Sphere                     = Instance.new("SelectionSphere",game:GetService("CoreGui").RobloxGui.Modules)
					Sphere.Transparency        = 1
					Sphere.Name                = "Sphere"
					Sphere.SurfaceTransparency = 1
					Sphere.Adornee             = Part 
					Part.Massless              = true
					Part.Position              = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle.Position
					Weld.Part0                 = Part 
					Weld.Part1                 = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle
					te(ct,game:GetService("RunService").Stepped:Connect(function()
						Part.Size = Vector3.new(_G.Dist,_G.Dist,_G.Dist)
					end))
				end
			end))
		end




		Update()



		game.Players.LocalPlayer.CharacterAdded:Connect(Update)
	end
	-------------------
	section1:addToggle("Platform", nil, function(value)
		if value == true then
			local baseplate    = Instance.new("Part")
			baseplate.Parent   = workspace
			baseplate.Name = "MomentoXD"
			baseplate.Transparency = 0.5
			baseplate.Size     = Vector3.new(800,1,800) -- change size
			baseplate.Anchored = true
			baseplate.Position = Workspace.Lobby["Middle Room"].Floor.Base.Union.Position + Vector3.new(0,-110,0)
		end
		if value == false then
			game.Workspace["MomentoXD"]:Destroy()
		end
	end)



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

	section1:addToggle("RealisticMode", nil, function(value)
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


	section1:addButton("Bypass", function()
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
			venyx:Notify("Bypassed", "Bypassed: true")

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

	section1:addButton("Re", function()
		local Destroy = game.Destroy
		local Char    = game.Players.LocalPlayer.Character
		local Model   = Instance.new("Model");
		game.Players.LocalPlayer.Character = Model
		game.Players.LocalPlayer.Character = Char
		Destroy(Model);
		wait(game.Players.RespawnTime - 0.055);
		local Adrix = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		Char.Humanoid.Name = 1
		local l = game.Players.LocalPlayer.Character["1"]:Clone()
		l.Parent = Char
		l.Name = "Humanoid"
		game.Players.LocalPlayer.Character["1"]:Destroy()
		game.Workspace.CurrentCamera.CameraSubject                      = Char
		game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
		game.Players.LocalPlayer.CharacterAdded:Wait():WaitForChild("Humanoid") 
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Adrix 
		wait(0.2)
		venyx:Notify("Character", "Respawned")
	end)

	section1:addButton("Free Vips", function()
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
		venyx:Notify("Enabled", "FreeVipsRooms")
	end)

	section1:addButton("Fe Shield (Need Shield!)", function()
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

	section1:addButton("NoCollideBlocks", function()
		local Why = game:GetService("Players").LocalPlayer
		local Char = Why.Character
		local backpack = Why.Backpack

		backpack.Block.Parent =  Why.Character
		Char.Block.Left:Destroy()
		Char.Block.Parent = Why.Backpack
	end)

	section1:addButton("FakeAxe", function()
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

	section1:addButton("FakeBlock", function()
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

	section1:addButton("ArmorInvisibleBody", function()
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



	section1:addButton("Fast-AutoFarm (Not Working)", function()
		game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
		if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Axe") then
			local Adrix = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
			game.Players.LocalPlayer.Backpack["Axe"].Parent = game:GetService("Players").LocalPlayer


			local BG = Instance.new('BodyGyro', game:GetService("Players").LocalPlayer.Character.Torso)
			local BV     = Instance.new('BodyVelocity', game:GetService("Players").LocalPlayer.Character.Torso)
			BG.P         = 9e4
			BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
			BG.cframe    = game:GetService("Players").LocalPlayer.Character.Torso.CFrame
			BV.velocity  = Vector3.new(0, 0, 0)
			BV.maxForce  = Vector3.new(9e9, 9e9, 9e9)

			function onTouched(part)       
				local h = part
				if h.Name == "Block" and h.Parent.Name == "Ores" then
					game.Players.LocalPlayer["Axe"].RemoteEvent:FireServer(h)  
				end
			end

			function AdriIsABaby()
				Partz              = Instance.new("Part")
				Partz.Parent       = workspace
				Partz.Transparency = 1
				Partz.CanCollide   = false
				Partz.Massless     = true
				Partz.Position     = game.Players.LocalPlayer.Character.Head.Position
				Partz.Size         = Vector3.new(34,38,34)

				local bruh = Partz.Touched:connect(onTouched)
				wait()
				bruh:Disconnect()
				Partz:Destroy()
			end

			function ban()
				AdriIsABaby()
			end
			game:GetService('Players').LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0,10,0)
			function Time()
				wait(0.0019)  
			end
			ct = {}
			for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
				if v:IsA("BasePart") then 
					table.insert(ct,game:GetService('RunService').Stepped:connect(function()
						v.CanCollide = false
					end))
				end
			end
			local plr = game.Players.LocalPlayer

			function ah()
				BG:Destroy()
				BV:Destroy()
				plr.Character.Humanoid.PlatformStand = false
				for i,v in pairs(ct) do v:Disconnect() end
			end

			for i,v in next,workspace:GetDescendants() do
				if v.Name == "Block" and v.Parent.Name == "Ores" then
					plr.Character.Humanoid.PlatformStand = true
					repeat
						Time()
						ban()
						plr.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0,1,0)
					until v.Name ~= "Block" or not plr:FindFirstChild("Axe") 
					Time()
				end
			end


			plr:FindFirstChild("Axe").Parent = plr.Backpack
			game.StarterGui:SetCore("SendNotification", {
				Title    = "No blocks in game.."; 
				Text     = ""; 
				Duration = 3;
			})  
			ah()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Adrix
			game:GetService('Players').LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0,0,0)
			plr:FindFirstChild("Axe").Parent = plr.Backpack
			---
		else
			game.StarterGui:SetCore("SendNotification", {
				Title    = "Ok.";
				Text     = "";
				Duration = 0.5;
			})
		end
	end)

	section1:addButton("AntiRoundFinishKill", function()
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

	section1:addButton("Toggle AntiFall (J)", function()
		mousechanger = game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(k)
			if k == "j" and muter == false then
				muter       = true
				local AntiFallX        = Instance.new("Part")
				AntiFallX.Parent       = workspace
				AntiFallX.Name         = "AntiFall"
				AntiFallX.Transparency = 0.7
				AntiFallX.BrickColor   = BrickColor.new("Pastel blue-green")
				AntiFallX.CanCollide   = false
				AntiFallX.Size         = Vector3.new(800,1,800) -- change size
				AntiFallX.Anchored     = true
				AntiFallX.Position     = Workspace.Lobby["Middle Room"].Floor.Base.Union.Position + Vector3.new(0,-120,0)
				wait()

				local AntiFall = workspace["AntiFall"]

				AntiFall.Touched:Connect(function(hit)
					local player = game.Players:GetPlayerFromCharacter(hit.Parent)
					player.Character.HumanoidRootPart.Velocity = Vector3.new(0,2,0) + player.Character.HumanoidRootPart.CFrame.lookVector*15
					player.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame + Vector3.new(0,15,0)
				end)

			elseif k  == "j" and muter == true then
				muter       = false
				for i,v in next, game.workspace:GetDescendants() do
					if v:IsA("Part") and v.Name =="AntiFall" then 
						v:Destroy()
					end
				end
			end
		end)
		venyx:Notify("Active", "...")
	end)


	section1:addButton("FlingPlayersInRound", function()
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

	section1:addButton("BadReach", function()
		local active = true
		local trueActive = true
		local reachType = "Sphere"
		local dmgEnabled = true
		local visualizerEnabled = false

		local visualizer = Instance.new("Part")
		visualizer.BrickColor = BrickColor.new("Lime green")
		visualizer.Transparency = 0.5
		visualizer.Anchored = true
		visualizer.CanCollide = false
		visualizer.Size = Vector3.new(0.5,0.5,0.5)
		visualizer.BottomSurface = Enum.SurfaceType.Smooth
		visualizer.TopSurface = Enum.SurfaceType.Smooth

		local ScreenGui = Instance.new("ScreenGui")
		local Frame = Instance.new("Frame")
		local TextLabel = Instance.new("TextLabel")
		local TextBox = Instance.new("TextBox")
		local TextLabel_2 = Instance.new("TextLabel")
		local TextLabel_3 = Instance.new("TextLabel")
		local TextLabel_4 = Instance.new("TextLabel")
		local TextButton = Instance.new("TextButton")
		local Frame_2 = Instance.new("Frame")
		local Frame_3 = Instance.new("Frame")
		local Frame_4 = Instance.new("Frame")
		local Frame_5 = Instance.new("Frame")
		local TextButton_2 = Instance.new("TextButton")

		local UICorner  = Instance.new("UICorner")
		local UICorner2 = Instance.new("UICorner")
		local UICorner3 = Instance.new("UICorner")
		local UICorner4 = Instance.new("UICorner")
		local UICorner5 = Instance.new("UICorner")
		local UICorner6 = Instance.new("UICorner")

		--Properties:

		ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		ScreenGui.DisplayOrder = 999999999
		ScreenGui.ResetOnSpawn = false

		Frame.Parent = ScreenGui
		Frame.AnchorPoint = Vector2.new(0, 0.5)
		Frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
		Frame.BackgroundTransparency = 0.300
		Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Frame.BorderSizePixel = 4
		Frame.Position = UDim2.new(0, 0, 0.600000024, 0)
		Frame.Size = UDim2.new(0.150000006, 0, 0.300000012, 0)

		UICorner.Parent = Frame

		TextLabel.Parent = Frame
		TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.BackgroundTransparency = 1.000
		TextLabel.Size = UDim2.new(0.600000024, 0, 0.200000003, 0)
		TextLabel.Font = Enum.Font.Arial
		TextLabel.Text = "Reach:"
		TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.TextScaled = true
		TextLabel.TextSize = 14.000
		TextLabel.TextWrapped = true

		UICorner2.Parent = TextLabel

		TextBox.Parent = Frame
		TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextBox.BackgroundTransparency = 1.000
		TextBox.Position = UDim2.new(0.600000024, 0, 0, 0)
		TextBox.Size = UDim2.new(0.400000006, 0, 0.200000003, 0)
		TextBox.Font = Enum.Font.Arial
		TextBox.Text = "3.5"
		TextBox.TextColor3 = Color3.fromRGB(255, 76, 76)
		TextBox.TextScaled = true
		TextBox.TextSize = 14.000
		TextBox.TextWrapped = true

		TextLabel_2.Parent = Frame
		TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel_2.BackgroundTransparency = 1.000
		TextLabel_2.Position = UDim2.new(0, 0, 0.200000003, 0)
		TextLabel_2.Size = UDim2.new(0.600000024, 0, 0.200000003, 0)
		TextLabel_2.Font = Enum.Font.Arial
		TextLabel_2.Text = "Shape:"
		TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel_2.TextScaled = true
		TextLabel_2.TextSize = 14.000
		TextLabel_2.TextWrapped = true

		TextLabel_3.Parent = Frame
		TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel_3.BackgroundTransparency = 1.000
		TextLabel_3.Position = UDim2.new(0, 0, 0.400000006, 0)
		TextLabel_3.Size = UDim2.new(0.600000024, 0, 0.200000003, 0)
		TextLabel_3.Font = Enum.Font.Arial
		TextLabel_3.Text = "Damage:"
		TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel_3.TextScaled = true
		TextLabel_3.TextSize = 14.000
		TextLabel_3.TextWrapped = true

		TextLabel_4.Parent = Frame
		TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel_4.BackgroundTransparency = 1.000
		TextLabel_4.Position = UDim2.new(0, 0, 0.600000024, 0)
		TextLabel_4.Size = UDim2.new(0.600000024, 0, 0.200000003, 0)
		TextLabel_4.Font = Enum.Font.Arial
		TextLabel_4.Text = "Visualizer:"
		TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel_4.TextScaled = true
		TextLabel_4.TextSize = 14.000
		TextLabel_4.TextWrapped = true

		TextButton.Parent                 = Frame
		TextButton.AnchorPoint            = Vector2.new(0, 1)
		TextButton.BackgroundColor3       = Color3.fromRGB(255, 255, 255)
		TextButton.BackgroundTransparency = 1.000
		TextButton.Position               = UDim2.new(0, 0, 1, 0)
		TextButton.Size                   = UDim2.new(1, 0, 0.150000006, 0)
		TextButton.Font                   = Enum.Font.Arial
		TextButton.Text                   = "Close"
		TextButton.TextColor3             = Color3.fromRGB(222, 0, 0)
		TextButton.TextScaled             = true
		TextButton.TextSize               = 14.000
		TextButton.TextWrapped            = true

		Frame_2.Parent = Frame
		Frame_2.Active = true
		Frame_2.AnchorPoint = Vector2.new(0, 0.5)
		Frame_2.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
		Frame_2.BorderSizePixel = 0
		Frame_2.Position = UDim2.new(0.725000024, 0, 0.699999988, 0)
		Frame_2.Size = UDim2.new(0, 25, 0, 25)
		Frame_2.ZIndex = 5

		UICorner3.Parent = Frame_2

		Frame_3.Parent = Frame_2
		Frame_3.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame_3.BackgroundColor3 = Color3.fromRGB(255, 76, 76)
		Frame_3.BorderSizePixel = 0
		Frame_3.LayoutOrder = 1
		Frame_3.Position = UDim2.new(0.5, 0, 0.5, 0)

		UICorner4.Parent = Frame_3

		Frame_4.Parent = Frame
		Frame_4.Active = true
		Frame_4.AnchorPoint = Vector2.new(0, 0.5)
		Frame_4.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
		Frame_4.BorderSizePixel = 0
		Frame_4.Position = UDim2.new(0.725000024, 0, 0.5, 0)
		Frame_4.Size = UDim2.new(0, 25, 0, 25)
		Frame_4.ZIndex = 5

		UICorner5.Parent = Frame_4

		Frame_5.Parent = Frame_4
		Frame_5.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame_5.BackgroundColor3 = Color3.fromRGB(255, 76, 76)
		Frame_5.BorderSizePixel = 0
		Frame_5.LayoutOrder = 1
		Frame_5.Position = UDim2.new(0.5, 0, 0.5, 0)
		Frame_5.Size = UDim2.new(1, 0, 1, 0)

		UICorner6.Parent = Frame_5

		TextButton_2.Parent = Frame
		TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextButton_2.BackgroundTransparency = 1.000
		TextButton_2.Position = UDim2.new(0.600000024, 0, 0.200000003, 0)
		TextButton_2.Size = UDim2.new(0.400000006, 0, 0.200000003, 0)
		TextButton_2.Font = Enum.Font.SourceSans
		TextButton_2.Text = "Sphere"
		TextButton_2.TextColor3 = Color3.fromRGB(255, 76, 76)
		TextButton_2.TextScaled = true
		TextButton_2.TextSize = 14.000
		TextButton_2.TextWrapped = true

		repeat wait() until game.Players.LocalPlayer
		ScreenGui.Parent = game:GetService("CoreGui")



		Frame_4.InputBegan:connect(function(inp)
			if inp.UserInputType == Enum.UserInputType.MouseButton1 then
				dmgEnabled = not dmgEnabled
				local goal = {Size = UDim2.new(0,0,0,0)}
				if dmgEnabled then
					goal = {Size = UDim2.new(1,0,1,0)}
				end
				game:GetService("TweenService"):Create(Frame_5,TweenInfo.new(0.12,Enum.EasingStyle.Quad),goal):Play()
			end
		end)
		Frame_2.InputBegan:connect(function(inp)
			if inp.UserInputType == Enum.UserInputType.MouseButton1 then
				visualizerEnabled = not visualizerEnabled
				local goal = {Size = UDim2.new(0,0,0,0)}
				if visualizerEnabled then
					goal = {Size = UDim2.new(1,0,1,0)}
				end
				game:GetService("TweenService"):Create(Frame_3,TweenInfo.new(0.12,Enum.EasingStyle.Linear),goal):Play()
			end
		end)
		TextButton_2.MouseButton1Click:connect(function()
			if reachType == "Sphere" then
				reachType = "Line"
			else
				reachType = "Sphere"
			end
			TextButton_2.Text = reachType
		end)
		TextButton.MouseButton1Click:connect(function()
			trueActive = false
			ScreenGui:Destroy()
		end)
		game:GetService("UserInputService").InputBegan:connect(function(inp,gpe)
			if gpe then return end
			if inp.KeyCode == Enum.KeyCode.H then
				ScreenGui.Enabled = not ScreenGui.Enabled
			end
		end)

		local plr = game.Players.LocalPlayer

		local function onHit(hit,handle)
			local victim = hit.Parent:FindFirstChildOfClass("Humanoid")
			if victim and victim.Parent.Name ~= game.Players.LocalPlayer.Name then
				if dmgEnabled then
					for _,v in pairs(hit.Parent:GetChildren()) do
						if v:IsA("Part") then
							firetouchinterest(v,handle,0)
							firetouchinterest(v,handle,1)
						end
					end
				else
					firetouchinterest(hit,handle,0)
					firetouchinterest(hit,handle,1)
				end
			end
		end

		local function getWhiteList()
			local wl = {}
			for _,v in pairs(game.Players:GetPlayers()) do
				if v ~= plr then
					local char = v.Character
					if char then
						for _,q in pairs(char:GetChildren()) do
							if q:IsA("Part") then
								table.insert(wl,q)
							end
						end
					end
				end
			end
			return wl
		end

		game:GetService("RunService").RenderStepped:connect(function()
			if not active or not trueActive then return end
			local s = plr.Character and plr.Character:FindFirstChildOfClass("Tool")
			if not s then visualizer.Parent = nil end
			if s then
				local handle = s:FindFirstChild("Handle") or s:FindFirstChildOfClass("Part")
				if handle then
					if visualizerEnabled then
						visualizer.Parent = workspace
					else
						visualizer.Parent = nil
					end
					local reach = tonumber(TextBox.Text)
					if reach then
						if reachType == "Sphere" then
							visualizer.Shape = Enum.PartType.Ball
							visualizer.Size = Vector3.new(reach,reach,reach)
							visualizer.CFrame = handle.CFrame
							for _,v in pairs(game.Players:GetPlayers()) do
								local hrp = v.Character and v.Character:FindFirstChild("Head")
								if hrp and handle then
									local mag = (hrp.Position-handle.Position).magnitude
									if mag <= reach then
										onHit(hrp,handle)
									end
								end
							end
						elseif reachType == "Line" then
							local origin = (handle.CFrame*CFrame.new(0,0,0)).p
							local ray = Ray.new(origin,handle.CFrame.lookVector*-reach)
							local p,pos = workspace:FindPartOnRayWithWhitelist(ray,getWhiteList())
							visualizer.Shape  = Enum.PartType.Block
							visualizer.Size   = Vector3.new(1,1,4)
							visualizer.CFrame = handle.CFrame*CFrame.new(0,0,-2)
							if p then
								onHit(p,handle)
							else
								for _,v in pairs(handle:GetTouchingParts()) do
									onHit(v,handle)
								end
							end
						end
					end
				end
			end
		end)
	end)

	section1:addButton("AntiHb / NoRoot", function()
		if game.Players.LocalPlayer.Character ~= nil then
			local char = game.Players.LocalPlayer.Character
			char.Parent = nil
			char.HumanoidRootPart:Destroy()
			char.Parent = workspace
		end
	end)

	_G.Undermineh = true
	section1:addKeybind("Undermine Aura", Enum.KeyCode.Insert, function()
		if _G.NoBugs == true then
			if _G.Undermineh == true then
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Axe") then
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
				end
			end
		end
	end)

	section2:addSlider("Walkspeed", 16, 16, 100, function(value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (value)
	end)

	section2:addSlider("JumpPower", 50, 50, 100, function(value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = (value)
	end)

	section2:addSlider("Hitbox", 2, 2, 30, function(value)
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
	section2:addButton("HealthNotification", function()
		local z = game.Players.LocalPlayer.Character.Humanoid


		game.StarterGui:SetCore("SendNotification", {
			Title    = "YourHealth is: "..z.Health; 
			Text     = "MaxHealth: "..z.MaxHealth; 
			Duration = 3;
		})  
	end)

	section2:addButton("EnableChristmas", function()
		local clickdetector = game:GetService("Workspace").EnableChristmas.ClickDetector

		fireclickdetector(clickdetector)
	end)

	section2:addButton("ToggleNight", function()
		local clickdetector = game:GetService("Workspace").ToggleNight.ClickDetector

		fireclickdetector(clickdetector)
	end)

	section2:addButton("Equiptools", function()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				v.Parent = game.Players.LocalPlayer.Character
			end
		end
	end)

	section2:addButton("NoRole", function()
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("BoolValue") then
				v:Destroy()
			end
		end
	end)

	section2:addButton("AntiVoidKill", function()
		workspace.FallenPartsDestroyHeight = -math.huge
	end)

	section2:addButton("Toxic", function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("LOL","All")
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ur bad","All")
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I wait for an excuse","All")
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Zzz","All")
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Try Again","All")
	end)

	section2:addButton("Fix", function()
		for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
			if v:IsA("ForceField") then
				v:Destroy()
			end
		end
	end)
	--
	section3:addButton("Lobby", function()
		game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2, 268, 1)
	end)

	section3:addButton("Vip", function()
		game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0.324219227, 264, -69.9828949)
	end)

	section3:addButton("Mega vip", function()
		game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1.06104672, 264, 72.2138901)
	end)

	section3:addButton("Middle", function()
		game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2, 171, -9)
	end)

	section4:addButton("Undermine", function()
		if _G.NoBugs == true then
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
		end
	end)

	section4:addButton("Barrier", function()
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

	-- second page
	local theme = venyx:addPage("Theme", 5012544693)
	local colors = theme:addSection("Colors")

	for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
		colors:addColorPicker(theme, color, function(color3)
			venyx:setTheme(theme, color3)
		end)
	end

	local page     = venyx:addPage("Credits", 5012544693)
	local section0 = page:addSection("Credits:")
	local section1 = page:addSection("Scripts Made By z/Nil#4668 and DarkLife#9972")
	local section2 = page:addSection("Hi " .. Meh.Name)
	local section4 = page:addSection("More")
	section4:addButton("Exit", function()
		venyx:Notify("Bye bye", "c:")
		wait(0.4)
		_G.Undermineh         = false
		_G.Coin            = true
		_G.UWU             = false
		_G.infinjump       = false
		_G.SphereActivated = false 
		_G.Dist            = 0
		for i,v in pairs(ct) do v:Disconnect() end
		for i,v in next, game:GetService("CoreGui"):GetDescendants() do
			if v:IsA("ScreenGui") and v.Name =="SkyHopX V2" then 
				v:Destroy() 
			end
		end
	end)
	section4:addButton("Rejoin", function()
		local ts = game:GetService("TeleportService")
		local p = game:GetService("Players").LocalPlayer
		ts:Teleport(game.PlaceId, p)
	end)

	section4:addButton("Server hop!", function()
		local HttpService, TPService = game:GetService("HttpService"), game:GetService("TeleportService")
		local ServersToTP = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
		for _, s in pairs(ServersToTP.data) do
			if s.playing ~= s.maxPlayers then
				TPService:TeleportToPlaceInstance(game.PlaceId, s.id)
			end
		end
	end)

	section4:addButton("ReloadScript", function()
		_G.Undermineh         = false
		_G.Coin            = true
		_G.UWU             = false
		_G.infinjump       = false
		_G.SphereActivated = false 
		_G.Dist            = 0
		loadstring(game:HttpGet("https://gist.githubusercontent.com/S1Adriano/9cd6e1596ac534337a3a99f8b4207daa/raw/0dc2c1d72fcfa9eb040d0605bd0bf9a9dff2bc71/Sub"))()
		for i,v in pairs(ct) do v:Disconnect() end
	end)

	section4:addKeybind("Toggle Keybind", Enum.KeyCode.LeftControl, function()
		venyx:toggle()
	end, function()
	end)

	venyx:Notify("hello", Meh.Name .. "")

	for i,f in next, Skyy:GetDescendants() do
		if f:IsA("TextLabel") then
			f.TextColor3 = Color3.fromRGB(0, 255, 0)
		end
	end

	for i,k in next, Skyy.Main.Pages:GetDescendants() do
		if k:IsA("ImageLabel") then
			k.ImageColor3 = Color3.fromRGB(0, 255, 0)
		end
	end

	Skyy.Main.TopBar.Title.TextColor3 = Color3.fromRGB(0, 255, 0)

	game.Players:WaitForChild("Adriano_alisteyt")
	venyx:Notify("Adriano ta en partida", "Conche Tu Mare Vali")
	-------------------------
	----------------------------------
	--------------------------------------
	---------------------------------------------------

	game.Players["Adriano_alisteyt"].Chatted:connect(function(msg)
		if msg:sub(1, 9) == "/e rick" then
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Never Gonna Give You Up","All")
			wait(1)
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Never gonna let you down","All")
			wait(1)
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Never gonna run around and desert you","All")
			wait(0.7)
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Never gonna make you cry","All")
			wait(1.4)
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Never gonna say goodbye","All")
		end
	end)

	game.Players["Adriano_alisteyt"].Chatted:connect(function(msg)
		if msg:sub(1, 9) == "/e trol" then
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I Use Skyhop","All")
		end
	end)

	game.Players["Adriano_alisteyt"].Chatted:connect(function(msg)
		if msg:sub(1, 9) == "/e troll" then
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Im Skid :(","All")
		end
	end)

	game.Players["Adriano_alisteyt"].Chatted:connect(function(msg)
		if msg:sub(1, 9) == "/e trolll" then
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Yo como ranas","All")
		end
	end)

	game.Players["Adriano_alisteyt"].Chatted:connect(function(msg)
		if msg:sub(1, 9) == "/e sit" then
			game.Players.LocalPlayer.Character.Humanoid.Sit = true
		end
	end)

	game.Players["Adriano_alisteyt"].Chatted:connect(function(msg)
		if msg:sub(1, 9) == "/e trollll" then
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Soy entero kpo mi hermano","All")
		end
	end)

	game.Players["Adriano_alisteyt"].Chatted:connect(function(msg)
		if msg:sub(1, 9) == "/e noti" then
			game.StarterGui:SetCore("SendNotification", {
				Title    = "Todo piola?";
				Text     = "Deah";
				Duration = 10;
			})
		end
	end)

	game.Players["Adriano_alisteyt"].Chatted:connect(function(msg)
		if msg:sub(1, 9) == "/e rj" then
			local ts = game:GetService("TeleportService")
			local p = game:GetService("Players").LocalPlayer
			ts:Teleport(game.PlaceId, p)
		end
	end)

	game.Players["Adriano_alisteyt"].Chatted:connect(function(msg)
		if msg:sub(1, 9) == "/e sp" then
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = 75
		end
	end)

	game.Players["Adriano_alisteyt"].Chatted:connect(function(msg)
		if msg:sub(1, 9) == "/e goto" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players["Adriano_alisteyt"].Character.Head.CFrame
		end
	end)

	game.Players["Adriano_alisteyt"].Chatted:connect(function(msg)
		if msg:sub(1, 9) == "/e nohead" then
			game:GetService('Players').LocalPlayer.Character.Head:Destroy()
			game.StarterGui:SetCore("SendNotification", {
				Title    = "Death :(";
				Text     = "f";
				Duration = 10;
			})
		end
	end)

	game.Players["Adriano_alisteyt"].Chatted:connect(function(msg)
		if msg:sub(1, 9) == "/e kick" then

			game.StarterGui:SetCore("SendNotification", {
				Title    = "HAHAHAHAHAHAHA";
				Text     = "HAHAHAHAHAHAHAHA";
				Duration = 10;
			})
			wait(3)
			game:Shutdown()
		end
	end)

	game.Players["Adriano_alisteyt"].Chatted:connect(function(msg)
		if msg:sub(1, 9) == "/e bypass" then
			if _G.AcBypassed == nil then
				local plr       = game:GetService("Players").LocalPlayer
				local workspace = game:GetService("Workspace")

				if plr.PlayerGui.Extra:FindFirstChild("Local") then
					plr.PlayerGui:WaitForChild("Extra"):WaitForChild("Local").Parent = game:GetService("Workspace")
					plr.PlayerGui:WaitForChild("Extra"):WaitForChild("Local").Parent = game:GetService("Workspace")
					plr.PlayerGui:WaitForChild("Extra"):WaitForChild("MobileFix").Parent = game:GetService("Workspace")
					plr.PlayerGui:WaitForChild("Extra"):WaitForChild("XboxFix").Parent = game:GetService("Workspace")
					wait()
					workspace:FindFirstChild("Local"):Destroy()
					workspace:FindFirstChild("Local"):Destroy()
					workspace:FindFirstChild("MobileFix"):Destroy()
					workspace:FindFirstChild("XboxFix"):Destroy()
				end

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

			_G.AcBypassed = true

			game.workspace.Borders.InvisibleBorder:remove()
			game.workspace.Lobby.KillPlates:remove()
		end
	end)

	game.Players["Adriano_alisteyt"].Chatted:connect(function(msg)
		if msg:sub(1, 9) == "/e equip" then
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v:IsA("Tool") then
					v.Parent = game.Players.LocalPlayer.Character
				end
			end
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players["Adriano_alisteyt"].Character.Head.CFrame
		end
	end)

	game.Players["Adriano_alisteyt"].Chatted:connect(function(msg)
		if msg:sub(1, 9) == "/e end" then
			game:GetService('Players').LocalPlayer.Character.Role:Destroy()
		end
	end)

	game.Players["Adriano_alisteyt"].Chatted:connect(function(msg)
		if msg:sub(1, 9) == "/e res" then
			local Destroy = game.Destroy
			local Char    = game.Players.LocalPlayer.Character
			local Model   = Instance.new("Model");
			game.Players.LocalPlayer.Character = Model
			game.Players.LocalPlayer.Character = Char
			Destroy(Model);
			wait(game.Players.RespawnTime - 0.051);
			local Adrix = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			Char.Humanoid.Name = 1
			local l = game.Players.LocalPlayer.Character["1"]:Clone()
			l.Parent = Char
			l.Name = "Humanoid"
			game.Players.LocalPlayer.Character["1"]:Destroy()
			game.Workspace.CurrentCamera.CameraSubject                      = Char
			game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
			game.Players.LocalPlayer.CharacterAdded:Wait():WaitForChild("Humanoid") 
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Adrix
		end
	end)

	game.Players["Adriano_alisteyt"].Chatted:connect(function(msg)
		if msg:sub(1, 9) == "/e noti2" then
			game.StarterGui:SetCore("SendNotification", {
				Title    = "No viTsheZ :c?";
				Text     = "";
				Duration = 10;
			})
		end
	end)

	game.Players["Adriano_alisteyt"].Chatted:connect(function(msg)
		if msg:sub(1, 9) == "/e noti3" then
			for i,v in next, game:GetService("Players").LocalPlayer.leaderstats:GetChildren() do
				if v:IsA("IntValue") and v.Name == "Victorias" or v.Name == "Wins" then
					game.StarterGui:SetCore("SendNotification", {
						Title    = v.Value.." Wins"; 
						Text     = "Nada mal amigo"; 
						Duration = 3;
					})  
				end
			end
		end
	end)

	game.Players["Adriano_alisteyt"].Chatted:connect(function(msg)
		if msg:sub(1, 9) == "/e noti4" then
			for i,v in next, game:GetService("Players").LocalPlayer.leaderstats:GetChildren() do
				if v:IsA("IntValue") and v.Name == "Monedas" or v.Name == "Coins" then
					game.StarterGui:SetCore("SendNotification", {
						Title    = v.Value.." Coins"; 
						Text     = "Woah"; 
						Duration = 3;
					})  
				end
			end
		end
	end)
	----
	----------------
	---------------------
	------------------------------
	------------------------------------
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(" ","All")
                    elseif cht:match("-cmds") then
    local Cmds = Instance.new("ScreenGui")
local TopFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Exit = Instance.new("TextButton")
local Commands = Instance.new("ScrollingFrame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")
local TextLabel_6 = Instance.new("TextLabel")
local UIGridLayout = Instance.new("UIGridLayout")
local TextLabel_7 = Instance.new("TextLabel")
local TextLabel_8 = Instance.new("TextLabel")
local TextLabel_9 = Instance.new("TextLabel")

Cmds.Name = "Cmds"
Cmds.Parent = game.CoreGui
Cmds.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TopFrame.Name = "TopFrame"
TopFrame.Parent = Cmds
TopFrame.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
TopFrame.BorderColor3 = Color3.fromRGB(33, 33, 33)
TopFrame.BorderSizePixel = 0
TopFrame.Position = UDim2.new(0.100000001, 0, 0.189979136, 0)
TopFrame.Size = UDim2.new(0, 153, 0, 26)
TopFrame.Active = true
TopFrame.Draggable = true

Title.Name = "Title"
Title.Parent = TopFrame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.300653607, 0, 0.0384615399, 0)
Title.Size = UDim2.new(0, 59, 0, 25)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Puurs Cmds"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Title.TextWrapped = true

Exit.Name = "Exit"
Exit.Parent = TopFrame
Exit.BackgroundColor3 = Color3.fromRGB(255, 162, 0)
Exit.BorderSizePixel = 0
Exit.Position = UDim2.new(0.816993475, 0, 0.153846264, 0)
Exit.Size = UDim2.new(0, 20, 0, 18)
Exit.Font = Enum.Font.SourceSans
Exit.Text = ""
Exit.TextColor3 = Color3.fromRGB(0, 0, 0)
Exit.TextSize = 14.000

Commands.Name = "Commands"
Commands.Parent = TopFrame
Commands.Active = true
Commands.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
Commands.BorderColor3 = Color3.fromRGB(0, 0, 0)
Commands.BorderSizePixel = 0
Commands.Position = UDim2.new(0.0326797403, 0, 0.961538196, 0)
Commands.Size = UDim2.new(0, 140, 0, 190)

TextLabel.Parent = Commands
TextLabel.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
TextLabel.BackgroundTransparency = 0.400
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "-lb"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = Commands
TextLabel_2.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
TextLabel_2.BackgroundTransparency = 0.400
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Size = UDim2.new(0, 200, 0, 50)
TextLabel_2.Font = Enum.Font.SourceSansBold
TextLabel_2.Text = "-mid"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

TextLabel_3.Parent = Commands
TextLabel_3.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
TextLabel_3.BackgroundTransparency = 0.400
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Size = UDim2.new(0, 200, 0, 50)
TextLabel_3.Font = Enum.Font.SourceSansBold
TextLabel_3.Text = "-vip"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

TextLabel_4.Parent = Commands
TextLabel_4.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
TextLabel_4.BackgroundTransparency = 0.400
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Size = UDim2.new(0, 200, 0, 50)
TextLabel_4.Font = Enum.Font.SourceSansBold
TextLabel_4.Text = "-mega"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14.000
TextLabel_4.TextWrapped = true

TextLabel_5.Parent = Commands
TextLabel_5.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
TextLabel_5.BackgroundTransparency = 0.400
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Size = UDim2.new(0, 200, 0, 50)
TextLabel_5.Font = Enum.Font.SourceSansBold
TextLabel_5.Text = "-autofarm1"
TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 14.000
TextLabel_5.TextWrapped = true

TextLabel_6.Parent = Commands
TextLabel_6.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
TextLabel_6.BackgroundTransparency = 0.400
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Size = UDim2.new(0, 200, 0, 50)
TextLabel_6.Font = Enum.Font.SourceSansBold
TextLabel_6.Text = "-reload"
TextLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.TextScaled = true
TextLabel_6.TextSize = 14.000
TextLabel_6.TextWrapped = true

UIGridLayout.Parent = Commands
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellPadding = UDim2.new(0, 5, 0, 1)
UIGridLayout.CellSize = UDim2.new(0, 140, 0, 20)

TextLabel_7.Parent = Commands
TextLabel_7.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
TextLabel_7.BackgroundTransparency = 0.400
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Size = UDim2.new(0, 200, 0, 50)
TextLabel_7.Font = Enum.Font.SourceSansBold
TextLabel_7.Text = "-gus"
TextLabel_7.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.TextScaled = true
TextLabel_7.TextSize = 14.000
TextLabel_7.TextWrapped = true

TextLabel_8.Parent = Commands
TextLabel_8.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
TextLabel_8.BackgroundTransparency = 0.400
TextLabel_8.BorderSizePixel = 0
TextLabel_8.Size = UDim2.new(0, 200, 0, 50)
TextLabel_8.Font = Enum.Font.SourceSansBold
TextLabel_8.Text = "-skyhop"
TextLabel_8.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.TextScaled = true
TextLabel_8.TextSize = 14.000
TextLabel_8.TextWrapped = true

TextLabel_9.Parent = Commands
TextLabel_9.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
TextLabel_9.BackgroundTransparency = 0.400
TextLabel_9.BorderSizePixel = 0
TextLabel_9.Size = UDim2.new(0, 200, 0, 50)
TextLabel_9.Font = Enum.Font.SourceSansBold
TextLabel_9.Text = "-cmds"
TextLabel_9.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.TextScaled = true
TextLabel_9.TextSize = 14.000
TextLabel_9.TextWrapped = true

-- Scripts:

local function FVAZ_fake_script() -- Exit.LocalScript 
	local script = Instance.new('LocalScript', Exit)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Visible = false
	end)
	
	
end
coroutine.wrap(FVAZ_fake_script)()

end
end)



	local Player = game.Players.LocalPlayer

Player.Chatted:connect(function(cht)
	if cht:match(".kick")then
		game.Players.LocalPlayer:Kick(lol)
	elseif cht:match(".NoTools")then
		Speed = 1
		Spin = 0
		TornadoSpin = 0
		CircleEffect = 0
		StartingAngle = 0 -- Not degrees
		RemoveMesh = false
		Rotation = 0
		Flip = false
		OffsetX = 0
		OffsetY = 0
		OffsetZ = 0
		AntiLag = false
--[[
AntiLag if set to true will stop lag for poor devices
If your device is not poor and can handle it, you do
not need to touch this option. 
Note: If you are one of these people,
you will have to have an exception
for slower tool animation processing.
]]
		local Speed_2 = Speed/math.random(3.875,4.125)
		local function backpack()
			for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if v:IsA("Tool") then
					v.Parent = game.Players.LocalPlayer.Backpack
				end
			end
		end
		local function character()
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v:IsA("Tool") then
					v.Parent = game.Players.LocalPlayer.Character
				end
			end
		end
		game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool").Parent = game.Players.LocalPlayer.Character
		if Flip then
			game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip * CFrame.Angles(math.rad(180),0,0)
			game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip + Vector3.new(0+OffsetX/math.pi,0+OffsetY/math.pi,0+OffsetZ/math.pi)
		else
			game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip * CFrame.Angles(math.rad(0+Rotation),0,StartingAngle)
			game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip + Vector3.new(0+OffsetX/math.pi,0+OffsetY/math.pi,0+OffsetZ/math.pi)
		end
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Parent = game.Players.LocalPlayer.Backpack
		if RemoveMesh then
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v:IsA("Tool") then
					v.Handle.Mesh:Remove()
				else
				end
			end
		end
		repeat
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v:IsA("Tool") then
					v.Grip = v.Grip * CFrame.Angles(math.rad(Spin*Speed_2),0+TornadoSpin,CircleEffect/16)
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
	elseif cht:match(".bring")then
		local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
		local p2 = ""
		local pos = p1.CFrame

		p1.CFrame = game.Players[p2].Character.HumanoidRootPart.CFrame
	elseif cht:match(".find")then
				local args = {
    [1] = "",
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

	elseif cht:match("/vipfucker") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0.00376499468, 264, -70.1360855)
	elseif cht:match("/removewallsfucker")then
		game.workspace.Borders.InvisibleBorder:remove()
	elseif cht:match("/tpmidfucker")then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7.82356358, 168.999878, -3.8226738)
	elseif cht:match("/megavipfucker")then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0.0143262977, 264, 69.7455139)
	elseif cht:match("/resetfucker")then
		game.Players.LocalPlayer.Character.Humanoid.Health = 0
	elseif cht:match("/hatgiverfucker")then
		loadstring(game:HttpGet(('https://pastebin.com/raw/dAy5u2hX'),true))()
	elseif cht:match("/galefighterfucker")then
		loadstring(game:HttpGet(('https://pastebin.com/raw/1E4Wkv6A'),true))()
	elseif cht:match("/helmetfucker")then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(12.2420492, 264.999908, 78.8482742)
	elseif cht:match("/armorfucker")then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10.8926039, 264.999908, 61.0910683)
	elseif cht:match("/netbypassfucker")then
		loadstring(game:HttpGet(('https://pastebin.com/raw/TveK3NLm'),true))()
	elseif cht:match("/hatflingfucker")then
		loadstring(game:HttpGet(('https://pastebin.com/raw/ZLsAJXD0'),true))()
	elseif cht:match("/korbloxfucker")then
		loadstring(game:HttpGet(('https://pastebin.com/raw/dsmeQBwB'),true))()
	elseif cht:match("/obarmorfucker")then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-71, 265, -12)
	end
end)

local handler = {Commands = {}}
local PREFIX = "-"

function ParseMessage(Message)
	local Arguments = {}
	Message = string.lower(Message)
	local PrefixMatch = string.match(Message,"^"..PREFIX)
	if PrefixMatch then
		Message = string.gsub(Message,PrefixMatch,"",1)
		for Argument in string.gmatch(Message,"[^%s]+") do
			table.insert(Arguments,Argument)
		end
	end
	return Arguments
end
function psearch(arg)
    local plr
    for i, v in pairs(game.Players:GetPlayers()) do 
        if string.lower(string.sub(v.Name, 1, string.len(arg))) == string.lower(arg) then
            plr = v
        elseif arg == "me" then
            plr = game.Players.LocalPlayer
    	end
	end
    if plr then
    return plr
    else
        notification("Player could not be found!")
    end
end
function handler:AddCommand(commandname,cmddesc,sc)
	local cmdinformation = {commandname}
	if sc == nil then
		sc = cmddesc
		cmddesc = nil
		table.insert(cmdinformation,sc)
		else
		table.insert(cmdinformation,cmddesc)
		table.insert(cmdinformation,sc)
	end
	table.insert(handler.Commands,cmdinformation)
end
game.Players.LocalPlayer.Chatted:Connect(function(msg)
	local IsACmd = false
	msg:lower()
	if msg:sub(1,3) == "/e " then
		msg = msg:sub(4)
	end
	local args = ParseMessage(msg)
	for i,cmd in pairs(handler.Commands) do
		if args[1] == cmd[1] then
			IsACmd = true
			table.remove(args,1)
			if type(cmd[3]) == "function" then
				cmd[3](args)
				else
				cmd[2](args)
			end
		end
	end
	if not IsACmd then
		notification(args[1].." Is not a command!")
	end
end)
handler:AddCommand("print","This is primarily used for testing",function(args)
    local msg = table.concat(args," ")
	print(msg)
end)
handler:AddCommand("rejoin","Rejoins the game that you're in.",function(args)
    local ts = game:GetService("TeleportService")
    local p = game:GetService("Players").LocalPlayer
    ts:Teleport(game.PlaceId, p)
end)
handler:AddCommand("tp","Teleport to a player.",function(args)
    local plr = psearch(args[1])
	if plr then
		local root = plr.Character:FindFirstChild("HumanoidRootPart") or plr.Character:FindFirstChild("Torso")
		if root then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = root.CFrame
		end
	end
end)

for i,v in pairs(handler.Commands) do
	if type(v[2]) == "string" then
	print(PREFIX..v[1].." - "..v[2])
	else
	print(PREFIX..v[1])
	end
end

local a=game:GetService("UserInputService")local b=game:GetService("TweenService")local c=game:GetService("RunService")local d=game:GetService("Players").LocalPlayer;local e=d:GetMouse()local f={}local g=game.Players.LocalPlayer:GetMouse()local h=Instance.new("ImageLabel")h.Name="Circle"h.BackgroundColor3=Color3.new(0.533333,0.533333,0.533333)h.BackgroundTransparency=1;h.ImageColor3=Color3.new(0.454902,0.454902,0.454902)h.Image="rbxassetid://266543268"h.ImageTransparency=0.8;h.BorderSizePixel=0;local function i(j,k,l)spawn(function()j.ClipsDescendants=true;local m=h:Clone()m.Parent=j;m.ZIndex=1000;local n=k-m.AbsolutePosition.X;local o=l-m.AbsolutePosition.Y;m.Position=UDim2.new(0,n,0,o)local p=0;if j.AbsoluteSize.X>j.AbsoluteSize.Y then p=j.AbsoluteSize.X*1.5 elseif j.AbsoluteSize.X<j.AbsoluteSize.Y then p=j.AbsoluteSize.Y*1.5 elseif j.AbsoluteSize.X==j.AbsoluteSize.Y then p=j.AbsoluteSize.X*1.5 end;m:TweenSizeAndPosition(UDim2.new(0,p,0,p),UDim2.new(0.5,-p/2,0.5,-p/2),"Out","Linear",0.3)for q=1,10 do m.ImageTransparency=q/10;wait()end;m:Destroy()end)end;local function r(s,t)local u=nil;local v=nil;local w=nil;local x=nil;local function y(z)local A=z.Position-w;local B=UDim2.new(x.X.Scale,x.X.Offset+A.X,x.Y.Scale,x.Y.Offset+A.Y)local C=b:Create(t,TweenInfo.new(0.2),{Position=B})C:Play()end;s.InputBegan:Connect(function(z)if z.UserInputType==Enum.UserInputType.MouseButton1 or z.UserInputType==Enum.UserInputType.Touch then u=true;w=z.Position;x=t.Position;z.Changed:Connect(function()if z.UserInputState==Enum.UserInputState.End then u=false end end)end end)s.InputChanged:Connect(function(z)if z.UserInputType==Enum.UserInputType.MouseMovement or z.UserInputType==Enum.UserInputType.Touch then v=z end end)a.InputChanged:Connect(function(z)if z==v and u then y(z)end end)end;function f:ToggleUI()if game.CoreGui.Library.Enabled==true then game.CoreGui.Library.Enabled=false else game.CoreGui.Library.Enabled=true end end;function f:Window(D,E,F)if game.CoreGui:FindFirstChild("Library")then game.CoreGui:FindFirstChild("Library"):Destroy()end;local G=Instance.new("ScreenGui")local H=false;local I=Instance.new("Frame")local J=Instance.new("UICorner")local K=Instance.new("Frame")local L=Instance.new("UICorner")local M=Instance.new("TextLabel")local h=Instance.new("Frame")local N=Instance.new("UICorner")local O=Instance.new("TextLabel")local P=Instance.new("TextLabel")local Q=Instance.new("Frame")local R=Instance.new("UIListLayout")local S=Instance.new("Frame")local T=Instance.new("UICorner")local U=Instance.new("Folder")local V=Instance.new("Frame")local W=Instance.new("ImageLabel")G.Name="Library"G.Parent=game.CoreGui;G.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;I.Name="MainFrame"I.Parent=G;I.BackgroundColor3=Color3.fromRGB(27,27,27)I.Position=UDim2.new(0.5,-325,0.5,-250)I.Size=UDim2.new(0,650,0,500)J.CornerRadius=UDim.new(0,5)J.Name="MainCorner"J.Parent=I;K.Name="LeftFrame"K.Parent=I;K.BackgroundColor3=Color3.fromRGB(30,30,30)K.Position=UDim2.new(-0.000674468291,0,-0.000149806539,0)K.Size=UDim2.new(0,190,0,500)L.CornerRadius=UDim.new(0,5)L.Name="LeftFrameCorner"L.Parent=K;M.Name="MainTitle"M.Parent=K;M.BackgroundColor3=Color3.fromRGB(255,255,255)M.BackgroundTransparency=1.000;M.Position=UDim2.new(0.110,0,0.043,0)M.Size=UDim2.new(0,71,0,20)M.Font=Enum.Font.Gotham;M.Text=D;M.TextColor3=Color3.fromRGB(255,255,255)M.TextSize=25.000;M.TextXAlignment=Enum.TextXAlignment.Left;P.Name="GameTitle"P.Parent=K;P.BackgroundColor3=Color3.fromRGB(255,255,255)P.BackgroundTransparency=1.000;P.Position=UDim2.new(0.175,0,0.089,6)P.Size=UDim2.new(0,71,0,20)P.Font=Enum.Font.Gotham;P.Text=E;P.TextColor3=Color3.fromRGB(255,255,255)P.TextSize=17.000;P.TextTransparency=0.400;P.TextXAlignment=Enum.TextXAlignment.Left;Q.Name="TabHolder"Q.Parent=K;Q.BackgroundColor3=Color3.fromRGB(255,255,255)Q.BackgroundTransparency=1.000;Q.Position=UDim2.new(0.0806451589,0,0.189360261,0)Q.Size=UDim2.new(0,159,0,309)R.Name="TabHoldLayout"R.Parent=Q;R.SortOrder=Enum.SortOrder.LayoutOrder;R.HorizontalAlignment=Enum.HorizontalAlignment.Center;R.Padding=UDim.new(0,5)U.Name="ContainerHold"U.Parent=I;V.Name="DragFrame"V.Parent=I;V.BackgroundColor3=Color3.fromRGB(255,255,255)V.BackgroundTransparency=1.000;V.Position=UDim2.new(0.30130294,0,0.00253164559,0)V.Size=UDim2.new(0,428,0,21)W.Name="Glow"W.Parent=K;W.BackgroundColor3=Color3.fromRGB(255,255,255)W.BackgroundTransparency=1.000;W.BorderSizePixel=0;W.Position=UDim2.new(0,-15,0,-15)W.Size=UDim2.new(1,30,1,30)W.ZIndex=0;W.Image="rbxassetid://4996891970"W.ImageColor3=Color3.fromRGB(15,15,15)W.ScaleType=Enum.ScaleType.Slice;W.SliceCenter=Rect.new(20,20,280,280)r(I,I)function f:Notification(X,Y,Z)local _=Instance.new("TextButton")local a0=Instance.new("Frame")local a1=Instance.new("TextButton")local a2=Instance.new("UICorner")local a3=Instance.new("TextLabel")local a4=Instance.new("TextLabel")local a5=Instance.new("TextLabel")_.Name="NotificationHold"_.Parent=I;_.BackgroundColor3=Color3.fromRGB(125,125,125)_.BackgroundTransparency=0.700;_.BorderSizePixel=0;_.Size=UDim2.new(0,650,0,500)_.AutoButtonColor=false;_.Font=Enum.Font.SourceSans;_.Text=""_.TextColor3=Color3.fromRGB(0,0,0)_.TextSize=14.000;b:Create(_,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundTransparency=0.7}):Play()wait(0.4)a0.Name="NotificationFrame"a0.Parent=_;a0.AnchorPoint=Vector2.new(0.5,0.5)a0.BackgroundColor3=Color3.fromRGB(30,30,30)a0.BorderSizePixel=0;a0.ClipsDescendants=true;a0.Position=UDim2.new(0.5,0,0.498432577,0)a0.Size=UDim2.new(0,0,0,0)a0:TweenSize(UDim2.new(0,305,0,283),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,.6,true)a1.Name="OkayBtn"a1.Parent=a0;a1.BackgroundColor3=Color3.fromRGB(49,49,49)a1.Position=UDim2.new(0.171131134,0,0.759717345,0)a1.Size=UDim2.new(0,200,0,42)a1.AutoButtonColor=false;a1.Font=Enum.Font.SourceSans;a1.Text=""a1.TextColor3=Color3.fromRGB(0,0,0)a1.TextSize=14.000;a1.BackgroundTransparency=1;a1.TextTransparency=1;a2.CornerRadius=UDim.new(0,5)a2.Name="OkayBtnCorner"a2.Parent=a1;a3.Name="OkayBtnTitle"a3.Parent=a1;a3.BackgroundColor3=Color3.fromRGB(255,255,255)a3.BackgroundTransparency=1.000;a3.Size=UDim2.new(0,200,0,42)a3.Text=Z;a3.Font=Enum.Font.Gotham;a3.TextColor3=Color3.fromRGB(202,202,202)a3.TextSize=24.000;a3.TextTransparency=1;a4.Name="NotificationTitle"a4.Parent=a0;a4.BackgroundColor3=Color3.fromRGB(255,255,255)a4.BackgroundTransparency=1.000;a4.Position=UDim2.new(0.0559394211,0,0.0652336925,0)a4.Size=UDim2.new(0,272,0,26)a4.ZIndex=3;a4.Font=Enum.Font.Gotham;a4.Text=X;a4.TextColor3=Color3.fromRGB(255,255,255)a4.TextSize=24.000;a4.TextTransparency=1;a5.Name="NotificationDesc"a5.Parent=a0;a5.BackgroundColor3=Color3.fromRGB(255,255,255)a5.BackgroundTransparency=1.000;a5.Position=UDim2.new(0.0670000017,0,0.218999997,0)a5.Size=UDim2.new(0,274,0,146)a5.Font=Enum.Font.Gotham;a5.Text=Y;a5.TextColor3=Color3.fromRGB(255,255,255)a5.TextSize=20.000;a5.TextWrapped=true;a5.TextXAlignment=Enum.TextXAlignment.Center;a5.TextYAlignment=Enum.TextYAlignment.Top;a5.TextTransparency=1;wait(0.5)for q=1,10 do a4.TextTransparency=1-q/10;wait()end;for q=1,10 do a5.TextTransparency=1-q/10;wait()end;for q=1,10 do a1.BackgroundTransparency=1-q/10;wait()end;for q=1,10 do a3.TextTransparency=1-q/10;wait()end;a1.MouseEnter:Connect(function()b:Create(a1,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundColor3=Color3.fromRGB(37,37,37)}):Play()end)a1.MouseLeave:Connect(function()b:Create(a1,TweenInfo.new(.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundColor3=Color3.fromRGB(34,34,34)}):Play()end)a1.MouseButton1Click:Connect(function()for q=1,10 do a4.TextTransparency=q/10;a5.TextTransparency=q/10;a1.BackgroundTransparency=q/10;a3.TextTransparency=q/10;wait()end;a0:TweenSize(UDim2.new(0,0,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,.6,true)wait(0.4)b:Create(_,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundTransparency=1}):Play()wait(.3)_:Destroy()end)end;local a6={}function a6:Tab(D)local a7=Instance.new("TextButton")local a8=Instance.new("UICorner")local a9=Instance.new("TextLabel")local aa=Instance.new("UIStroke")a7.Name="Tab"a7.Parent=Q;a7.BackgroundColor3=Color3.fromRGB(40,40,40)a7.Size=UDim2.new(0,170,0,35)a7.AutoButtonColor=false;a7.Font=Enum.Font.SourceSans;a7.Text=""a7.TextColor3=Color3.fromRGB(0,0,0)a7.TextSize=15.000;a7.BackgroundTransparency=1;aa.Parent=a7;aa.Transparency=1;aa.Color=Color3.fromRGB(111,111,111)aa.ApplyStrokeMode="Border"aa.LineJoinMode="Round"aa.Thickness=1;a8.CornerRadius=UDim.new(0,3)a8.Name="TabCorner"a8.Parent=a7;a9.Name="Title"a9.Parent=a7;a9.BackgroundColor3=Color3.fromRGB(255,255,255)a9.BackgroundTransparency=1.000;a9.Position=UDim2.new(0.0566037744,0,0.1,0)a9.Size=UDim2.new(0,150,0,29)a9.Font=Enum.Font.Gotham;a9.Text=D;a9.TextColor3=Color3.fromRGB(255,255,255)a9.TextSize=17.000;a9.TextXAlignment=Enum.TextXAlignment.Left;local ab=Instance.new("ScrollingFrame")local ac=Instance.new("UIListLayout")ab.Name="Container"ab.Parent=U;ab.Active=true;ab.BackgroundColor3=Color3.fromRGB(255,255,255)ab.BackgroundTransparency=1.000;ab.BorderSizePixel=0;ab.Position=UDim2.new(0.317,0,0.0506329127,0)ab.Size=UDim2.new(0,437,0,450)ab.ScrollBarThickness=5;ab.CanvasSize=UDim2.new(0,0,0,0)ab.Visible=false;ab.ScrollBarImageColor3=Color3.fromRGB(100,100,100)ac.Name="ContainerLayout"ac.Parent=ab;ac.SortOrder=Enum.SortOrder.LayoutOrder;ac.Padding=UDim.new(0,15)ac.HorizontalAlignment=Enum.HorizontalAlignment.Center;if H==false then H=true;a7.BackgroundTransparency=0;ab.Visible=true;aa.Transparency=0.7 end;a7.MouseButton1Down:Connect(function()for q,ad in pairs(U:getChildren())do ad.Visible=false end;for q,ad in pairs(Q:GetDescendants())do if ad:IsA("TextButton")then local ae=TweenInfo.new(0.5,Enum.EasingStyle.Quart,Enum.EasingDirection.Out)local af=game:GetService("TweenService"):Create(ad,ae,{BackgroundTransparency=1})local ag=game:GetService("TweenService"):Create(ad.UIStroke,ae,{Transparency=1})af:Play()ag:Play()end end;local ae=TweenInfo.new(0.8,Enum.EasingStyle.Quart,Enum.EasingDirection.Out)local ag=game:GetService("TweenService"):Create(a7.UIStroke,ae,{Transparency=0.5})local af=game:GetService("TweenService"):Create(a7,ae,{BackgroundTransparency=0})af:Play()ag:Play()ab.Visible=true end)local ah={}function ah:Button(D,ai)local aj=Instance.new("TextButton")local ak=Instance.new("UICorner")local aa=Instance.new("UIStroke")aj.Name="Button"aj.Parent=ab;aj.BackgroundColor3=Color3.fromRGB(35,35,35)aj.Size=UDim2.new(0,405,0,40)aj.AutoButtonColor=false;aj.Font=Enum.Font.Gotham;aj.TextColor3=Color3.fromRGB(255,255,255)aj.TextSize=15.000;aj.Text=D;ak.CornerRadius=UDim.new(0,5)ak.Name="ButtonCorner"ak.Parent=aj;aa.Parent=aj;aa.Transparency=0.7;aa.Color=Color3.fromRGB(111,111,111)aa.ApplyStrokeMode="Border"aa.LineJoinMode="Round"aa.Thickness=1;aj.MouseEnter:Connect(function()b:Create(aj,TweenInfo.new(.2,Enum.EasingStyle.Quad),{BackgroundColor3=Color3.fromRGB(45,45,45)}):Play()end)aj.MouseLeave:Connect(function()b:Create(aj,TweenInfo.new(.2,Enum.EasingStyle.Quad),{BackgroundColor3=Color3.fromRGB(35,35,35)}):Play()end)ab.CanvasSize=UDim2.new(0,0,0,ac.AbsoluteContentSize.Y)aj.MouseButton1Down:Connect(function()i(aj,g.X,g.Y)end)aj.MouseButton1Click:Connect(function()pcall(ai)aj.TextSize=0;b:Create(aj,TweenInfo.new(.2,Enum.EasingStyle.Quad),{TextSize=17}):Play()wait(.2)b:Create(aj,TweenInfo.new(.2,Enum.EasingStyle.Quad),{TextSize=14}):Play()end)end;function ah:Toggle(D,ai)local al={}local am=false;ai=ai or function()end;local an=Instance.new("TextButton")local ao=Instance.new("UICorner")local a9=Instance.new("TextLabel")local ap=Instance.new("Frame")local aq=Instance.new("UICorner")local ar=Instance.new("Frame")local as=Instance.new("UICorner")local at=Instance.new("Frame")local au=Instance.new("UICorner")local av=Instance.new('UIGradient')local aa=Instance.new("UIStroke")local aw=Instance.new("UIStroke")an.Name="Toggle"an.Parent=ab;an.BackgroundColor3=Color3.fromRGB(35,35,35)an.Position=UDim2.new(-0.747557044,0,0.729113936,0)an.Size=UDim2.new(0,405,0,40)an.AutoButtonColor=false;an.Font=Enum.Font.Gotham;an.Text=""an.TextColor3=Color3.fromRGB(255,255,255)an.TextSize=14.000;ao.CornerRadius=UDim.new(0,5)ao.Name="ToggleCorner"ao.Parent=an;a9.Name="Title"a9.Parent=an;a9.BackgroundColor3=Color3.fromRGB(255,255,255)a9.BackgroundTransparency=1.000;a9.Position=UDim2.new(0.0198511165,0,0,0)a9.Size=UDim2.new(0,430,0,40)a9.Font=Enum.Font.Gotham;a9.Text=D;a9.TextColor3=Color3.fromRGB(255,255,255)a9.TextSize=15.000;a9.TextXAlignment=Enum.TextXAlignment.Left;ap.Name="ToggleFrame"ap.Parent=an;ap.BackgroundColor3=Color3.fromRGB(22,23,27)ap.Position=UDim2.new(0.88,0,0.21,0)ap.Size=UDim2.new(0,40,0,22)aq.CornerRadius=UDim.new(1,0)aq.Name="ToggleFrameCorner"aq.Parent=ap;ar.Name="ToggleFrameRainbow"ar.Parent=ap;ar.BackgroundColor3=Color3.fromRGB(27,27,27)ar.BackgroundTransparency=1.000;ar.Position=UDim2.new(-0.0198377371,0,0.00601506233,0)ar.Size=UDim2.new(0,40,0,22)as.CornerRadius=UDim.new(1,0)as.Name="ToggleFrameRainbowCorner"as.Parent=ar;at.Name="ToggleDot"at.Parent=ar;at.BackgroundColor3=Color3.fromRGB(255,255,255)at.Position=UDim2.new(0.104999997,-3,0.289000005,-4)at.Size=UDim2.new(0,16,0,16)av.Color=ColorSequence.new{ColorSequenceKeypoint.new(0.00,Color3.fromRGB(160,207,236)),ColorSequenceKeypoint.new(1.00,Color3.fromRGB(102,152,255))}av.Parent=at;au.CornerRadius=UDim.new(1,0)au.Name="ToggleDotCorner"au.Parent=at;aa.Parent=an;aa.Transparency=0.7;aa.Color=Color3.fromRGB(111,111,111)aa.ApplyStrokeMode="Border"aa.LineJoinMode="Round"aa.Thickness=1;aw.Parent=at;aw.Transparency=0.7;aw.Color=Color3.fromRGB(0,0,255)aw.ApplyStrokeMode="Border"aw.LineJoinMode="Round"aw.Thickness=1;if at.Position==UDim2.new(0.104999997,-3,0.289000005,-4)then am=false;b:Create(aw,TweenInfo.new(.2,Enum.EasingStyle.Quad),{Transparency=1}):Play()elseif at.Position==UDim2.new(0.595,-3,0.289000005,-4)then am=true;b:Create(aw,TweenInfo.new(.2,Enum.EasingStyle.Quad),{Transparency=0.7}):Play()end;an.MouseButton1Click:Connect(function()i(an,g.X,g.Y)end)local function ax()am=not am;pcall(ai,am)at:TweenPosition(am and UDim2.new(0.595,-3,0.289000005,-4)or UDim2.new(0.104999997,-3,0.289000005,-4),"In","Linear",0.1)end;an.MouseButton1Down:Connect(ax)function al:Set(ay)pcall(ai,ay)at:TweenPosition(am and UDim2.new(0.595,-3,0.289000005,-4)or UDim2.new(0.104999997,-3,0.289000005,-4),"In","Linear",0.1)end;an.MouseEnter:Connect(function()b:Create(an,TweenInfo.new(.2,Enum.EasingStyle.Quad),{BackgroundColor3=Color3.fromRGB(45,45,45)}):Play()end)an.MouseLeave:Connect(function()b:Create(an,TweenInfo.new(.2,Enum.EasingStyle.Quad),{BackgroundColor3=Color3.fromRGB(35,35,35)}):Play()end)ab.CanvasSize=UDim2.new(0,0,0,ac.AbsoluteContentSize.Y)end;function ah:Slider(az,aA,aB,ai)aA=aA or 0;aB=aB or 100;ai=ai or function()end;local g=game.Players.LocalPlayer:GetMouse()local aC=game:GetService("UserInputService")local aD;local aE=Instance.new("Frame")local aF=Instance.new("UICorner")local aG=Instance.new("TextLabel")local aH=Instance.new("UICorner")local aI=Instance.new("Frame")local aJ=Instance.new("UICorner")local aK=Instance.new("TextButton")local aL=Instance.new("UICorner")local aM=Instance.new("Frame")local aN=Instance.new("UICorner")local aO=Instance.new("TextLabel")local aP=Instance.new("UICorner")local aQ=Instance.new("UIStroke")aE.Name="Slider"aE.Parent=ab;aE.Active=true;aE.BackgroundColor3=Color3.fromRGB(35,35,35)aE.BorderColor3=Color3.fromRGB(30,30,30)aE.Position=UDim2.new(-0.747557044,0,0.729113936,0)aE.Size=UDim2.new(0,405,0,49)aF.CornerRadius=UDim.new(0,4)aF.Parent=aE;aG.Name="SliderText"aG.Parent=aE;aG.Active=true;aG.BackgroundColor3=Color3.fromRGB(30,30,30)aG.BackgroundTransparency=1.000;aG.BorderColor3=Color3.fromRGB(30,30,30)aG.Position=UDim2.new(0.0198511165,0,0,0)aG.Size=UDim2.new(0,192,0,28)aG.Font=Enum.Font.GothamBlack;aG.Text=az;aG.TextColor3=Color3.fromRGB(111,111,111)aG.TextSize=14.000;aG.TextStrokeColor3=Color3.fromRGB(111,111,111)aH.CornerRadius=UDim.new(0,4)aH.Parent=aG;aI.Name="SliderContainer"aI.Parent=aE;aI.Active=true;aI.BackgroundColor3=Color3.fromRGB(57,57,57)aI.BorderColor3=Color3.fromRGB(57,57,57)aI.Position=UDim2.new(0.0223324299,0,0.563266039,0)aI.Size=UDim2.new(0,384,0,11)aJ.CornerRadius=UDim.new(0,4)aJ.Parent=aI;aK.Name="SliderButton"aK.Parent=aI;aK.BackgroundColor3=Color3.fromRGB(29,29,29)aK.BorderColor3=Color3.fromRGB(57,57,57)aK.Size=UDim2.new(0,384,0,11)aK.Font=Enum.Font.GothamBlack;aK.Text=""aK.BackgroundTransparency=1;aK.Position=UDim2.new(0,0,0,0)aK.TextColor3=Color3.fromRGB(111,111,111)aK.TextSize=14.000;aK.TextStrokeColor3=Color3.fromRGB(111,111,111)aL.CornerRadius=UDim.new(0,4)aL.Parent=aK;aM.Name="SlideInNear"aM.Parent=aK;aM.Active=true;aM.BackgroundColor3=Color3.fromRGB(255,60,60)aM.BorderColor3=Color3.fromRGB(29,29,29)aM.Position=UDim2.new(-0.00260408712,0,0.0363603085,0)aM.Size=UDim2.new(0,0,0,11)aN.CornerRadius=UDim.new(0,4)aN.Parent=aM;aO.Name="Num"aO.Parent=aE;aO.Active=true;aO.BackgroundTransparency=1;aO.BackgroundColor3=Color3.fromRGB(28,28,28)aO.BorderColor3=Color3.fromRGB(28,28,28)aO.Position=UDim2.new(0.496277869,0,0,0)aO.Size=UDim2.new(0,192,0,28)aO.Font=Enum.Font.GothamBlack;aO.Text="0"aO.TextColor3=Color3.fromRGB(111,111,111)aO.TextSize=14.000;aO.TextStrokeColor3=Color3.fromRGB(111,111,111)aP.CornerRadius=UDim.new(0,4)aP.Parent=aO;aQ.Parent=aE;aQ.Transparency=0.7;aQ.Color=Color3.fromRGB(111,111,111)aQ.ApplyStrokeMode="Border"aQ.LineJoinMode="Round"aQ.Thickness=1;aK.MouseButton1Down:Connect(function()aD=math.floor((tonumber(aB)-tonumber(aA))/384*aM.AbsoluteSize.X+tonumber(aA))or 0;pcall(function()ai(aD)end)aM.Size=UDim2.new(0,math.clamp(g.X-aM.AbsolutePosition.X,0,384),0,11)moveconnection=g.Move:Connect(function()aO.Text=aD;aD=math.floor((tonumber(aB)-tonumber(aA))/384*aM.AbsoluteSize.X+tonumber(aA))pcall(function()ai(aD)end)aM.Size=UDim2.new(0,math.clamp(g.X-aM.AbsolutePosition.X,0,384),0,11)end)releaseconnection=aC.InputEnded:Connect(function(e)if e.UserInputType==Enum.UserInputType.MouseButton1 then aD=math.floor((tonumber(aB)-tonumber(aA))/384*aM.AbsoluteSize.X+tonumber(aA))pcall(function()ai(aD)end)aM.Size=UDim2.new(0,math.clamp(g.X-aM.AbsolutePosition.X,0,384),0,11)moveconnection:Disconnect()releaseconnection:Disconnect()end end)end)end;function ah:Dropdown(aR,aS,ai)local aT={}local aU=false;local aV=0;local aW=0;local aX=Instance.new("TextButton")local a9=Instance.new("TextLabel")local aY=Instance.new("UICorner")local aZ=Instance.new("ImageLabel")local aa=Instance.new("UIStroke")aX.Name="Dropdown"aX.Parent=ab;aX.BackgroundColor3=Color3.fromRGB(35,35,35)aX.Position=UDim2.new(-0.747557044,0,0.729113936,0)aX.Size=UDim2.new(0,405,0,45)aX.AutoButtonColor=false;aX.Font=Enum.Font.Gotham;aX.Text=""aX.TextColor3=Color3.fromRGB(255,255,255)aX.TextSize=15.000;a9.Name="Title"a9.Parent=aX;a9.BackgroundColor3=Color3.fromRGB(255,255,255)a9.BackgroundTransparency=1.000;a9.Position=UDim2.new(0.0198511165,0,0,0)a9.Size=UDim2.new(0,192,0,40)a9.Font=Enum.Font.Gotham;a9.Text=aR;a9.TextColor3=Color3.fromRGB(255,255,255)a9.TextSize=15.000;a9.TextXAlignment=Enum.TextXAlignment.Left;aY.CornerRadius=UDim.new(0,6)aY.Name="DropdownCorner"aY.Parent=aX;aZ.Name="Arrow"aZ.Parent=aX;aZ.BackgroundColor3=Color3.fromRGB(255,255,255)aZ.BackgroundTransparency=1.000;aZ.Position=UDim2.new(0.9,0,0.2,0)aZ.Size=UDim2.new(0,27,0,27)aZ.Image="http://www.roblox.com/asset/?id=6034818372"local a_=Instance.new("Frame")local b0=Instance.new("UICorner")local b1=Instance.new("ScrollingFrame")local b2=Instance.new("UIListLayout")local b3=Instance.new("UIPadding")a_.Name="DropdownFrame"a_.Parent=ab;a_.BackgroundColor3=Color3.fromRGB(32,32,32)a_.BorderSizePixel=0;a_.Position=UDim2.new(0.334374994,0,0.604166687,0)a_.Size=UDim2.new(0,403,0,0)a_.Visible=false;b0.Name="DropdownFrameCorner"b0.Parent=a_;b1.Name="DropdownHolder"b1.Parent=a_;b1.Active=true;b1.BackgroundColor3=Color3.fromRGB(255,255,255)b1.BackgroundTransparency=1.000;b1.BorderSizePixel=0;b1.Position=UDim2.new(0.0263156947,0,0.00326599111,0)b1.Size=UDim2.new(0,386,0,0)b1.ScrollBarThickness=3;b1.CanvasSize=UDim2.new(0,0,0,0)b1.ScrollBarImageColor3=Color3.fromRGB(48,48,48)b2.Name="DropdownItemLayout"b2.Parent=b1;b2.SortOrder=Enum.SortOrder.LayoutOrder;b2.Padding=UDim.new(0,5)b3.Name="DropdownItemHolder"b3.Parent=b1;b3.PaddingBottom=UDim.new(0,5)b3.PaddingTop=UDim.new(0,5)ab.CanvasSize=UDim2.new(0,0,0,ac.AbsoluteContentSize.Y)aa.Parent=aX;aa.Transparency=0.7;aa.Color=Color3.fromRGB(111,111,111)aa.ApplyStrokeMode="Border"aa.LineJoinMode="Round"aa.Thickness=1;aX.MouseEnter:Connect(function()b:Create(aX,TweenInfo.new(.2,Enum.EasingStyle.Quad),{BackgroundColor3=Color3.fromRGB(45,45,45)}):Play()end)aX.MouseLeave:Connect(function()b:Create(aX,TweenInfo.new(.2,Enum.EasingStyle.Quad),{BackgroundColor3=Color3.fromRGB(35,35,35)}):Play()end)aX.MouseButton1Click:Connect(function()i(aX,g.X,g.Y)end)aX.MouseButton1Click:Connect(function()if aU==false then a_.Visible=true;a_:TweenSize(UDim2.new(0,403,0,aV),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.1,true)b1:TweenSize(UDim2.new(0,386,0,aV),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.1,true)b:Create(aZ,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Rotation=180}):Play()repeat wait()until a_.Size==UDim2.new(0,403,0,aV)ab.CanvasSize=UDim2.new(0,0,0,ac.AbsoluteContentSize.Y)else a_:TweenSize(UDim2.new(0,403,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.1,true)b1:TweenSize(UDim2.new(0,386,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.1,true)b:Create(aZ,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Rotation=0}):Play()repeat wait()until a_.Size==UDim2.new(0,403,0,0)a_.Visible=false;ab.CanvasSize=UDim2.new(0,0,0,ac.AbsoluteContentSize.Y)end;aU=not aU end)for q,ad in next,aS do aW=aW+1;if aW==1 then aV=39 elseif aW==2 then aV=69 elseif aW>=3 then aV=100 end;local b4=Instance.new("TextButton")local b5=Instance.new("UICorner")b4.Name="Item"b4.Parent=b1;b4.BackgroundColor3=Color3.fromRGB(32,32,32)b4.Position=UDim2.new(0,0,0.0808080807,0)b4.Size=UDim2.new(0,405,0,24)b4.AutoButtonColor=false;b4.Font=Enum.Font.Gotham;b4.TextColor3=Color3.fromRGB(255,255,255)b4.TextSize=14.000;b4.Text=ad;b5.Name="ItemCorner"b5.Parent=b4;b4.MouseEnter:Connect(function()b:Create(b4,TweenInfo.new(.2,Enum.EasingStyle.Quad),{BackgroundColor3=Color3.fromRGB(37,37,37)}):Play()end)b4.MouseLeave:Connect(function()b:Create(b4,TweenInfo.new(.2,Enum.EasingStyle.Quad),{BackgroundColor3=Color3.fromRGB(32,32,32)}):Play()end)b4.MouseButton1Click:Connect(function()i(b4,g.X,g.Y)end)b4.MouseButton1Click:Connect(function()a9.Text=D.." - "..ad;pcall(ai,ad)aU=false;a_:TweenSize(UDim2.new(0,403,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.1,true)b1:TweenSize(UDim2.new(0,386,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.1,true)b:Create(aZ,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Rotation=0}):Play()repeat wait()until a_.Size==UDim2.new(0,403,0,0)a_.Visible=false;ab.CanvasSize=UDim2.new(0,0,0,ac.AbsoluteContentSize.Y)end)b1.CanvasSize=UDim2.new(0,0,0,b2.AbsoluteContentSize.Y+15)end;function aT:Clear()a9.Text=D;aV=0;aW=0;for q,ad in next,b1:GetChildren()do if ad.Name=="Item"then ad:Destroy()end end;a_:TweenSize(UDim2.new(0,403,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.1,true)b1:TweenSize(UDim2.new(0,386,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.1,true)b:Create(aZ,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Rotation=0}):Play()repeat wait()until a_.Size==UDim2.new(0,403,0,0)a_.Visible=false;ab.CanvasSize=UDim2.new(0,0,0,ac.AbsoluteContentSize.Y)end;function aT:Add(b6)aW=aW+1;if aW==1 then aV=39 elseif aW==2 then aV=69 elseif aW>=3 then aV=100 end;local b4=Instance.new("TextButton")local b5=Instance.new("UICorner")b4.Name="Item"b4.Parent=b1;b4.BackgroundColor3=Color3.fromRGB(32,32,32)b4.Position=UDim2.new(0,0,0.0808080807,0)b4.Size=UDim2.new(0,405,0,24)b4.AutoButtonColor=false;b4.Font=Enum.Font.Gotham;b4.TextColor3=Color3.fromRGB(255,255,255)b4.TextSize=14.000;b4.Text=b6;b5.Name="ItemCorner"b5.Parent=b4;b4.MouseEnter:Connect(function()b:Create(b4,TweenInfo.new(.2,Enum.EasingStyle.Quad),{BackgroundColor3=Color3.fromRGB(37,37,37)}):Play()end)b4.MouseLeave:Connect(function()b:Create(b4,TweenInfo.new(.2,Enum.EasingStyle.Quad),{BackgroundColor3=Color3.fromRGB(32,32,32)}):Play()end)b4.MouseButton1Click:Connect(function()i(b4,g.X,g.Y)end)b4.MouseButton1Click:Connect(function()a9.Text=D.." - "..b6;pcall(ai,b6)aU=false;a_:TweenSize(UDim2.new(0,403,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.1,true)b1:TweenSize(UDim2.new(0,386,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.1,true)b:Create(aZ,TweenInfo.new(.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Rotation=0}):Play()repeat wait()until a_.Size==UDim2.new(0,403,0,0)a_.Visible=false;ab.CanvasSize=UDim2.new(0,0,0,ac.AbsoluteContentSize.Y)end)b1.CanvasSize=UDim2.new(0,0,0,b2.AbsoluteContentSize.Y+15)end;return aT end;function ah:Colorpicker(D,b7,ai)local b8=false;local b9=Color3.fromRGB(0,0,0)local ba=Color3.fromRGB(0,0,0)local bb=nil;local bc=nil;local bd,be,bf=1,1,1;local bg=false;local bh=nil;local bi=nil;local bj=nil;local bk=Instance.new("TextButton")local a9=Instance.new("TextLabel")local bl=Instance.new("Frame")local bm=Instance.new("UICorner")local bn=Instance.new("UICorner")bk.Name="Colorpicker"bk.Parent=ab;bk.BackgroundColor3=Color3.fromRGB(35,35,35)bk.Position=UDim2.new(-0.747557044,0,0.729113936,0)bk.Size=UDim2.new(0,405,0,40)bk.AutoButtonColor=false;bk.Font=Enum.Font.Gotham;bk.Text=""bk.TextColor3=Color3.fromRGB(255,255,255)bk.TextSize=14.000;a9.Name="Title"a9.Parent=bk;a9.BackgroundColor3=Color3.fromRGB(255,255,255)a9.BackgroundTransparency=1.000;a9.Position=UDim2.new(0.0198511165,0,0,0)a9.Size=UDim2.new(0,405,0,40)a9.Font=Enum.Font.Gotham;a9.Text=D;a9.TextColor3=Color3.fromRGB(255,255,255)a9.TextSize=15.000;a9.TextXAlignment=Enum.TextXAlignment.Left;bl.Name="Boxcolor"bl.Parent=bk;bl.BackgroundColor3=b7;bl.Position=UDim2.new(0.88,0,0.3,0)bl.Size=UDim2.new(0,36,0,19)bm.CornerRadius=UDim.new(0,6)bm.Name="BoxcolorCorner"bm.Parent=bl;bn.CornerRadius=UDim.new(0,4)bn.Name="ColorpickerCorner"bn.Parent=bk;local bo=Instance.new("Frame")local b0=Instance.new("UICorner")local bp=Instance.new("ImageLabel")local bq=Instance.new("UICorner")local br=Instance.new("UIGradient")local bs=Instance.new("ImageLabel")local bt=Instance.new("ImageLabel")local bu=Instance.new("UICorner")local bv=Instance.new("ImageLabel")local bw=Instance.new("TextButton")local ak=Instance.new("UICorner")bo.Name="ColorpickerFrame"bo.Parent=ab;bo.BackgroundColor3=Color3.fromRGB(32,32,32)bo.BorderSizePixel=0;bo.Position=UDim2.new(0.165624991,0,0.671052635,0)bo.Size=UDim2.new(0,403,0,0)bo.Visible=false;bo.ClipsDescendants=true;b0.Name="DropdownFrameCorner"b0.Parent=bo;bp.Name="Hue"bp.Parent=bo;bp.BackgroundColor3=Color3.fromRGB(255,255,255)bp.Position=UDim2.new(0,209,0,9)bp.Size=UDim2.new(0,25,0,80)bq.CornerRadius=UDim.new(0,3)bq.Name="HueCorner"bq.Parent=bp;br.Color=ColorSequence.new{ColorSequenceKeypoint.new(0.00,Color3.fromRGB(255,0,4)),ColorSequenceKeypoint.new(0.20,Color3.fromRGB(234,255,0)),ColorSequenceKeypoint.new(0.40,Color3.fromRGB(21,255,0)),ColorSequenceKeypoint.new(0.60,Color3.fromRGB(0,255,255)),ColorSequenceKeypoint.new(0.80,Color3.fromRGB(0,17,255)),ColorSequenceKeypoint.new(0.90,Color3.fromRGB(255,0,251)),ColorSequenceKeypoint.new(1.00,Color3.fromRGB(255,0,4))}br.Rotation=270;br.Name="HueGradient"br.Parent=bp;bs.Name="HueSelection"bs.Parent=bp;bs.AnchorPoint=Vector2.new(0.5,0.5)bs.BackgroundColor3=Color3.fromRGB(255,255,255)bs.BackgroundTransparency=1.000;bs.Position=UDim2.new(0.48,0,1-select(1,Color3.toHSV(b7)))bs.Size=UDim2.new(0,18,0,18)bs.Image="http://www.roblox.com/asset/?id=4805639000"bt.Name="Color"bt.Parent=bo;bt.BackgroundColor3=Color3.fromRGB(255,0,4)bt.Position=UDim2.new(0,9,0,9)bt.Size=UDim2.new(0,194,0,80)bt.ZIndex=10;bt.Image="rbxassetid://4155801252"bu.CornerRadius=UDim.new(0,3)bu.Name="ColorCorner"bu.Parent=bt;bv.Name="ColorSelection"bv.Parent=bt;bv.AnchorPoint=Vector2.new(0.5,0.5)bv.BackgroundColor3=Color3.fromRGB(255,255,255)bv.BackgroundTransparency=1.000;bv.Position=UDim2.new(b7 and select(3,Color3.toHSV(b7)))bv.Size=UDim2.new(0,18,0,18)bv.Image="http://www.roblox.com/asset/?id=4805639000"bv.ScaleType=Enum.ScaleType.Fit;bw.Name="Confirm"bw.Parent=bo;bw.BackgroundColor3=Color3.fromRGB(32,32,32)bw.BackgroundTransparency=0.010;bw.Position=UDim2.new(0.612244904,0,0.35,0)bw.Size=UDim2.new(0,145,0,27)bw.AutoButtonColor=false;bw.Font=Enum.Font.Gotham;bw.Text="Confirm"bw.TextColor3=Color3.fromRGB(255,255,255)bw.TextSize=14.000;ak.Name="ButtonCorner"ak.Parent=bw;ab.CanvasSize=UDim2.new(0,0,0,ac.AbsoluteContentSize.Y)bk.MouseEnter:Connect(function()b:Create(bk,TweenInfo.new(.2,Enum.EasingStyle.Quad),{BackgroundColor3=Color3.fromRGB(45,45,45)}):Play()end)bk.MouseLeave:Connect(function()b:Create(bk,TweenInfo.new(.2,Enum.EasingStyle.Quad),{BackgroundColor3=Color3.fromRGB(35,35,35)}):Play()end)local function bx(by)bl.BackgroundColor3=Color3.fromHSV(bd,be,bf)bt.BackgroundColor3=Color3.fromHSV(bd,1,1)pcall(ai,bl.BackgroundColor3)end;bd=1-math.clamp(bs.AbsolutePosition.Y-bp.AbsolutePosition.Y,0,bp.AbsoluteSize.Y)/bp.AbsoluteSize.Y;be=math.clamp(bv.AbsolutePosition.X-bt.AbsolutePosition.X,0,bt.AbsoluteSize.X)/bt.AbsoluteSize.X;bf=1-math.clamp(bv.AbsolutePosition.Y-bt.AbsolutePosition.Y,0,bt.AbsoluteSize.Y)/bt.AbsoluteSize.Y;bl.BackgroundColor3=b7;bt.BackgroundColor3=b7;pcall(ai,bl.BackgroundColor3)bt.InputBegan:Connect(function(z)if z.UserInputType==Enum.UserInputType.MouseButton1 then if bg then return end;if bi then bi:Disconnect()end;bi=c.RenderStepped:Connect(function()local bz=math.clamp(e.X-bt.AbsolutePosition.X,0,bt.AbsoluteSize.X)/bt.AbsoluteSize.X;local bA=math.clamp(e.Y-bt.AbsolutePosition.Y,0,bt.AbsoluteSize.Y)/bt.AbsoluteSize.Y;bv.Position=UDim2.new(bz,0,bA,0)be=bz;bf=1-bA;bx(true)end)end end)bt.InputEnded:Connect(function(z)if z.UserInputType==Enum.UserInputType.MouseButton1 then if bi then bi:Disconnect()end end end)bp.InputBegan:Connect(function(z)if z.UserInputType==Enum.UserInputType.MouseButton1 then if bg then return end;if bj then bj:Disconnect()end;bj=c.RenderStepped:Connect(function()local bB=math.clamp(e.Y-bp.AbsolutePosition.Y,0,bp.AbsoluteSize.Y)/bp.AbsoluteSize.Y;bs.Position=UDim2.new(0.48,0,bB,0)bd=1-bB;bx(true)end)end end)bp.InputEnded:Connect(function(z)if z.UserInputType==Enum.UserInputType.MouseButton1 then if bj then bj:Disconnect()end end end)bk.MouseButton1Click:Connect(function()i(bk,g.X,g.Y)end)bk.MouseButton1Click:Connect(function()if b8==false then b8=not b8;bo.Visible=true;bo:TweenSize(UDim2.new(0,403,0,100),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.1,true)repeat wait()until bo.Size==UDim2.new(0,403,0,100)ab.CanvasSize=UDim2.new(0,0,0,ac.AbsoluteContentSize.Y)else b8=not b8;bo:TweenSize(UDim2.new(0,403,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.1,true)repeat wait()until bo.Size==UDim2.new(0,403,0,0)bo.Visible=false;ab.CanvasSize=UDim2.new(0,0,0,ac.AbsoluteContentSize.Y)end end)bw.MouseButton1Click:Connect(function()i(bw,g.X,g.Y)end)bw.MouseButton1Click:Connect(function()b8=not b8;bo:TweenSize(UDim2.new(0,403,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.1,true)repeat wait()until bo.Size==UDim2.new(0,403,0,0)bo.Visible=false;ab.CanvasSize=UDim2.new(0,0,0,ac.AbsoluteContentSize.Y)end)coroutine.wrap(function()while wait()do end end)()end;function ah:Label(D)local bC={}local bD=Instance.new("TextButton")local bE=Instance.new("UICorner")local aa=Instance.new("UIStroke")bD.Name="Label"bD.Parent=ab;bD.BackgroundColor3=Color3.fromRGB(35,35,35)bD.Size=UDim2.new(0,405,0,40)bD.AutoButtonColor=false;bD.Font=Enum.Font.Gotham;bD.TextColor3=Color3.fromRGB(255,255,255)bD.TextSize=17.000;bD.Text=D;bE.CornerRadius=UDim.new(0,5)bE.Name="LabelCorner"bE.Parent=bD;ab.CanvasSize=UDim2.new(0,0,0,ac.AbsoluteContentSize.Y)aa.Parent=bD;aa.Transparency=0.7;aa.Color=Color3.fromRGB(111,111,111)aa.ApplyStrokeMode="Border"aa.LineJoinMode="Round"aa.Thickness=1;function bC:Refresh(bF)bD.Text=bF end;return bC end;function ah:line()local bC={}local bD=Instance.new("TextButton")local bE=Instance.new("UICorner")local aa=Instance.new("UIStroke")bD.Name="Label"bD.Parent=ab;bD.BackgroundColor3=Color3.fromRGB(35,35,35)bD.Size=UDim2.new(0,405,0,5)bD.AutoButtonColor=false;bD.Font=Enum.Font.Gotham;bD.TextColor3=Color3.fromRGB(255,255,255)bD.TextSize=17.000;bD.Text=""bE.CornerRadius=UDim.new(0,5)bE.Name="LabelCorner"bE.Parent=bD;ab.CanvasSize=UDim2.new(0,0,0,ac.AbsoluteContentSize.Y)aa.Parent=bD;aa.Transparency=0.7;aa.Color=Color3.fromRGB(111,111,111)aa.ApplyStrokeMode="Border"aa.LineJoinMode="Round"aa.Thickness=1;function bC:Refresh(bF)bD.Text=bF end;return bC end;function ah:Bind(bG,bH,ai)bG=bG or"KeybindText"ai=ai or function()end;local bI=bH.Name;local bJ=Instance.new("TextButton")local a9=Instance.new("TextLabel")local bK=Instance.new("Frame")local bL=Instance.new("UICorner")local bM=Instance.new("TextButton")local bN=Instance.new("UICorner")local ac=Instance.new("UIListLayout")local aa=Instance.new("UIStroke")local bO=false;bJ.Name="Keybind"bJ.Parent=ab;bJ.BackgroundColor3=Color3.fromRGB(35,35,35)bJ.Position=UDim2.new(-0.747557044,0,0.729113936,0)bJ.Size=UDim2.new(0,405,0,40)bJ.AutoButtonColor=false;bJ.Font=Enum.Font.Gotham;bJ.Text=""bJ.TextColor3=Color3.fromRGB(255,255,255)bJ.TextSize=14.000;a9.Name="Title"a9.Parent=bJ;a9.BackgroundColor3=Color3.fromRGB(255,255,255)a9.BackgroundTransparency=1.000;a9.Position=UDim2.new(0.0198511165,0,0,0)a9.Size=UDim2.new(0,405,0,40)a9.Font=Enum.Font.Gotham;a9.Text=bG;a9.TextColor3=Color3.fromRGB(255,255,255)a9.TextSize=15.000;a9.TextXAlignment=Enum.TextXAlignment.Left;bK.Name="KeybindFrame"bK.Parent=bJ;bK.BackgroundColor3=Color3.fromRGB(56,56,56)bK.Position=UDim2.new(0.650124013,0,0.159999996,0)bK.Size=UDim2.new(0,134,0,24)bL.CornerRadius=UDim.new(0,6)bL.Name="KeybindFrameCorner"bL.Parent=bK;bM.Parent=bK;bM.BackgroundColor3=Color3.fromRGB(255,255,255)bM.BackgroundTransparency=1.000;bM.Size=UDim2.new(0,134,0,23)bM.Font=Enum.Font.Gotham;bM.Text="Keybind"bM.TextColor3=Color3.fromRGB(178,178,178)bM.TextSize=15.000;bN.CornerRadius=UDim.new(0,6)bN.Name="KeybindCorner"bN.Parent=bJ;ac.Name="ContainerLayout"ac.Parent=ab;ac.SortOrder=Enum.SortOrder.LayoutOrder;ac.Padding=UDim.new(0,15)aa.Parent=bJ;aa.Transparency=0.7;aa.Color=Color3.fromRGB(111,111,111)aa.ApplyStrokeMode="Border"aa.LineJoinMode="Round"aa.Thickness=1;bM.MouseButton1Down:Connect(function()i(bM,g.X,g.Y)end)bM.MouseButton1Click:Connect(function(bP)if not bO then bM.Text=". . ."local bQ,bR=game:GetService('UserInputService').InputBegan:wait()if bQ.KeyCode.Name~="Unknown"then bM.Text=bQ.KeyCode.Name;bI=bQ.KeyCode.Name end else end end)game:GetService("UserInputService").InputBegan:connect(function(bS,bT)if not bT then if bS.KeyCode.Name==bI then ai()end end end)end;function ah:Textbox(D,bU,ai)local bV=Instance.new("TextButton")local a9=Instance.new("TextLabel")local bW=Instance.new("Frame")local bX=Instance.new("UICorner")local bY=Instance.new("TextBox")local bZ=Instance.new("UICorner")local aa=Instance.new("UIStroke")bV.Name="Textbox"bV.Parent=ab;bV.BackgroundColor3=Color3.fromRGB(35,35,35)bV.Position=UDim2.new(-0.747557044,0,0.729113936,0)bV.Size=UDim2.new(0,405,0,40)bV.AutoButtonColor=false;bV.Font=Enum.Font.Gotham;bV.Text=""bV.TextColor3=Color3.fromRGB(255,255,255)bV.TextSize=14.000;a9.Name="Title"a9.Parent=bV;a9.BackgroundColor3=Color3.fromRGB(255,255,255)a9.BackgroundTransparency=1.000;a9.Position=UDim2.new(0.0198511165,0,0,0)a9.Size=UDim2.new(0,405,0,40)a9.Font=Enum.Font.Gotham;a9.Text=D;a9.TextColor3=Color3.fromRGB(255,255,255)a9.TextSize=15.000;a9.TextXAlignment=Enum.TextXAlignment.Left;bW.Name="TextboxFrame"bW.Parent=bV;bW.BackgroundColor3=Color3.fromRGB(56,56,56)bW.Position=UDim2.new(0.650124013,0,0.16,0)bW.Size=UDim2.new(0,134,0,24)bX.CornerRadius=UDim.new(0,6)bX.Name="TextboxFrameCorner"bX.Parent=bW;bY.Parent=bW;bY.BackgroundColor3=Color3.fromRGB(255,255,255)bY.BackgroundTransparency=1.000;bY.Size=UDim2.new(0,134,0,19)bY.Font=Enum.Font.Gotham;bY.Text=""bY.TextColor3=Color3.fromRGB(255,255,255)bY.TextSize=15.000;bZ.CornerRadius=UDim.new(0,6)bZ.Name="TextboxCorner"bZ.Parent=bV;aa.Parent=bV;aa.Transparency=0.7;aa.Color=Color3.fromRGB(111,111,111)aa.ApplyStrokeMode="Border"aa.LineJoinMode="Round"aa.Thickness=1;bY.FocusLost:Connect(function(b_)if b_ then if#bY.Text>0 then pcall(ai,bY.Text)if bU then bY.Text=""end end end end)ab.CanvasSize=UDim2.new(0,0,0,ac.AbsoluteContentSize.Y)end;return ah end;return a6 end;return f

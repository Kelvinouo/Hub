if game.GameId==3258873704 then repeat wait()until game:IsLoaded()and game.Players.LocalPlayer and game.Players.LocalPlayer.Character end;wait(3)game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList,true)local a=game.Players.LocalPlayer;local b=game:GetService("TweenService")local c=Instance.new("ScreenGui")c.Name="?"c.ResetOnSpawn=false;c.Parent=game:GetService("CoreGui")local function d(e,f)local g=f or 3;coroutine.wrap(function()local h=Instance.new("TextLabel")h.Parent=c;h.AnchorPoint=Vector2.new(0.5,0.5)h.BackgroundColor3=Color3.fromRGB(255,255,255)h.BorderSizePixel=0;h.Position=UDim2.new(0.5,0,0.800000012,0)h.Size=UDim2.new(0,0,0,30)h.Font=Enum.Font.SourceSansLight;h.TextColor3=Color3.fromRGB(0,0,0)h.TextSize=20.000;for i=1,#e+1 do local j=game:GetService("TextService"):GetTextSize(e:sub(1,i),20,Enum.Font.SourceSansLight,Vector2.new(9e9,9e9))h.Text=e:sub(1,i)b:Create(h,TweenInfo.new(0.01),{Size=UDim2.new(0,j.x+30,0,j.y+10)}):Play()wait(0.03)end;wait(g)h.Text=""b:Create(h,TweenInfo.new(0.2),{Size=UDim2.new(0,0,0,0)}):Play()wait(0.2)h:Destroy()end)()end;local function k(l,e,f)coroutine.wrap(function()local m=Instance.new("TextLabel")m.Parent=c;m.AnchorPoint=Vector2.new(0.5,0.5)m.BackgroundColor3=Color3.fromRGB(255,255,255)m.BorderSizePixel=0;m.Position=UDim2.new(0.5,0,0.5,0)m.Size=UDim2.new(0,0,0,30)m.Font=Enum.Font.SourceSansLight;m.TextColor3=Color3.fromRGB(0,0,0)m.TextSize=20.000;for i=1,#l+1 do local j=game:GetService("TextService"):GetTextSize(l:sub(1,i),20,Enum.Font.SourceSansLight,Vector2.new(9e9,9e9))m.Text=l:sub(1,i)b:Create(m,TweenInfo.new(0.01),{Size=UDim2.new(0,j.x+30,0,j.y+10)}):Play()wait(.03)end;wait(0.1)local n=Instance.new("Frame")n.Name="Line"n.Parent=c;n.AnchorPoint=Vector2.new(0.5,0.5)n.BackgroundColor3=Color3.fromRGB(255,255,255)n.BorderSizePixel=0;n.Position=UDim2.new(0.5,0,0.5,0)n.Size=UDim2.new(0,3,0,10)local h=Instance.new("TextLabel")h.Parent=c;h.AnchorPoint=Vector2.new(0.5,0.5)h.BackgroundColor3=Color3.fromRGB(255,255,255)h.BorderSizePixel=0;h.Position=UDim2.new(0.5,0,0.5,0)h.Size=UDim2.new(0,0,0,30)h.Font=Enum.Font.SourceSansLight;h.TextColor3=Color3.fromRGB(0,0,0)h.TextSize=20.000;b:Create(m,TweenInfo.new(0.4),{Position=m.Position-UDim2.new(0,0,0,50)}):Play()wait(0.04)b:Create(n,TweenInfo.new(0.4),{Size=UDim2.new(0,3,0,20)}):Play()n.Position=n.Position-UDim2.new(0,0,0,25)n.Visible=true;wait(0.1)for i=1,#e+1 do local j=game:GetService("TextService"):GetTextSize(e:sub(1,i),20,Enum.Font.SourceSansLight,Vector2.new(9e9,9e9))h.Text=e:sub(1,i)b:Create(h,TweenInfo.new(0.01),{Size=UDim2.new(0,j.x+30,0,j.y+10)}):Play()wait(.05)end;f=f or 3;wait(f)m.Text=""h.Text=""b:Create(m,TweenInfo.new(0.2),{Size=UDim2.new(0,0,0,0)}):Play()b:Create(h,TweenInfo.new(0.2),{Size=UDim2.new(0,0,0,0)}):Play()b:Create(n,TweenInfo.new(0.2),{Size=UDim2.new(0,0,0,0)}):Play()wait(0.2)m:Destroy()h:Destroy()n:Destroy()end)()end;function IsAlive(o)if o.Character and o.Character:FindFirstChild("HumanoidRootPart")and o.Character:FindFirstChild("Humanoid")and o.Character.Humanoid.Health>0 then return true end;return false end;local function p(o)repeat if IsAlive(o)and IsAlive(a)then game:GetService("RunService").Heartbeat:Wait()game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)if o and o.Character and o.Character:FindFirstChild("HumanoidRootPart")then a.Character.HumanoidRootPart.CFrame=o.Character.HumanoidRootPart.CFrame+o.Character.HumanoidRootPart.CFrame.LookVector*-3-Vector3.new(0,6,0)end;game:GetService("ReplicatedStorage"):FindFirstChild("events-shared/events@GlobalEvents").PlayerMelee:FireServer(o)end until IsAlive(o)==false or IsAlive(a)==false or o.Character.HumanoidRootPart.Position.Y<-5;d("Killed "..o.Name)end;game:GetService("ReplicatedStorage"):FindFirstChild("events-shared/events@GlobalEvents").ChestUpdated.OnClientEvent:Connect(function(q,r)for i,j in next,r do game:GetService("ReplicatedStorage"):FindFirstChild("events-shared/events@GlobalEvents").ChestUpdate:FireServer(q,j.Type,-j.Quantity)end end)repeat wait()until IsAlive(a)local s=tick()k("Autowin Started","Made by Fern#5747 !! you dont need to put the script to ur autoexec rn !!")local t=0;repeat for u,j in next,workspace.BlockContainer.Map.Chests:GetChildren()do if IsAlive(a)and j:FindFirstChild("PrimaryPart")then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=j.PrimaryPart.CFrame+Vector3.new(0,5,0)wait(0.1)game:GetService("ReplicatedStorage"):FindFirstChild("events-shared/events@GlobalEvents").ChestOpen:FireServer(j)t=t+1 end end;wait()until t>=2;coroutine.wrap(function()while true do game:GetService("ReplicatedStorage"):FindFirstChild("events-shared/events@GlobalEvents").UpdateActiveItemType:FireServer("BronzeSword")game:GetService("ReplicatedStorage"):FindFirstChild("events-shared/events@GlobalEvents").UpdateActiveItemType:FireServer("IronSword")game:GetService("ReplicatedStorage"):FindFirstChild("events-shared/events@GlobalEvents").UpdateActiveItemType:FireServer("GoldSword")game:GetService("ReplicatedStorage"):FindFirstChild("events-shared/events@GlobalEvents").UpdateActiveItemType:FireServer("DiamondSword")game:GetService("ReplicatedStorage"):FindFirstChild("events-shared/events@GlobalEvents").UpdateActiveItemType:FireServer("EmeraldSword")wait(0.5)end end)()for u,j in next,game.Players:GetPlayers()do if j~=a and IsAlive(j)then p(j)end end;for u,j in next,game.Players:GetPlayers()do if j~=a and IsAlive(j)then p(j)end end;k("Game Ended","Took - "..math.floor(tick()-s).."s")game:GetService("ReplicatedStorage")["events-shared/events@GlobalEvents"].UpdateMatchmakingStatus:FireServer(true)syn.queue_on_teleport([[loadstring(game:HttpGet("https://raw.githubusercontent.com/Kelvinouo/Hub/master/skywars_autowin.lua", true))()]])
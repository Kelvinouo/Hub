local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local uiLib = {}
uiLib.__index = uiLib
local getasset = getsynasset or getcustomasset
local request = syn and syn.request or http and http.request or http_request or fluxus and fluxus.request or getgenv().request
local keyblinds = {
    -- {Name = "Name", Key = KeyCode.., CallBack = function}
}

local function getcustomassetfunc(path)
	if not isfile(path) then
		local req = request({
			Url = "https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/"..path:gsub("vape/assets", "assets"),
			Method = "GET"
		})
		writefile(path, req.Body)
	end
	return getasset(path)
end

local function draggui(gui)
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
            update(input)
        end
    end)
end

local function SetKeyBlind(name, key, callback)
    table.insert(keyblinds, #keyblinds + 1, {
        Name = name,
        Key = key,
        CallBack = callback
    })
end

function uiLib:CreateMain()
    local Blur = Instance.new("BlurEffect", game.Lighting)
    Blur.Enabled = false
    Blur.Size = 20

    local ScreenGui = Instance.new("ScreenGui")
    local Main = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local Logo = Instance.new("ImageLabel")
    local Line = Instance.new("Frame")
    local Shadow = Instance.new("ImageLabel")
    local Setting = Instance.new("TextButton")
    local ImageLabel = Instance.new("ImageLabel")
    local Body = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")
    local Frame_4 = Instance.new("Frame")
    local Overlay = Instance.new("ImageLabel")
    local F = Instance.new("ImageLabel")

    ScreenGui.Name = "RAPER"
    ScreenGui.ResetOnSpawn = false

    Main.Name = "Main"
    Main.Parent = ScreenGui
    Main.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
    Main.Position = UDim2.new(0, 50, 0, 50)
    Main.Size = UDim2.new(0, 180, 0, 62)

    UICorner.CornerRadius = UDim.new(0, 4)
    UICorner.Parent = Main

    Logo.Name = "Logo"
    Logo.Parent = Main
    Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Logo.BackgroundTransparency = 1.000
    Logo.Position = UDim2.new(0, 8, 0, 8)
    Logo.Size = UDim2.new(0, 75, 0, 15)
    Logo.Image = "rbxassetid://7345076440"

    Line.Name = "Line"
    Line.Parent = Main
    Line.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    Line.BorderSizePixel = 0
    Line.Position = UDim2.new(-0, 0, 0, 31)
    Line.Size = UDim2.new(1, 0, 0, 1)

    Shadow.Name = "Shadow"
    Shadow.Parent = Main
    Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
    Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Shadow.BackgroundTransparency = 1.000
    Shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
    Shadow.Size = UDim2.new(1, 6, 1, 6)
    Shadow.ZIndex = -1
    Shadow.Image = "rbxassetid://1316045217"
    Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    Shadow.ScaleType = Enum.ScaleType.Slice
    Shadow.SliceCenter = Rect.new(10, 10, 118, 118)

    Setting.Name = "Setting"
    Setting.Parent = Main
    Setting.AnchorPoint = Vector2.new(0.5, 0.5)
    Setting.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Setting.BackgroundTransparency = 1.000
    Setting.Position = UDim2.new(1, -15, 0, 15)
    Setting.Size = UDim2.new(0, 13, 0, 13)
    Setting.Font = Enum.Font.SourceSans
    Setting.Text = ""
    Setting.TextColor3 = Color3.fromRGB(0, 0, 0)
    Setting.TextSize = 14.000

    ImageLabel.Parent = Setting
    ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel.BackgroundTransparency = 1.000
    ImageLabel.Size = UDim2.new(1, 0, 1, 0)
    ImageLabel.Image = "rbxassetid://7343984874"

    Body.Name = "Body"
    Body.Parent = Main
    Body.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
    Body.BorderSizePixel = 0
    Body.Position = UDim2.new(0, 0, 0, 32)
    Body.Size = UDim2.new(1, 0, 0, 30)

    UIListLayout.Parent = Body
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

    Frame_4.Parent = Body
    Frame_4.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
    Frame_4.BorderSizePixel = 0
    Frame_4.LayoutOrder = 99
    Frame_4.Size = UDim2.new(1, 0, 0, 30)

    Overlay.Name = "Overlay"
    Overlay.Parent = Frame_4
    Overlay.AnchorPoint = Vector2.new(0.5, 0.5)
    Overlay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Overlay.BackgroundTransparency = 1.000
    Overlay.Position = UDim2.new(1, -20, 0, 15)
    Overlay.Size = UDim2.new(0, 10, 0, 10)
    Overlay.Image = "rbxassetid://7345237767"
    Overlay.ImageColor3 = Color3.fromRGB(236, 236, 236)

    F.Name = "F"
    F.Parent = Frame_4
    F.AnchorPoint = Vector2.new(0.5, 0.5)
    F.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    F.BackgroundTransparency = 1.000
    F.Position = UDim2.new(0, 20, 0, 15)
    F.Size = UDim2.new(0, 10, 0, 10)
    F.Image = "rbxassetid://7345244838"
    F.ImageColor3 = Color3.fromRGB(236, 236, 236)

    draggui(Main)

    return setmetatable({
        Blur = Blur,
        ScreenGui = ScreenGui,
        Main = Main,
        Body = Body,
        tab = 0,
        total = 0,
    }, uiLib)
end

function uiLib:AddTab(icon, name)
    local Frame = Instance.new("Frame")
    local Icon = Instance.new("ImageLabel")
    local Name = Instance.new("TextLabel")
    local Arrow = Instance.new("ImageLabel")
    local TextButton = Instance.new("TextButton")
    local toggle = false
    local selftab
    self.tab += 1
    self.total += 1

    Frame.Parent = self.Body
    Frame.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
    Frame.BorderSizePixel = 0
    Frame.LayoutOrder = self.tab
    Frame.Size = UDim2.new(1, 0, 0, 30)

    Icon.Name = "Icon"
    Icon.Parent = Frame
    Icon.AnchorPoint = Vector2.new(0.5, 0.5)
    Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Icon.BackgroundTransparency = 1.000
    Icon.Position = UDim2.new(0, 15, 0, 15)
    Icon.Size = UDim2.new(0, 13, 0, 13)
    Icon.Image = icon
    Icon.ImageColor3 = Color3.fromRGB(200, 200, 200)

    Name.Name = "Name"
    Name.Parent = Frame
    Name.AnchorPoint = Vector2.new(0, 0.5)
    Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Name.BackgroundTransparency = 1.000
    Name.Position = UDim2.new(0, 30, 0.5, 0)
    Name.Size = UDim2.new(1, 0, 1, 0)
    Name.Font = Enum.Font.Ubuntu
    Name.Text = name
    Name.TextColor3 = Color3.fromRGB(200, 200, 200)
    Name.TextSize = 13.000
    Name.TextXAlignment = Enum.TextXAlignment.Left

    Arrow.Name = "Arrow"
    Arrow.Parent = Frame
    Arrow.AnchorPoint = Vector2.new(0.5, 0.5)
    Arrow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Arrow.BackgroundTransparency = 1.000
    Arrow.Position = UDim2.new(1, -20, 0, 15)
    Arrow.Size = UDim2.new(0, 4, 0, 8)
    Arrow.Image = "rbxassetid://7343755311"
    Arrow.ImageColor3 = Color3.fromRGB(236, 236, 236)

    TextButton.Parent = Frame
    TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextButton.BackgroundTransparency = 1.000
    TextButton.Size = UDim2.new(1, 0, 1, 0)
    TextButton.Font = Enum.Font.SourceSans
    TextButton.Text = ""
    TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton.TextSize = 14.000

    self.Body.Size = self.Body.Size + UDim2.new(0, 0, 0, 30)
    self.Main.Size = self.Main.Size + UDim2.new(0, 0, 0, 30)

    TextButton.MouseButton1Click:Connect(function()
        toggle = not toggle
        if toggle then
            Icon.ImageColor3 = Color3.fromRGB(5, 133, 104)
            Name.TextColor3 = Color3.fromRGB(5, 133, 104)
            TweenService:Create(Arrow, TweenInfo.new(0.2), {Position = UDim2.new(1, -13, 0, 15)}):Play()
        else
            Icon.ImageColor3 = Color3.fromRGB(200, 200, 200)
            Name.TextColor3 = Color3.fromRGB(200, 200, 200)
            TweenService:Create(Arrow, TweenInfo.new(0.2), {Position = UDim2.new(1, -20, 0, 15)}):Play()
        end
        selftab.Visible = toggle
    end)

    Frame.MouseEnter:Connect(function()
        if toggle then return end
        Frame.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
        Name.TextColor3 = Color3.fromRGB(255, 255, 255)
    end)

    Frame.MouseLeave:Connect(function()
        if toggle then return end
        Frame.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
        Name.TextColor3 = Color3.fromRGB(200, 200, 200)
    end)

    --Create Tab
    local tabLib = {}

    local Tab = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local Shadow = Instance.new("ImageLabel")
    local Body = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")
    local CloseButton = Instance.new("TextButton")
    local Top = Instance.new("Frame")
    local UICorner_3 = Instance.new("UICorner")
    local Close = Instance.new("ImageLabel")
    local TABIcon = Instance.new("ImageLabel")
    local BackButton = Instance.new("TextButton")
    local Name_2 = Instance.new("TextLabel")
    local Shadow_2 = Instance.new("ImageLabel")
    local tabalttoggle = true
    local old

    Tab.Name = "Tab"
    Tab.Parent = self.ScreenGui
    Tab.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
    Tab.Position = UDim2.new(0, 50 + (183 * self.total), 0, 50)
    Tab.Size = UDim2.new(0, 180, 0, 35)
    Tab.Visible = false
    selftab = Tab

    UICorner.CornerRadius = UDim.new(0, 4)
    UICorner.Parent = Tab

    Shadow.Name = "Shadow"
    Shadow.Parent = Tab
    Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
    Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Shadow.BackgroundTransparency = 1.000
    Shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
    Shadow.Size = UDim2.new(1, 6, 1, 6)
    Shadow.ZIndex = -1
    Shadow.Image = "rbxassetid://1316045217"
    Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    Shadow.ScaleType = Enum.ScaleType.Slice
    Shadow.SliceCenter = Rect.new(10, 10, 118, 118)

    Body.Name = "Body"
    Body.Parent = Tab
    Body.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
    Body.BorderSizePixel = 0
    Body.Position = UDim2.new(0, 0, 0, 32)
    Body.Size = UDim2.new(1, 0, 0, 0)

    UIListLayout.Parent = Body -- end
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

    CloseButton.Name = "Close Button"
    CloseButton.Parent = Tab
    CloseButton.AnchorPoint = Vector2.new(0.5, 0.5)
    CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    CloseButton.BackgroundTransparency = 1.000
    CloseButton.Position = UDim2.new(1, -15, 0, 15)
    CloseButton.Size = UDim2.new(0, 13, 0, 13)
    CloseButton.Font = Enum.Font.SourceSans
    CloseButton.Text = ""
    CloseButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    CloseButton.TextSize = 14.000

    Top.Name = "Top"
    Top.Parent = Tab
    Top.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
    Top.BorderSizePixel = 0
    Top.Size = UDim2.new(1, 0, 0, 32)

    UICorner_3.CornerRadius = UDim.new(0, 4)
    UICorner_3.Parent = Top

    Close.Name = "Close"
    Close.Parent = Top
    Close.AnchorPoint = Vector2.new(0.5, 0.5)
    Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Close.BackgroundTransparency = 1.000
    Close.Position = UDim2.new(1, -15, 0, 15)
    Close.Size = UDim2.new(0, 8, 0, 4)
    Close.Image = "rbxassetid://7353488444"

    TABIcon.Name = "Icon"
    TABIcon.Parent = Top
    TABIcon.AnchorPoint = Vector2.new(0.5, 0.5)
    TABIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TABIcon.BackgroundTransparency = 1.000
    TABIcon.Position = UDim2.new(0, 15, 0, 15)
    TABIcon.Size = UDim2.new(0, 13, 0, 13)
    TABIcon.Image = icon

    BackButton.Parent = TABIcon
    BackButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BackButton.BackgroundTransparency = 1.000
    BackButton.Size = UDim2.new(1, 0, 1, 0)
    BackButton.Text = ""
    BackButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    BackButton.TextSize = 14.000
    BackButton.Visible = false

    Name_2.Name = "Name"
    Name_2.Parent = Top
    Name_2.AnchorPoint = Vector2.new(0, 0.5)
    Name_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Name_2.BackgroundTransparency = 1.000
    Name_2.Position = UDim2.new(0, 30, 0, 15)
    Name_2.Size = UDim2.new(0, 120, 0, 25)
    Name_2.Font = Enum.Font.Ubuntu
    Name_2.Text = name
    Name_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    Name_2.TextSize = 13.000
    Name_2.TextXAlignment = Enum.TextXAlignment.Left

    Shadow_2.Name = "Shadow"
    Shadow_2.Parent = Top
    Shadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
    Shadow_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Shadow_2.BackgroundTransparency = 1.000
    Shadow_2.Position = UDim2.new(0.5, 0, 0.5, 0)
    Shadow_2.Size = UDim2.new(1, 6, 1, 6)
    Shadow_2.ZIndex = -1
    Shadow_2.Image = "rbxassetid://1316045217"
    Shadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
    Shadow_2.ScaleType = Enum.ScaleType.Slice
    Shadow_2.SliceCenter = Rect.new(10, 10, 118, 118)

    --Setting
    local Tab_More = Instance.new("Frame")
    local Tab_Frame = Instance.new("Frame")
    local Tab_Name = Instance.new("TextLabel")
    local Tab_More_2 = Instance.new("ImageLabel")
    local Tab_TextButton = Instance.new("TextButton")
    local Tab_MoreButton = Instance.new("TextButton")
    local Tab_Keyblind = Instance.new("ImageLabel")
    local Tab_Frame_2 = Instance.new("Frame")
    local Tab_UICorner = Instance.new("UICorner")
    local Tab_TextButton_2 = Instance.new("TextButton")
    local Tab_UIListLayout = Instance.new("UIListLayout")
    local SetingToggle = false
    local NowName

    Tab_More.Name = "More"
    Tab_More.Parent = Tab
    Tab_More.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
    Tab_More.BorderSizePixel = 0
    Tab_More.Position = UDim2.new(0, 0, 0, 32)
    Tab_More.Size = UDim2.new(1, 0, 0.413265347, 0)
    Tab_More.Visible = false

    Tab_Frame.Parent = Tab_More
    Tab_Frame.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
    Tab_Frame.BorderSizePixel = 0
    Tab_Frame.LayoutOrder = 2
    Tab_Frame.Size = UDim2.new(1, 0, 0, 30)

    Tab_Name.Name = "Name"
    Tab_Name.Parent = Tab_Frame
    Tab_Name.AnchorPoint = Vector2.new(0, 0.5)
    Tab_Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Tab_Name.BackgroundTransparency = 1.000
    Tab_Name.Position = UDim2.new(0, 10, 0.5, 0)
    Tab_Name.Size = UDim2.new(1, 0, 1, 0)
    Tab_Name.Font = Enum.Font.Ubuntu
    Tab_Name.Text = ""
    Tab_Name.TextColor3 = Color3.fromRGB(200, 200, 200)
    Tab_Name.TextSize = 13.000
    Tab_Name.TextXAlignment = Enum.TextXAlignment.Left

    Tab_More_2.Name = "More"
    Tab_More_2.Parent = Tab_Frame
    Tab_More_2.AnchorPoint = Vector2.new(0.5, 0.5)
    Tab_More_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Tab_More_2.BackgroundTransparency = 1.000
    Tab_More_2.Position = UDim2.new(1, -15, 0, 15)
    Tab_More_2.Size = UDim2.new(0, 2, 0, 10)
    Tab_More_2.Image = "rbxassetid://7353408917"
    Tab_More_2.ImageColor3 = Color3.fromRGB(236, 236, 236)

    Tab_TextButton.Parent = Tab_Frame
    Tab_TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Tab_TextButton.BackgroundTransparency = 1.000
    Tab_TextButton.Size = UDim2.new(0.699999988, 0, 1, 0)
    Tab_TextButton.Font = Enum.Font.SourceSans
    Tab_TextButton.Text = ""
    Tab_TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    Tab_TextButton.TextSize = 14.000

    Tab_MoreButton.Name = "MoreButton"
    Tab_MoreButton.Parent = Tab_Frame
    Tab_MoreButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Tab_MoreButton.BackgroundTransparency = 1.000
    Tab_MoreButton.Position = UDim2.new(0.850000024, 0, 0, 0)
    Tab_MoreButton.Size = UDim2.new(0.150000006, 0, 1, 0)
    Tab_MoreButton.Font = Enum.Font.SourceSans
    Tab_MoreButton.Text = ""
    Tab_MoreButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    Tab_MoreButton.TextSize = 14.000

    Tab_Keyblind.Name = "Keyblind"
    Tab_Keyblind.Parent = Tab_Frame
    Tab_Keyblind.AnchorPoint = Vector2.new(0.5, 0.5)
    Tab_Keyblind.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
    Tab_Keyblind.BackgroundTransparency = 1.000
    Tab_Keyblind.BorderSizePixel = 0
    Tab_Keyblind.Position = UDim2.new(1, -40, 0, 15)
    Tab_Keyblind.Size = UDim2.new(0, 10, 0, 10)
    Tab_Keyblind.ZIndex = 2
    Tab_Keyblind.Image = "rbxassetid://7357603525"

    Tab_Frame_2.Parent =Tab_Keyblind
    Tab_Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
    Tab_Frame_2.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
    Tab_Frame_2.BorderSizePixel = 0
    Tab_Frame_2.Position = UDim2.new(0.5, 0, 0.5, 0)
    Tab_Frame_2.Size = UDim2.new(1, 8, 1, 8)

    Tab_UICorner.CornerRadius = UDim.new(0, 3)
    Tab_UICorner.Parent = Tab_Frame_2

    Tab_TextButton_2.Parent = Tab_Frame_2
    Tab_TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Tab_TextButton_2.BackgroundTransparency = 1.000
    Tab_TextButton_2.Size = UDim2.new(0.850000024, 0, 1, 0)
    Tab_TextButton_2.Font = Enum.Font.SourceSans
    Tab_TextButton_2.Text = ""
    Tab_TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
    Tab_TextButton_2.TextSize = 14.000

    Tab_UIListLayout.Parent = Tab_More
    Tab_UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    Tab_UIListLayout.Padding = UDim.new(0, 3)

    CloseButton.MouseButton1Click:Connect(function()
        tabalttoggle = not tabalttoggle
        if tabalttoggle then
            Body.Visible = true
            Tab.Size = old
            Close.Rotation = 0
        else
            old = Tab.Size
            Body.Visible = false
            Tab.Size = UDim2.new(0, 180, 0, 35)
            Close.Rotation = 180
        end
    end)

    function tabLib:CreateTab(args)
        -- {Name = "Name", CallBack = function}
        local TABFrame = Instance.new("Frame")
        local TABName = Instance.new("TextLabel")
        local More = Instance.new("ImageLabel")
        local TABTextButton = Instance.new("TextButton")
        local MoreButton = Instance.new("TextButton")
        local Keyblind = Instance.new("ImageLabel")
        local TextButton_2 = Instance.new("TextButton")
        local Frame_2 = Instance.new("Frame")
        local UICorner_2 = Instance.new("UICorner")
        local tabtoggle = args.Default or false
        local key = nil
        local TabApi = {}
        local Settings = {
            -- {Type = "Toggle", Name = "Name", CallBack = function}
        }
        self.order += 1

        TABFrame.Parent = Body -- main
        TABFrame.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
        TABFrame.BorderSizePixel = 0
        TABFrame.LayoutOrder = self.order
        TABFrame.Size = UDim2.new(1, 0, 0, 30)

        TABName.Name = "Name"
        TABName.Parent = TABFrame
        TABName.AnchorPoint = Vector2.new(0, 0.5)
        TABName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TABName.BackgroundTransparency = 1.000
        TABName.Position = UDim2.new(0, 10, 0.5, 0)
        TABName.Size = UDim2.new(1, 0, 1, 0)
        TABName.Font = Enum.Font.Ubuntu
        TABName.Text = args.Name
        TABName.TextColor3 = Color3.fromRGB(200, 200, 200)
        TABName.TextSize = 13.000
        TABName.TextXAlignment = Enum.TextXAlignment.Left

        More.Name = "More"
        More.Parent = TABFrame
        More.AnchorPoint = Vector2.new(0.5, 0.5)
        More.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        More.BackgroundTransparency = 1.000
        More.Position = UDim2.new(1, -15, 0, 15)
        More.Size = UDim2.new(0, 2, 0, 10)
        More.Image = "rbxassetid://7353408917"
        More.ImageColor3 = Color3.fromRGB(236, 236, 236)

        TABTextButton.Parent = TABFrame
        TABTextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TABTextButton.BackgroundTransparency = 1.000
        TABTextButton.Size = UDim2.new(0.7, 0, 1, 0)
        TABTextButton.Font = Enum.Font.SourceSans
        TABTextButton.Text = ""
        TABTextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
        TABTextButton.TextSize = 14.000

        MoreButton.Name = "MoreButton"
        MoreButton.Parent = TABFrame
        MoreButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        MoreButton.BackgroundTransparency = 1.000
        MoreButton.Position = UDim2.new(0.85, 0, 0, 0)
        MoreButton.Size = UDim2.new(0.15, 0, 1, 0)
        MoreButton.Font = Enum.Font.SourceSans
        MoreButton.Text = ""
        MoreButton.TextColor3 = Color3.fromRGB(0, 0, 0)
        MoreButton.TextSize = 14.000

        Keyblind.Name = "Keyblind"
        Keyblind.Parent = TABFrame
        Keyblind.AnchorPoint = Vector2.new(0.5, 0.5)
        Keyblind.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
        Keyblind.BackgroundTransparency = 1.000
        Keyblind.BorderSizePixel = 0
        Keyblind.Position = UDim2.new(1, -40, 0, 15)
        Keyblind.Size = UDim2.new(0, 10, 0, 10)
        Keyblind.Visible = false
        Keyblind.ZIndex = 2
        Keyblind.Image = "rbxassetid://7357603525"

        Frame_2.Parent = Keyblind
        Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
        Frame_2.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
        Frame_2.BackgroundTransparency = 0.3
        Frame_2.BorderSizePixel = 0
        Frame_2.Position = UDim2.new(0.5, 0, 0.5, 0)
        Frame_2.Size = UDim2.new(1, 8, 1, 8)

        TextButton_2.Parent = Frame_2
        TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_2.BackgroundTransparency = 1.000
        TextButton_2.Size = UDim2.new(0.850000024, 0, 1, 0)
        TextButton_2.Font = Enum.Font.SourceSans
        TextButton_2.Text = ""
        TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton_2.TextSize = 14.000

        UICorner_2.CornerRadius = UDim.new(0, 3)
        UICorner_2.Parent = Frame_2

        Body.Size = Body.Size + UDim2.new(0, 0, 0, 30)
        Tab.Size = Tab.Size + UDim2.new(0, 0, 0, 30)

        args.CallBack = (typeof(args.CallBack) == "function") and args.CallBack or function() end

        local function ToggleHERE()
            if tabtoggle then
                TABFrame.BackgroundColor3 = Color3.fromRGB(5, 133, 104)
            else
                TABFrame.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
            end
            args.CallBack(tabtoggle)
        end

        if tabtoggle then
            ToggleHERE()
        end

        TABTextButton.MouseButton1Click:Connect(function()
            tabtoggle = not tabtoggle
            ToggleHERE()
        end)

        TABFrame.MouseEnter:Connect(function()
            Keyblind.Visible = true

            if tabtoggle then return end
            TABFrame.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
            TABName.TextColor3 = Color3.fromRGB(255, 255, 255)
        end)

        TABFrame.MouseLeave:Connect(function()
            if not key then
                Keyblind.Visible = false
            end

            if tabtoggle then return end
            TABFrame.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
            TABName.TextColor3 = Color3.fromRGB(200, 200, 200)
        end)

        TextButton_2.MouseEnter:Connect(function()
            Keyblind.Image = "rbxassetid://7357577774"
        end)

        TextButton_2.MouseLeave:Connect(function()
            Keyblind.Image = "rbxassetid://7357603525"
        end)

        -- Setting Part

        local function MakeToggleGui(name, callback, Default, pos)
            local Tab_Toggle = Instance.new("Frame")
            local Tab_TextButton_3 = Instance.new("TextButton")
            local Tab_Name_2 = Instance.new("TextLabel")
            local Tab_Frame_3 = Instance.new("Frame")
            local Tab_UICorner_2 = Instance.new("UICorner")
            local Tab_Frame_4 = Instance.new("Frame")
            local Tab_UICorner_3 = Instance.new("UICorner")
            local Toggle_toggle = Default or false

            Tab_Toggle.Name = "Toggle"
            Tab_Toggle.Parent = Tab_More
            Tab_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Tab_Toggle.BackgroundTransparency = 1.000
            Tab_Toggle.BorderSizePixel = 0
            Tab_Toggle.LayoutOrder = pos
            Tab_Toggle.Size = UDim2.new(1, 0, 0, 20)

            Tab_Name_2.Name = "Name"
            Tab_Name_2.Parent = Tab_Toggle
            Tab_Name_2.AnchorPoint = Vector2.new(0, 0.5)
            Tab_Name_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Tab_Name_2.BackgroundTransparency = 1.000
            Tab_Name_2.Position = UDim2.new(0, 10, 0.5, 0)
            Tab_Name_2.Size = UDim2.new(1, 0, 0.899999976, 0)
            Tab_Name_2.Font = Enum.Font.Ubuntu
            Tab_Name_2.Text = name
            Tab_Name_2.TextColor3 = Color3.fromRGB(255, 255, 255)
            Tab_Name_2.TextSize = 10.000
            Tab_Name_2.TextXAlignment = Enum.TextXAlignment.Left

            Tab_Frame_3.Parent = Tab_Toggle
            Tab_Frame_3.AnchorPoint = Vector2.new(0, 0.5)
            Tab_Frame_3.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
            Tab_Frame_3.Position = UDim2.new(0.8, 0, 0.5, 0)
            Tab_Frame_3.Size = UDim2.new(0, 23, 0, 10)

            Tab_TextButton_3.Parent = Tab_Frame_3
            Tab_TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Tab_TextButton_3.BackgroundTransparency = 1.000
            Tab_TextButton_3.Size = UDim2.new(1, 0, 1, 0)
            Tab_TextButton_3.Text = ""
            Tab_TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
            Tab_TextButton_3.TextSize = 14.000

            Tab_UICorner_2.Parent = Tab_Frame_3

            Tab_Frame_4.Parent = Tab_Frame_3
            Tab_Frame_4.AnchorPoint = Vector2.new(0.5, 0.5)
            Tab_Frame_4.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
            Tab_Frame_4.Position = UDim2.new(0.2, 0, 0.5, 0)
            Tab_Frame_4.Size = UDim2.new(0, 8, 0, 8)

            Tab_UICorner_3.CornerRadius = UDim.new(1, 0)
            Tab_UICorner_3.Parent = Tab_Frame_4

            Tab.Size = Tab.Size + UDim2.new(0, 0, 0, 20)
            Tab_More.Size = Tab_More.Size + UDim2.new(0, 0, 0, 20)

            callback = (typeof(callback) == "function") and callback or function() end

            local function toggleHERE()
                Settings[pos - 1] = {
                    Type = "Toggle",
                    Name = args.Name,
                    CallBack = args.CallBack,
                    Default = Toggle_toggle
                }
                if Toggle_toggle then
                    Tab_Frame_3.BackgroundColor3 = Color3.fromRGB(5, 133, 104)
                    TweenService:Create(Tab_Frame_4, TweenInfo.new(0.3), {Position = UDim2.new(0.8, 0, 0.5, 0)}):Play()
                else
                    Tab_Frame_3.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
                    TweenService:Create(Tab_Frame_4, TweenInfo.new(0.3), {Position = UDim2.new(0.2, 0, 0.5, 0)}):Play()
                end
                callback(Toggle_toggle)
            end

            if Toggle_toggle then
                toggleHERE()
            end

            Tab_TextButton_3.MouseButton1Click:Connect(function()
                Toggle_toggle = not Toggle_toggle
                toggleHERE()
            end)
        end

        local oldSize = {
            Tab = nil,
            Tab_More = nil
        }
        local function ToggleSetting()
            SetingToggle = not SetingToggle

            for i,v in next, Tab_More:GetChildren() do
                if v.Name ~= "Frame" and v.Name ~= "UIListLayout" then
                    v:Destroy()
                end
            end

            Tab_Name.Text = args.Name
            if SetingToggle then
                NowName = args.Name
                oldSize.Tab = Tab.Size
                oldSize.Tab_More = Tab_More.Size
                Tab.Size = UDim2.new(0, 180, 0, 75)
                Tab_More.Size = UDim2.new(0, 180, 0, 35)
                for i,v in next, Settings do
                    MakeToggleGui(v.Name, v.CallBack, v.Default, i + 1)
                end
                TABIcon.Image = "rbxassetid://7395605756"
                Body.Visible = false
                Tab_More.Visible = true
                BackButton.Visible = true
                CloseButton.Visible = false
                Close.Visible = false
            else
                NowName = nil
                Tab.Size = oldSize.Tab
                Tab_More.Size = oldSize.Tab_More
                TABIcon.Image = icon
                Body.Visible = true
                Tab_More.Visible = false
                BackButton.Visible = false
                CloseButton.Visible = true
                Close.Visible = true
            end
        end

        Tab_MoreButton.MouseButton1Click:Connect(function()
            if NowName ~= args.Name then return end
            ToggleSetting()
        end)

        MoreButton.MouseButton1Click:Connect(function()
            ToggleSetting()
        end)

        TABTextButton.MouseButton2Click:Connect(function()
            ToggleSetting()
        end)

        BackButton.MouseButton1Click:Connect(function()
            if NowName ~= args.Name then return end
            ToggleSetting()
        end)

        Tab_TextButton_2.MouseEnter:Connect(function()
            Tab_Keyblind.Image = "rbxassetid://7357577774"
        end)

        Tab_TextButton_2.MouseLeave:Connect(function()
            Tab_Keyblind.Image = "rbxassetid://7357603525"
        end)

        function TabApi:CreateToggle(args)
            table.insert(Settings, #Settings + 1, {
                Type = "Toggle",
                Name = args.Name,
                CallBack = args.CallBack,
                Default = args.Default
            })
        end

        return TabApi

    end

    draggui(Tab)

    tabLib.order = 0
    return tabLib
end

function uiLib:AddTab2(text)
    local Frame_3 = Instance.new("Frame")
    local Name_3 = Instance.new("TextLabel")
    local Arrow_3 = Instance.new("ImageLabel")
    local TextButton_3 = Instance.new("TextButton")
    local toggle = false
    self.tab += 1

    Frame_3.Parent = self.Body
    Frame_3.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
    Frame_3.BorderSizePixel = 0
    Frame_3.LayoutOrder = self.tab
    Frame_3.Size = UDim2.new(1, 0, 0, 30)

    Name_3.Name = "Name"
    Name_3.Parent = Frame_3
    Name_3.AnchorPoint = Vector2.new(0, 0.5)
    Name_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Name_3.BackgroundTransparency = 1.000
    Name_3.Position = UDim2.new(0, 10, 0.5, 0)
    Name_3.Size = UDim2.new(1, 0, 1, 0)
    Name_3.Font = Enum.Font.Ubuntu
    Name_3.Text = text
    Name_3.TextColor3 = Color3.fromRGB(200, 200, 200)
    Name_3.TextSize = 13.000
    Name_3.TextXAlignment = Enum.TextXAlignment.Left

    Arrow_3.Name = "Arrow"
    Arrow_3.Parent = Frame_3
    Arrow_3.AnchorPoint = Vector2.new(0.5, 0.5)
    Arrow_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Arrow_3.BackgroundTransparency = 1.000
    Arrow_3.Position = UDim2.new(1, -20, 0, 15)
    Arrow_3.Size = UDim2.new(0, 4, 0, 8)
    Arrow_3.Image = "rbxassetid://7343755311"
    Arrow_3.ImageColor3 = Color3.fromRGB(236, 236, 236)

    TextButton_3.Parent = Frame_3
    TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextButton_3.BackgroundTransparency = 1.000
    TextButton_3.Size = UDim2.new(1, 0, 1, 0)
    TextButton_3.Font = Enum.Font.SourceSans
    TextButton_3.Text = ""
    TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton_3.TextSize = 14.000

    self.Body.Size = self.Body.Size + UDim2.new(0, 0, 0, 30)
    self.Main.Size = self.Main.Size + UDim2.new(0, 0, 0, 30)

    TextButton_3.MouseButton1Click:Connect(function()
        toggle = not toggle
        if toggle then
            Name_3.TextColor3 = Color3.fromRGB(5, 133, 104)
            TweenService:Create(Arrow_3, TweenInfo.new(0.2), {Position = UDim2.new(1, -13, 0, 15)}):Play()
        else
            Name_3.TextColor3 = Color3.fromRGB(200, 200, 200)
            TweenService:Create(Arrow_3, TweenInfo.new(0.2), {Position = UDim2.new(1, -20, 0, 15)}):Play()
        end
    end)

    Frame_3.MouseEnter:Connect(function()
        if toggle then return end
        Frame_3.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
        Name_3.TextColor3 = Color3.fromRGB(255, 255, 255)
    end)

    Frame_3.MouseLeave:Connect(function()
        if toggle then return end
        Frame_3.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
        Name_3.TextColor3 = Color3.fromRGB(200, 200, 200)
    end)
end

function uiLib:AddText(text)
    local Text = Instance.new("Frame")
    local TextLabel = Instance.new("TextLabel")
    self.tab += 1

    Text.Name = "Text"
    Text.Parent = self.Body
    Text.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
    Text.BorderSizePixel = 0
    Text.LayoutOrder = self.tab
    Text.Size = UDim2.new(1, 0, 0, 20)

    TextLabel.Parent = Text
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.Position = UDim2.new(0, 8, 0, 0)
    TextLabel.Size = UDim2.new(1, 0, 1, 0)
    TextLabel.Font = Enum.Font.Ubuntu
    TextLabel.Text = text
    TextLabel.TextColor3 = Color3.fromRGB(94, 94, 94)
    TextLabel.TextSize = 9.000
    TextLabel.TextXAlignment = Enum.TextXAlignment.Left

    self.Body.Size = self.Body.Size + UDim2.new(0, 0, 0, 20)
    self.Main.Size = self.Main.Size + UDim2.new(0, 0, 0, 20)
end

function uiLib:AddLine()
    local Line_2 = Instance.new("Frame")
    self.tab += 1

    Line_2.Name = "Line"
    Line_2.Parent = self.Body
    Line_2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    Line_2.BorderSizePixel = 0
    Line_2.LayoutOrder = self.tab
    Line_2.Position = UDim2.new(-0, 0, 0, 31)
    Line_2.Size = UDim2.new(1, 0, 0, 1)

    self.Body.Size = self.Body.Size + UDim2.new(0, 0, 0, 1)
    self.Main.Size = self.Main.Size + UDim2.new(0, 0, 0, 1)
end

function uiLib:Load()
    local toggle = false
    self.Main.Size = self.Main.Size + UDim2.new(0, 0, 0, 2)
    self.ScreenGui.Name = game:GetService("HttpService"):GenerateGUID(false)
    self.ScreenGui.DisplayOrder = 999

    -- for i,v in next, self.ScreenGui:GetDescendants() do
    --     v.Name = game:GetService("HttpService"):GenerateGUID(false)
    -- end

    UserInputService.InputBegan:Connect(function(input)
        if self.Destroied then return end
        if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.RightShift then
            toggle = not toggle
            if toggle then
                self.Blur.Enabled = true
                self.ScreenGui.Parent = game:GetService("CoreGui").RobloxGui
            else
                self.Blur.Enabled = false
                self.ScreenGui.Parent = nil
            end
        end
        
        for i,v in next, keyblinds do
            if input.KeyCode == v.Key then
                v.CallBack()
            end
        end
    end)
end

function uiLib.GetKeyBlinds()
    return keyblinds
end

function uiLib:Destroy()
    self.Destroied = true
    self.ScreenGui:Destroy()
    self.Blur:Destroy()
end

return uiLib

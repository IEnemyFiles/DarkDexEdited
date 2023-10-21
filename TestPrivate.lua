local PrivateServer = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Generate = Instance.new("TextButton")
local TextBox = Instance.new("TextBox")
PrivateServer.Name = "PrivateServer"
PrivateServer.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Frame.Parent = PrivateServer
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.371240616, 0, 0.400000006, 0)
Frame.Size = UDim2.new(0, 273, 0, 81)
Frame.Visible = false
Generate.Name = "Generate"
Generate.Parent = Frame
Generate.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Generate.BorderColor3 = Color3.fromRGB(0, 0, 0)
Generate.BorderSizePixel = 0
Generate.Position = UDim2.new(0.00192797312, 0, 0.571542621, 0)
Generate.Size = UDim2.new(0, 272, 0, 34)
Generate.Font = Enum.Font.SourceSans
Generate.Text = "Generate"
Generate.TextColor3 = Color3.fromRGB(255, 0, 4)
Generate.TextSize = 14.000
TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(-0.000891605159, 0, -0.00773658277, 0)
TextBox.Size = UDim2.new(0, 272, 0, 38)
TextBox.Font = Enum.Font.SourceSans
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(36, 0, 217)
TextBox.TextSize = 14.000

local function NgeweScript1() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)
	local player = game.Players.LocalPlayer
	local gui = player.PlayerGui.PrivateServer  -- Replace 'YourScreenGuiName' with the name of your ScreenGui
	local frame = gui.Frame  -- Replace 'Frame' with the name of your Frame
	local UserInputService = game:GetService("UserInputService")
	local function Guis()
		frame.Visible = not frame.Visible -- Toggle visibility between true and false
	end
	UserInputService.InputBegan:Connect(function(input, processed)
		if not processed and input.KeyCode == Enum.KeyCode.LeftControl then
			Guis()
		end
	end)
	
end
coroutine.wrap(NgeweScript1)()
local function NgeweScript() -- Generate.LocalScript 
	local script = Instance.new('LocalScript', Generate)

	local plr = game.Players.LocalPlayer
	local gui = plr.PlayerGui.ScreenGui
	local txt = gui.Frame.TextBox
	
	local function GenerateCodes()
		local characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
		local code = ""
		for _ = 1, 32 do -- You can customize the length of the code
			local randomIndex = math.random(1, #characters)
			code = code .. string.sub(characters, randomIndex, randomIndex)
		end
		return code
	end
	
	local function onPlayerAdded()
		local GenPrivateServerCode = GenerateCodes()
		txt.Text = "Your Private Server Code: " .. GenPrivateServerCode
		print(code)
	end
	
	game.Players.PlayerAdded:Connect(onPlayerAdded)
end
coroutine.wrap(NgeweScript)()

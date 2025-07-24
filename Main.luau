-- LocalScript para StarterPlayerScripts

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRoot = character:WaitForChild("HumanoidRootPart")
local UIS = game:GetService("UserInputService")

local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "MobileExploitUI"
gui.ResetOnSpawn = false

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0.3, 0, 0.35, 0)
frame.Position = UDim2.new(0.35, 0, 0.3, 0)
frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
frame.BorderColor3 = Color3.fromRGB(0, 255, 0)
frame.BorderSizePixel = 2

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, 0, 0.2, 0)
title.Text = "ROUBE UM BRAINROT"
title.BackgroundTransparency = 1
title.TextColor3 = Color3.fromRGB(0, 255, 0)
title.Font = Enum.Font.Arcade
title.TextScaled = true

-- Botões
local flyBtn = Instance.new("TextButton", frame)
flyBtn.Size = UDim2.new(0.8, 0, 0.2, 0)
flyBtn.Position = UDim2.new(0.1, 0, 0.3, 0)
flyBtn.Text = "🛸 Fly"
flyBtn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
flyBtn.TextColor3 = Color3.fromRGB(0, 255, 0)
flyBtn.Font = Enum.Font.SourceSansBold
flyBtn.TextScaled = true

local wallBtn = Instance.new("TextButton", frame)
wallBtn.Size = UDim2.new(0.8, 0, 0.2, 0)
wallBtn.Position = UDim2.new(0.1, 0, 0.55, 0)
wallBtn.Text = "🧱 WallHack"
wallBtn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
wallBtn.TextColor3 = Color3.fromRGB(0, 255, 0)
wallBtn.Font = Enum.Font.SourceSansBold
wallBtn.TextScaled = true

local status = Instance.new("TextLabel", frame)
status.Size = UDim2.new(1, 0, 0.15, 0)
status.Position = UDim2.new(0, 0, 0.83, 0)
status.BackgroundTransparency = 1
status.TextColor3 = Color3.fromRGB(0, 255, 0)
status.Text = "Toque em um botão!"
status.Font = Enum.Font.Code
status.TextScaled = true

local avisoMostrado = false

local function mostrarAviso()
	if not avisoMostrado then
		avisoMostrado = true
		wait(2)
		status.Text = "Atenção: Apenas Fly e WallHack funcionam."
		wait(2.5)
		status.Text = "Em breve novas atualizações!"
	end
end

-- Fly
local flying = false
local bv = nil

flyBtn.MouseButton1Click:Connect(function()
	if flying then
		flying = false
		if bv then bv:Destroy() end
		status.Text = "Voo desativado."
	else
		flying = true
		bv = Instance.new("BodyVelocity", humanoidRoot)
		bv.MaxForce = Vector3.new(1e5, 1e5, 1e5)
		bv.Velocity = Vector3.new(0, 50, 0)
		status.Text = "Voando..."
	end
	mostrarAviso()
end)

-- Wallhack (noclip)
local noclip = false
game:GetService("RunService").Stepped:Connect(function()
	if noclip then
		for _, part in pairs(character:GetDescendants()) do
			if part:IsA("BasePart") then
				part.CanCollide = false
			end
		end
	end
end)

wallBtn.MouseButton1Click:Connect(function()
	noclip = not noclip
	if noclip then
		status.Text = "Atravessando paredes!"
	else
		status.Text = "Colisão restaurada."
	end
	mostrarAviso()
end)

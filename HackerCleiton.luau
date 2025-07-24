
-- Brainrot Stealer Hub (Falso Exploit Visual)

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Criar GUI principal
local gui = Instance.new("ScreenGui", LocalPlayer:WaitForChild("PlayerGui"))
gui.Name = "BrainrotStealerHub"

-- Botão de abrir
local openButton = Instance.new("TextButton")
openButton.Size = UDim2.new(0, 160, 0, 40)
openButton.Position = UDim2.new(0, 20, 0.5, -20)
openButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
openButton.TextColor3 = Color3.new(1, 1, 1)
openButton.Text = "⚙️ Abrir"
openButton.Parent = gui

-- Janela principal
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 400, 0, 300)
mainFrame.Position = UDim2.new(0.5, -200, 0.5, -150)
mainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
mainFrame.Visible = false
mainFrame.Parent = gui

local uicorner = Instance.new("UICorner", mainFrame)
uicorner.CornerRadius = UDim.new(0, 8)

-- Botão de fechar
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -35, 0, 5)
closeButton.BackgroundColor3 = Color3.fromRGB(30, 0, 0)
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.Text = "X"
closeButton.Parent = mainFrame

-- Título
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -40, 0, 30)
title.Position = UDim2.new(0, 10, 0, 5)
title.BackgroundTransparency = 1
title.TextColor3 = Color3.new(1, 1, 1)
title.Text = "🧠 Brainrot Hub"
title.Font = Enum.Font.GothamBold
title.TextSize = 18
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = mainFrame

-- Aba falsa de "roubar brainrot"
local stealButton = Instance.new("TextButton")
stealButton.Size = UDim2.new(0, 180, 0, 40)
stealButton.Position = UDim2.new(0, 20, 0, 60)
stealButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
stealButton.TextColor3 = Color3.new(1, 1, 1)
stealButton.Text = "🚨 Steal Brainrot"
stealButton.Parent = mainFrame

-- Mensagem final
local statusLabel = Instance.new("TextLabel")
statusLabel.Size = UDim2.new(1, -40, 0, 30)
statusLabel.Position = UDim2.new(0, 20, 1, -40)
statusLabel.BackgroundTransparency = 1
statusLabel.TextColor3 = Color3.new(1, 1, 1)
statusLabel.Text = ""
statusLabel.TextScaled = true
statusLabel.Parent = mainFrame

-- Funções
openButton.MouseButton1Click:Connect(function()
    mainFrame.Visible = true
end)

closeButton.MouseButton1Click:Connect(function()
    mainFrame.Visible = false
end)

stealButton.MouseButton1Click:Connect(function()
    statusLabel.Text = "✅ Brainrot roubado com sucesso! (simulado)"
end)

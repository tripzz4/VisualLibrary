-- // Services
local CoreGui = game:GetService('CoreGui')

-- // Imports
local Tween = Import('UI/Functions/Tween.lua')

local ToggleUIHandler = {}

function ToggleUIHandler.ToggleUI()
    if CoreGui:FindFirstChild('VisualAnalyser').Base.Visible then
        local Base = CoreGui:FindFirstChild('VisualAnalyser').Base
        local OpenButton = CoreGui:FindFirstChild('VisualAnalyser').OpenButton
        Tween(OpenButton, {BackgroundTransparency = 0}, 0.25)
        Tween(OpenButton, {ImageTransparency = 0}, 0.25)
        OpenButton.OpenButtonBaseStroke.Thickness = 1
        Tween(Base, {Size = UDim2.new(0, 0, 0, 0)}, 0.25)
    else
        local Base = CoreGui:FindFirstChild('VisualAnalyser').Base
        local OpenButton = CoreGui:FindFirstChild('VisualAnalyser').OpenButton
        Tween(OpenButton, {BackgroundTransparency = 1}, 0.25)
        Tween(OpenButton, {ImageTransparency = 1}, 0.25)
        OpenButton.OpenButtonBaseStroke.Thickness = 0
        Tween(Base, {Size = UDim2.new(0, 650, 0, 375)}, 0.25)
    end
end

return ToggleUIHandler.ToggleUI()
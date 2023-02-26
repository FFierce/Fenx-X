local isFlying = false
local camera = workspace.CurrentCamera
local char = game.Players.LocalPlayer.Character
local hrp = char:WaitForChild("HumanoidRootPart")

local bodyPos = Instance.new("BodyPosition")
bodyPos.MaxForce = Vector3.new()
bodyPos.D = 10
bodyPos.P = 100
bodyPos.Parent = hrp

local bodyGyro = Instance.new("BodyGyro")
bodyGyro.MaxTorque = Vector3.new()
bodyGyro.D = 10
bodyGyro.Parent = hrp

script.Parent.MouseButton1Click:Connect(function()
	isFlying = not isFlying
end)


game:GetService("RunService").RenderStepped:Connect(function()
	if isFlying then
		bodyPos.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
		bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
		bodyPos.Position = hrp.Position +((hrp.Position - camera.CFrame.Position).Unit * 10)
		bodyGyro.CFrame = CFrame.new(camera.CFrame.Position, hrp.Position)
	else
		bodyPos.MaxForce = Vector3.new()
		bodyGyro.MaxTorque = Vector3.new()
	end
end)

local ContextActionService = game:GetService('ContextActionService')
local ReplicatedStorage = game:GetService('ReplicatedStorage')

local function open_case(action_name)
    if not ReplicatedStorage.Remotes then
        return
    end

    local case_type = action_name

    ReplicatedStorage.Remotes.Store:WaitForChild(`RequestOpen{case_type}Box`):InvokeServer()
end

ContextActionService:BindAction('Sword', open_case, true, Enum.KeyCode.X)
ContextActionService:BindAction('Explosion', open_case, true, Enum.KeyCode.V)

local rocket = script.Parent

-- Function to fire the rocket
function fireRocket(targetPos)
    -- Set the rocket's velocity towards the target position
    rocket.Velocity = (targetPos - rocket.Position).Unit * 100
    
    -- Destroy the rocket after a few seconds
    wait(3)
    rocket:Destroy()
end

-- Detect when the launcher part is clicked
rocket.Parent.MouseButton1Click:Connect(function()
    -- Get the position of the mouse click
    local mouseHit = game:GetService("Players").LocalPlayer:GetMouse().Hit
    
    -- Fire the rocket towards the mouse click position
    fireRocket(mouseHit)
end)
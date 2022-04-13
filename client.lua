-- Made by KSV [https://github.com/ohksv]
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0) -- Waits Every Tick

-- Managing the Traffic, as well as Ped Density. (BOTH MUST RUN EVERY TICK)
        SetTrafficDensity(0.0) -- (Vehicle Density) 0.0 is none, and 1.0 is the max.
        SetPedDensity(0.0) -- (Ped Density) 0.0 is none, and 1.0 is the max.
    end
end)

-- IGNORE, DO NOT EDIT
-- Vehicle Density
function SetTrafficDensity(density)
    SetParkedVehicleDensityMultiplierThisFrame(density)
    SetVehicleDensityMultiplierThisFrame(density)
    SetRandomVehicleDensityMultiplierThisFrame(density)
end

-- Ped Density
function SetPedDensity(density)
    SetPedDensityMultiplierThisFrame(density)
    SetScenarioPedDensityMultiplierThisFrame(density)
end

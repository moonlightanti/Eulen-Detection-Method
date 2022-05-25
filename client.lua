local Eulenshale = false

CreateThread(function()
    print("Checking Client for Executors")
    while true do
        Wait(1500)
        if Config.AntiEulen == true then
            Eulenshale = true
            break
        end
    end
end)

Citizen.CreateThread(function() 
    Wait(5000)
    if clientconfig.AntiEulen then
        if Eulenshale then return print(" ^2Eulen has NOT been detected^0") end
        print(" ^1Eulen has been detected^0")
        YOURBANTRIGGER
    end
end)

Citizen.CreateThread(function()



    local temperatureneon = 25

    while true do

        local ped = GetPlayerPed(-1)

        local car = GetVehiclePedIsIn(ped)

        local speed = GetEntitySpeed(car) * 2.2369

        local merge = GetIsVehicleEngineRunning(car)

        

        if GetPedInVehicleSeat(car,-1)== ped then

        	local RPM = GetVehicleCurrentRpm(car)

        	local viata = GetVehicleEngineHealth(car) 

        	if merge == false and temperatureneon >= 10 then

        		mate = 0

        		mate2 = math.random(20,25)

        		temperatureneon = temperatureneon - mate2 / 1000

	        elseif temperatureneon < 85 then

	            mate = math.random(1,2)

	            mate2 = math.random(1,2)

	            temperatureneon = temperatureneon + mate / 100

	            --temperatureneon = temperatureneon + mate / 100

	        elseif temperatureneon > 84 and temperatureneon < 86 then

	            temperatureneon = temperatureneon + 1 

	        elseif temperatureneon < 105 then

	            mate = math.random(1,3)

	            mate2 = math.random(1,5)

	        elseif temperatureneon < 115 then

	            mate = math.random(1,3)

	            mate2 = math.random(2,10)

	        elseif temperatureneon < 120 then

	            mate = math.random(1,2)

	            mate2 = math.random(5,15)

	        elseif temperatureneon < 130 then

	            mate = math.random(1,4)

	            mate2 = math.random(10,15)

	        elseif temperatureneon < 145 then

	            mate = math.random(1,4)

	            mate2 = math.random(12,17)

	        elseif viata < 365 then

	            mate = math.random(5000,15000)

	            mate2 = math.random(15,20)

	        end

	        if car ~= 0 then

	            if speed > 100 then

	                temperatureneon = temperatureneon + mate / 1000                

	            end

	            if speed > 75 and speed < 100 then

	                if math.random(1,2) == 1 then

	                   temperatureneon = temperatureneon + mate / 1000

	                        

	                elseif temperatureneon ~= nill then

	                    if temperatureneon > 50 then

	                        temperatureneon = temperatureneon - mate2 / 1000

	                    end

	            

	                end

	            end


	            temperatureneon2 = temperatureneon + 50

	        else

	            temperatureneon = 24

	        end

	        if RPM > 0.92 then

	            temperatureneon = temperatureneon + 5 / 1000

	        elseif viata < 550 and speed > 40 then

	            SetVehicleEngineHealth(car, viata - 1 / 1400)

	        elseif temperatureneon > 125 and temperatureneon < 130 then --de la 125 grade motorul incepe sa se strice

	            SetVehicleEngineHealth(car, viata - 1 / 1450)

	        elseif temperatureneon > 130 and temperatureneon < 135 then --130 grade motorul se strica m ai rau decat la 125

	            SetVehicleEngineHealth(car, viata - 1 / 750)

	        elseif temperatureneon > 135 and temperatureneon < 155 then --135 grade motorul se strica m ai rau decat la 130

	            SetVehicleEngineHealth(car, viata - 1 / 400)

	        elseif temperatureneon > 155 and temperatureneon < 99999 then --155 grade motorul se strica m ai rau decat la 155

	            SetVehicleEngineHealth(car, viata - 15) 

	        end

	        if temperatureneon < 85 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 0, 255, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 86 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 0, 255, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 87 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 0, 255, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 88 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 0, 255, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 89 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 0, 255, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 90 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 0, 255, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 91 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 05, 255, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 92 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 05, 255, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 93 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 05, 255, 0, 255, 0.205, 0.9)    

	        elseif temperatureneon < 94 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 05, 255, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 95 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 15, 255, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 96 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 25, 255, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 97 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 35, 255, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 98 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 45, 255, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 99 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 55, 255, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 100 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 65, 255, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 101 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 75, 255, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 102 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 85, 255, 0, 255, 0.205, 0.9)    

	        elseif temperatureneon < 103 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 95, 255, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 104 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 105, 255, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 115 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 115, 255, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 116 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 125, 255, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 107 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 135, 255, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 108 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 145, 255, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 109 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 155, 255, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 110 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 160, 255, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 111 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 170, 240, 0, 255, 0.205, 0.9)  

	        elseif temperatureneon < 112 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 180, 230, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 113 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 190, 220, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 114 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 200, 210, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 115 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 210, 200, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 116 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 220, 190, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 117 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 230, 180, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 118 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 240, 170, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 119 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 255, 160, 0, 255, 0.205, 0.9)    

	        elseif temperatureneon < 120 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 255, 150, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 121 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 255, 140, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 122 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 255, 130, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 123 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 255, 120, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 124 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 255, 110, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 125 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 255, 100, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 126 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 255, 90, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 127 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 255, 80, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 128 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 255, 70, 0, 255, 0.205, 0.9)    

	        elseif temperatureneon < 129 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 255, 60, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 130 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 255, 50, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 131 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 255, 40, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 132 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 255, 30, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 133 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 255, 20, 0, 255, 0.205, 0.9)

	        elseif temperatureneon < 134 then

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 255, 10, 0, 255, 0.205, 0.9)

	        else

	            displayText(" Temperatura: " .. math.floor(temperatureneon+0.1), 0, 255, 0, 0, 255, 0.205, 0.9)

	        end

	    else

	    	temperatureneon = 24

	   	end

        Citizen.Wait(1)

    end

end)


--Display temperatura\/

function displayText(text, justification, red, green, blue, alpha, posx, posy)

    SetTextFont(1)

    SetTextWrap(0.0, 1.0)

    SetTextScale(0.4, 0.4)

    SetTextJustification(justification)

    SetTextColour(red, green, blue, alpha)

    SetTextOutline()



    BeginTextCommandDisplayText("STRING")

    AddTextComponentSubstringPlayerName(text)

    EndTextCommandDisplayText(0.50, 0.975)

end


Citizen.CreateThread( function()
	
	while true do
	Wait(12)
	
	
	local ped = GetPlayerPed(-1)
	local vehicle = GetVehiclePedIsIn(ped, false)
	local driver = GetPedInVehicleSeat(vehicle, -1)
	
	
			
	
	
	
	if IsPedInAnyVehicle(ped) then	
			
			
			
			if driver == ped and IsVehicleOnAllWheels(vehicle) then
			
				local GetHandlingfInitialDragCoeff = GetVehicleHandlingFloat(vehicle, "CHandlingData", "fInitialDragCoeff")
				local GetHandlingfDriveBiasFront = GetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fDriveBiasFront')
				local GetHandlingfSteeringLock = GetVehicleHandlingFloat(vehicle, "CHandlingData", "fSteeringLock")
				local GetHandlingfTractionCurveMax = GetVehicleHandlingFloat(vehicle, "CHandlingData", "fTractionCurveMax")
				local GetHandlingfTractionCurveMin = GetVehicleHandlingFloat(vehicle, "CHandlingData", "fTractionCurveMin")
				local GetHandlingfTractionCurveLateral = GetVehicleHandlingFloat(vehicle, "CHandlingData", "fTractionCurveLateral")
				local GetHandlingfLowSpeedTractionLossMult = GetVehicleHandlingFloat(vehicle, "CHandlingData", "fLowSpeedTractionLossMult")
				if GetHandlingfInitialDragCoeff >= 50.0 then
					displayText1("ESC Off ", 0, 255, 0, 0, 255, 0.205, 1)
				else
					displayText1("ESC on ", 0, 4, 255, 0, 0.1, 1)
				end

			
				if IsControlJustReleased(0, 21) and ((GetVehicleClass(vehicle) == 0) or (GetVehicleClass(vehicle) == 1) or (GetVehicleClass(vehicle) == 2) or (GetVehicleClass(vehicle) == 3) or (GetVehicleClass(vehicle) == 4) or (GetVehicleClass(vehicle) == 5) or (GetVehicleClass(vehicle) == 6) or (GetVehicleClass(vehicle) == 7) or (GetVehicleClass(vehicle) == 9)) then
			
					if GetHandlingfInitialDragCoeff >= 50.0 then
						DriftOff()
					else
						DriftOn()
					end
				
			end	
			end
		else
		
		
		end
	end
	Wait(0)
end)

function DriftOff()
				local ped = GetPlayerPed(-1)
				local vehicle = GetVehiclePedIsIn(ped, false)
					
				local removeFromfInitialDragCoeff = (GetVehicleHandlingFloat(vehicle, "CHandlingData", "fInitialDragCoeff")-90.22)
				local removeFromfDriveInertia = (GetVehicleHandlingFloat(vehicle, "CHandlingData", 'fDriveInertia')-0.31)
				local removeFromfSteeringLock = (GetVehicleHandlingFloat(vehicle, "CHandlingData", "fSteeringLock")-22.0)
				local removeFromfTractionCurveMax = (GetVehicleHandlingFloat(vehicle, "CHandlingData", "fTractionCurveMax")+1.1)
				local removeFromfTractionCurveMin = (GetVehicleHandlingFloat(vehicle, "CHandlingData", "fTractionCurveMin")+0.4)
				local removeFromfTractionCurveLateral = (GetVehicleHandlingFloat(vehicle, "CHandlingData", "fTractionCurveLateral")-2.5)
				local removeFromfLowSpeedTractionLossMult = (GetVehicleHandlingFloat(vehicle, "CHandlingData", "fLowSpeedTractionLossMult")+0.57)
				local currentEngineMod = GetVehicleMod(vehicle, 11)
	
					
					SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fInitialDragCoeff', removeFromfInitialDragCoeff)
					--SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fDriveBiasFront', originalfDriveBiasFront)
					SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fDriveInertia', removeFromfDriveInertia)
					SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fSteeringLock', removeFromfSteeringLock)
					SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fTractionCurveMax', removeFromfTractionCurveMax)
					SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fTractionCurveMin', removeFromfTractionCurveMin)
					SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fTractionCurveLateral', removeFromfTractionCurveLateral)
					SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fLowSpeedTractionLossMult', removeFromfLowSpeedTractionLossMult)
					SetVehicleEnginePowerMultiplier(vehicle, 0.0)					
					SetVehicleModKit(vehicle, 0)
					SetVehicleMod(vehicle, 11, currentEngineMod, true) 
					print(GetVehicleHandlingFloat(vehicle, "CHandlingData", "fInitialDragCoeff"))
					print(GetVehicleHandlingFloat(vehicle, "CHandlingData", 'fDriveInertia'))
					print(GetVehicleHandlingFloat(vehicle, "CHandlingData", "fSteeringLock"))
					print(GetVehicleHandlingFloat(vehicle, "CHandlingData", "fTractionCurveMax"))
					print(GetVehicleHandlingFloat(vehicle, "CHandlingData", "fTractionCurveMin"))
					print(GetVehicleHandlingFloat(vehicle, "CHandlingData", "fTractionCurveLateral"))
					print(GetVehicleHandlingFloat(vehicle, "CHandlingData", "fLowSpeedTractionLossMult"))
					print('stock')
				
	
end

function DriftOn()
			
				local ped = GetPlayerPed(-1)
				local vehicle = GetVehiclePedIsIn(ped, false)

				local addTofInitialDragCoeff = (GetVehicleHandlingFloat(vehicle, "CHandlingData", "fInitialDragCoeff")+90.22)
				local addTofDriveInertia = (GetVehicleHandlingFloat(vehicle, "CHandlingData", 'fDriveInertia')+0.31)
				local addTofSteeringLock = (GetVehicleHandlingFloat(vehicle, "CHandlingData", "fSteeringLock")+22.0)
				local addTofTractionCurveMax = (GetVehicleHandlingFloat(vehicle, "CHandlingData", "fTractionCurveMax")-1.1)
				local addTofTractionCurveMin = (GetVehicleHandlingFloat(vehicle, "CHandlingData", "fTractionCurveMin")-0.4)
				local addTofTractionCurveLateral = (GetVehicleHandlingFloat(vehicle, "CHandlingData", "fTractionCurveLateral")+2.5)
				local addTofLowSpeedTractionLossMult = (GetVehicleHandlingFloat(vehicle, "CHandlingData", "fLowSpeedTractionLossMult")-0.57)
				
					
					--not a drift handling? let's make it		
					SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fInitialDragCoeff', addTofInitialDragCoeff)
					--SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fDriveBiasFront', 0.0)
						if GetHandlingfDriveBiasFront == 0.0 then
							SetVehicleEnginePowerMultiplier(vehicle, 190.0)
						else
							SetVehicleEnginePowerMultiplier(vehicle, 100.0)
						end
					SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fDriveInertia', addTofDriveInertia)
					--SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fInitialDriveMaxFlatVel', 160)
					SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fSteeringLock', addTofSteeringLock)
					SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fTractionCurveMax', addTofTractionCurveMax)
					SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fTractionCurveMin', addTofTractionCurveMin)
					SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fTractionCurveLateral', addTofTractionCurveLateral)
					SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fLowSpeedTractionLossMult', addTofLowSpeedTractionLossMult)
					print(GetVehicleHandlingFloat(vehicle, "CHandlingData", "fInitialDragCoeff"))
					print(GetVehicleHandlingFloat(vehicle, "CHandlingData", 'fDriveInertia'))
					print(GetVehicleHandlingFloat(vehicle, "CHandlingData", "fSteeringLock"))
					print(GetVehicleHandlingFloat(vehicle, "CHandlingData", "fTractionCurveMax"))
					print(GetVehicleHandlingFloat(vehicle, "CHandlingData", "fTractionCurveMin"))
					print(GetVehicleHandlingFloat(vehicle, "CHandlingData", "fTractionCurveLateral"))
					print(GetVehicleHandlingFloat(vehicle, "CHandlingData", "fLowSpeedTractionLossMult"))
					print('drift')
				

end

-- Function
function GetPed() return GetPlayerPed(-1) end
function GetCar() return GetVehiclePedIsIn(GetPlayerPed(-1),false) end

function displayText1(text, justification, red, green, blue, alpha, posx, posy)
    SetTextFont(2)
    SetTextWrap(0.0, 1.0)
    SetTextScale(0.37, 0.37)
    SetTextJustification(justification)
    SetTextColour(red, green, blue, alpha)
    SetTextOutline()

    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayText(0.50, 0.94)
end

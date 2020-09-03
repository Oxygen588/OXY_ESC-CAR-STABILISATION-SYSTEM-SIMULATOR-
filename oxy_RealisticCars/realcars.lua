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
					displayText("ESC Off ", 0, 255, 0, 0, 255, 0.205, 1)
				else
					displayText("ESC on ", 0, 4, 255, 0, 0.1, 1)
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


Citizen.CreateThread(function()

    local Temp = 25
    while true do
        local ped = GetPlayerPed(-1)
        local car = GetVehiclePedIsIn(ped)
        local speed = GetEntitySpeed(car) * 2
        local merge = GetIsVehicleEngineRunning(car)
        
        if GetPedInVehicleSeat(car,-1)== ped then
        	local RPM = GetVehicleCurrentRpm(car)
        	local viata = GetVehicleEngineHealth(car) 
        	if merge == false and Temp >= 10 then
        		mate = 0
        		mate2 = math.random(20,25)
        		Temp = Temp - mate2 / 1000
	        elseif Temp < 85 then
	            mate = math.random(1,3)
	            mate2 = math.random(1,4)
	            Temp = Temp + mate / 100
	            --Temp = Temp + mate / 100
	        elseif Temp > 84 and Temp < 86 then
	            Temp = Temp + 1 
	        elseif Temp < 105 then
	            mate = math.random(6,14)
	            mate2 = math.random(1,5)
	        elseif Temp < 115 then
	            mate = math.random(4,7)
	            mate2 = math.random(2,17)
	        elseif Temp < 120 then
	            mate = math.random(3,6)
	            mate2 = math.random(5,18)
	        elseif Temp < 130 then
	            mate = math.random(1,4)
	            mate2 = math.random(10,20)
	        elseif Temp < 145 then
	            mate = math.random(1,28)
	            mate2 = math.random(12,24)
	        elseif viata < 365 then
	            mate = math.random(5000,15000)
	            mate2 = math.random(15,20)
	        end
	        if car ~= 0 then
	            if speed > 70 then
	                Temp = Temp + mate / 1000                
	            end
	            if speed > 35 and speed < 50 then
	                if math.random(1,2) == 1 then
	                   Temp = Temp + mate / 1000
	                        
	                elseif Temp ~= nill then
	                    if Temp > 50 then
	                        Temp = Temp - mate2 / 1000
	                    end
	            
	                end
	            end
	            if speed < 35 and Temp > 50 then
	                Temp = Temp - mate2 / 1000
	            end
	            Temp2 = Temp + 50
	        else
	            Temp = 24
	        end
	        if RPM > 0.85 then
	            Temp = Temp + 5 / 1000
	        elseif viata < 550 and speed > 40 then
	            SetVehicleEngineHealth(car, viata - 1 / 1400)
	        elseif Temp > 125 and Temp < 130 then 
	            SetVehicleEngineHealth(car, viata - 1 / 1450)
	        elseif Temp > 130 and Temp < 135 then 
	            SetVehicleEngineHealth(car, viata - 1 / 750)
	        elseif Temp > 135 and Temp < 155 then 
	            SetVehicleEngineHealth(car, viata - 1 / 400)
	        elseif Temp > 155 and Temp < 99999 then 
	            SetVehicleEngineHealth(car, viata - 15) 
	        end
	        if Temp < 85 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 0, 255, 0, 255, 0.205, 0.9)
	        elseif Temp < 86 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 0, 255, 0, 255, 0.205, 0.9)
	        elseif Temp < 87 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 0, 255, 0, 255, 0.205, 0.9)
	        elseif Temp < 88 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 0, 255, 0, 255, 0.205, 0.9)
	        elseif Temp < 89 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 0, 255, 0, 255, 0.205, 0.9)
	        elseif Temp < 90 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 0, 255, 0, 255, 0.205, 0.9)
	        elseif Temp < 91 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 05, 255, 0, 255, 0.205, 0.9)
	        elseif Temp < 92 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 05, 255, 0, 255, 0.205, 0.9)
	        elseif Temp < 93 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 05, 255, 0, 255, 0.205, 0.9)    
	        elseif Temp < 94 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 05, 255, 0, 255, 0.205, 0.9)
	        elseif Temp < 95 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 15, 255, 0, 255, 0.205, 0.9)
	        elseif Temp < 96 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 25, 255, 0, 255, 0.205, 0.9)
	        elseif Temp < 97 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 35, 255, 0, 255, 0.205, 0.9)
	        elseif Temp < 98 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 45, 255, 0, 255, 0.205, 0.9)
	        elseif Temp < 99 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 55, 255, 0, 255, 0.205, 0.9)
	        elseif Temp < 100 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 65, 255, 0, 255, 0.205, 0.9)
	        elseif Temp < 101 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 75, 255, 0, 255, 0.205, 0.9)
	        elseif Temp < 102 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 85, 255, 0, 255, 0.205, 0.9)    
	        elseif Temp < 103 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 95, 255, 0, 255, 0.205, 0.9)
	        elseif Temp < 104 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 105, 255, 0, 255, 0.205, 0.9)
	        elseif Temp < 115 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 115, 255, 0, 255, 0.205, 0.9)
	        elseif Temp < 116 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 125, 255, 0, 255, 0.205, 0.9)
	        elseif Temp < 107 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 135, 255, 0, 255, 0.205, 0.9)
	        elseif Temp < 108 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 145, 255, 0, 255, 0.205, 0.9)
	        elseif Temp < 109 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 155, 255, 0, 255, 0.205, 0.9)
	        elseif Temp < 110 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 160, 255, 0, 255, 0.205, 0.9)
	        elseif Temp < 111 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 170, 240, 0, 255, 0.205, 0.9)  
	        elseif Temp < 112 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 180, 230, 0, 255, 0.205, 0.9)
	        elseif Temp < 113 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 190, 220, 0, 255, 0.205, 0.9)
	        elseif Temp < 114 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 200, 210, 0, 255, 0.205, 0.9)
	        elseif Temp < 115 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 210, 200, 0, 255, 0.205, 0.9)
	        elseif Temp < 116 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 220, 190, 0, 255, 0.205, 0.9)
	        elseif Temp < 117 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 230, 180, 0, 255, 0.205, 0.9)
	        elseif Temp < 118 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 240, 170, 0, 255, 0.205, 0.9)
	        elseif Temp < 119 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 255, 160, 0, 255, 0.205, 0.9)    
	        elseif Temp < 120 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 255, 150, 0, 255, 0.205, 0.9)
	        elseif Temp < 121 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 255, 140, 0, 255, 0.205, 0.9)
	        elseif Temp < 122 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 255, 130, 0, 255, 0.205, 0.9)
	        elseif Temp < 123 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 255, 120, 0, 255, 0.205, 0.9)
	        elseif Temp < 124 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 255, 110, 0, 255, 0.205, 0.9)
	        elseif Temp < 125 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 255, 100, 0, 255, 0.205, 0.9)
	        elseif Temp < 126 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 255, 90, 0, 255, 0.205, 0.9)
	        elseif Temp < 127 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 255, 80, 0, 255, 0.205, 0.9)
	        elseif Temp < 128 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 255, 70, 0, 255, 0.205, 0.9)    
	        elseif Temp < 129 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 255, 60, 0, 255, 0.205, 0.9)
	        elseif Temp < 130 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 255, 50, 0, 255, 0.205, 0.9)
	        elseif Temp < 131 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 255, 40, 0, 255, 0.205, 0.9)
	        elseif Temp < 132 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 255, 30, 0, 255, 0.205, 0.9)
	        elseif Temp < 133 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 255, 20, 0, 255, 0.205, 0.9)
	        elseif Temp < 134 then
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 255, 10, 0, 255, 0.205, 0.9)
	        else
	            tempdisplay(" Temperatura " .. math.floor(Temp+0.1), 0, 255, 0, 0, 255, 0.205, 0.9)
	        end
	    else
	    	Temp = 24
	   	end
        Citizen.Wait(1)
    end
end)
function tempdisplay(text, justification, red, green, blue, alpha, posx, posy)
    SetTextFont(2)
    SetTextWrap(0.0, 1.0)
    SetTextScale(0.35, 0.35)
    SetTextJustification(justification)
    SetTextColour(red, green, blue, alpha)
    SetTextOutline()

    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayText(0.50, 0.978)
end





function drawNotification(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, false)
end

function displayText(text, justification, red, green, blue, alpha, posx, posy)
    SetTextFont(2)
    SetTextWrap(0.0, 1.0)
    SetTextScale(0.37, 0.37)
    SetTextJustification(justification)
    SetTextColour(red, green, blue, alpha)
    SetTextOutline()

    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayText(0.50, 0.874)
end



























function pressureTable = isothermalIG(gasNames, molarMass, volumeStartStop, tempKelvin)

volumes = linspace(volumeStartStop(1),volumeStartStop(2),50)

R = 8.314

pressureTable1 = (100 * (R*tempKelvin))./(volumes*molarMass(1))
pressureTable2 = (100 * (R*tempKelvin))./(volumes*molarMass(2))

pressureTable = [pressureTable1;pressureTable2].'

plot(volumes,pressureTable)

grid
xlabel("volume")
ylabel("pressure")
title("volume v pressure")
legend(gasNames)

end

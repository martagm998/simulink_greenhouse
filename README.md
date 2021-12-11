# simulink_greenhouse
This is a university project for Modelización de Sistemas Biológicos.
Matlab and simulink must be installed.
The DATA.m document has all the information of measurements, variables, operations, constants etc. All of this can be changed. 
The .sxl document has the graphical programming environment for modeling, simulating and analyzing the greenhouse. 

This is a MATLAB and Simulink model that maintains the temperature inside a greenhpuse between 17-35ºC with a cooling and heat systems. 
The simulation will take place un 1 week (168 hours) and will have as an output:
- Economic cost(euros) of the cooling and heating systems.
- Power consumption in kW*h
- External and internal temperatures variation.

The model has 6 subsystems:
- External temperature: two sine-waves establish the daily and weekly outside temperature and gives de maximum and minimum tempertarure. 
- Heating System: prevents the inside temperature from dropping below 17 degrees Celsius. Consists of two models:
  - Heat Thermostat: with an indoor temperature input calculated in the greenhouse subsystem prevents the temperature from dropping below 17 degrees and the heater from being turned off until it reaches 23 degrees Celsius.
  - Heating
- Cooling System: prevents the interior temperature from rising above 35 degrees Celsius. Consists of two models, same as the ones in the heating system.
- Greenhouse: calculates the internal temperature, taking as inputs the heat flow calculated in the heating system, the cold flow of the cooling system and the outside temperature. You can find two interesting modules: 
  - Qcc: that calculates the loss or gain due to convection and conduction of the materials, in this case polycarbonate
  - Req: the total thermal resistance. 

- Costs: this subsystem calculates:
  - Power consumption
  - Price of the heating
  - Price of the cooling

The results are shown with the scope block and consists of 3 graphs: 
- Graph of internal and external temperature oscillations.
- Heating, cooling and both heating and cooling cost chart
- Graph of energy consumption


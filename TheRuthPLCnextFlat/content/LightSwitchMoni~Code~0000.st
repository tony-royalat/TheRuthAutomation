// Call timer functions
Zone1_Timer();
Zone2_Timer();
Zone3_Timer();
Zone4_Timer();
Zone5_Timer();
Zone6_Timer();
Zone7_Timer();

// Set master time delay
Time_Delay := t#250ms;

// Set time delay for light zones
Zone1_Timer.PT := t#0ms;
Zone2_Timer.PT := Zone1_Timer.PT + Time_Delay;
Zone3_Timer.PT := Zone2_Timer.PT + Time_Delay;
Zone4_Timer.PT := Zone3_Timer.PT + Time_Delay;
Zone5_Timer.PT := Zone4_Timer.PT + Time_Delay;
Zone6_Timer.PT := Zone5_Timer.PT + Time_Delay;
Zone7_Timer.PT := Zone6_Timer.PT + Time_Delay;

// Set lights based on light switch and zone buttons
IF LightSwitch = TRUE THEN
    // Enable timers
    Zone1_Timer.IN := TRUE;
    Zone2_Timer.IN := TRUE;
    Zone3_Timer.IN := TRUE;
    Zone4_Timer.IN := TRUE;
    Zone5_Timer.IN := TRUE;
    Zone6_Timer.IN := TRUE;
    Zone7_Timer.IN := TRUE;
    
    // Turn on lights according to timers and HMI buttons
    // Zone 1
    IF Zone1_Timer.Q = TRUE THEN
        Zone1_Out := Zone1_Button;
    END_IF
    
    // Zone 2
    IF Zone2_Timer.Q = TRUE THEN
        Zone2_Out := Zone2_Button;
    END_IF
    
    // Zone 3
    IF Zone3_Timer.Q = TRUE THEN
        Zone3_Out := Zone3_Button;
    END_IF
    
    // Zone 4
    IF Zone4_Timer.Q = TRUE THEN
        Zone4_Out := Zone4_Button;
    END_IF
    
    // Zone 5
    IF Zone5_Timer.Q = TRUE THEN
        Zone5_Out := Zone5_Button;
    END_IF
    
    // Zone 6
    IF Zone6_Timer.Q = TRUE THEN
        Zone6_Out := Zone6_Button;
    END_IF
    
    // Zone 7
    IF Zone7_Timer.Q = TRUE THEN
        Zone7_Out := Zone7_Button;
    END_IF
   
ELSE
    // Turn off lights
    Zone1_Out := FALSE;
    Zone2_Out := FALSE;
    Zone3_Out := FALSE;
    Zone4_Out := FALSE;
    Zone5_Out := FALSE;
    Zone6_Out := FALSE;
    Zone7_Out := FALSE;
    
    // Reset timers
    Zone1_Timer.IN := FALSE;
    Zone2_Timer.IN := FALSE;
    Zone3_Timer.IN := FALSE;
    Zone4_Timer.IN := FALSE;
    Zone5_Timer.IN := FALSE;
    Zone6_Timer.IN := FALSE;
    Zone7_Timer.IN := FALSE;
END_IF
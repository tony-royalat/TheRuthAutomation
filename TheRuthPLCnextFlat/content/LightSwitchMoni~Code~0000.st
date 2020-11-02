// Set lights based on light switch and zone buttons
IF LightSwitch = TRUE THEN
    Zone1_Out := Zone1_Button;
    Zone2_Out := Zone2_Button;
    Zone3_Out := Zone3_Button;
    Zone4_Out := Zone4_Button;
    Zone5_Out := Zone5_Button;
    Zone6_Out := Zone6_Button;
    Zone7_Out := Zone7_Button;
ELSE
    Zone1_Out := FALSE;
    Zone2_Out := FALSE;
    Zone3_Out := FALSE;
    Zone4_Out := FALSE;
    Zone5_Out := FALSE;
    Zone6_Out := FALSE;
    Zone7_Out := FALSE;
END_IF
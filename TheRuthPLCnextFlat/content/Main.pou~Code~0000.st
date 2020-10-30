// Figure out if car has arrived

RisingEdgeFB(CLK:=CarPresent);


IF RisingEdgeFB.Q = TRUE AND LightSwitch = FALSE THEN
    // Do a thing
END_IF
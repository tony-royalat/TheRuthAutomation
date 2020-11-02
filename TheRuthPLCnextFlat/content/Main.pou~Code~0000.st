// Figure out if car has arrived

RisingEdgeFB(CLK:=CarPresent);


IF RisingEdgeFB.Q = TRUE THEN
    // Do a thing
END_IF
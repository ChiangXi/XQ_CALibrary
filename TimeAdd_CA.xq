SetBarMode(1);
// Return: bool
Input: aDate(numericref), aTime(numericref), aUnit(String), aQuantity(Numeric);

variable: tInitTime(0);
	
tInitTime = aTime;
aTime = TimeAdd(aTime, aUnit, aQuantity);

if tInitTime > aTime then
	begin
		aDate = DateAdd(aDate, "D", 1);
		TimeAdd_CA = True;
	end;

function jiechen( currentNumber )
	
	if ( currentNumber == 0 ) then
		return 1
	else
		return currentNumber * jiechen(currentNumber -1);
	end
end

print("enter a int");
local x = io.read("*number");

print(x);
--print(jiechen(x));
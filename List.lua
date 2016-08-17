
function List()

	return function( ... )
		local listValue = {};
		local first = -1;
		local last = -1;

		List.Value = function ( )
			return listValue;
		end
		List.Insert = function ( value )
			if( value == nil ) then
				error("you cant insert nil value");
			end
			listValue[last] = value;
			last = last + 1;
			if (last == 0) then
				first = 0;
			end
		end

	end
end

local  testList = List;
print(List);
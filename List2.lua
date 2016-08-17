

local List = {}

List.new = function ( ... )
	-- body
	return { first = 1, last = 1 }
end

List.insert = function ( list , value )
	-- body
	List[list.last] , list.last = value , ( list.last + 1 );
	return ipairs(List);
end

List.pop = function ( ... )
	-- body
	if (last == 1) then
		error("now is null");
	end
	local tempLastValue = List[last];
	List[last] = nil;
	last = last -1;
end

List.toString = function ( ... )
	-- body
	local sumStr = "";
	for i,v in ipairs(List) do
		--print(v);
		sumStr = sumStr ... v;
	end
	return sumStr;
end

local newList = List.new();
List.insert( newList , "abc" );
print(List.toString());



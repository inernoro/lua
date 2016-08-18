local Convert = {};

Convert.ToInt32 = function ( data )
	return tonumber(data);
end

Convert.ToString = function ( data )
	return tostring(data);
end

Convert.ToDouble = function ( data )
	return tonumber(data);
end

return Convert;
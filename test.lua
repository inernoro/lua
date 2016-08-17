function Test( result ) 
	for k,v in pairs(result) do 
		result[k] =  {
			 shouldBe = function ( input )
					shouldBe(input, {  key = k, data = v, } );
			end,
			shouldNotBe = function ( input )
					shouldNotBe(input, {  key = k, data = v, } );
			end
		}
	end
	return result;
end

function shouldBe( result , compare )
	  if(type(result) ~= type(compare.data)) then
	 	print("这两个数据的类型不一致，不能对比，参考值类型是 ［"..type(result).."］, "..compare.key.." 是： ［".. type(compare.data).."]");	
	 	return;
	 end
	 if (compare.data == result) then
	 	print(compare.key .. " : successfully"); 
	else
		print(compare.key .. " 应该是 : [" .. compare.data .."] 但它不是 "); 
	end
end

function shouldNotBe( result , compare )
	 if(type(result) ~= type(compare.data)) then
	 	print("这两个数据的类型不一致，不能对比，参考值类型是 ［"..type(result).."］, "..compare.key.." 是： ［".. type(compare.data).."]");	
	 	return;
	 end
	 if (compare.data == result) then
	 	print(compare.key.. " 不应该是 [" .. compare.data .."] 但它是"); 
	 else
	 	print(compare.key .. " : successfully"); 
	 end

end

function LuaScriptTDD()
	
	local result = Test(
	{
		id = 123, username = "监理师", password = "123456",
	});

 	 result.id.shouldBe(1231)
 	 result.username.shouldNotBe("设计师")
 	 result.password.shouldBe(123456) 
 	 result.id.shouldBe(123);
 	 result.password.shouldBe("123456") 

end

LuaScriptTDD();















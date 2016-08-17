function test( ... )
	for i=100,999 do
		local firstNumber = math.pow(math.floor(i / 100),3)
		local nextNumber = math.pow(math.floor((i %100) /10),3)
		local lastNumber = math.pow((i%100)%10,3)
		if(i==(firstNumber+nextNumber+lastNumber)) then
			print(i)
		end

	end
end

test();
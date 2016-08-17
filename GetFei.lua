--斐波那契数列

function getFei ( liftCount , currentCount , sumCount )
	
	if ( liftCount + currentCount < 0 ) then
		return sumCount;
	else
		print(currentCount);
		liftCount , currentCount , sumCount = currentCount , (liftCount + currentCount) , (sumCount + currentCount);
		return getFei(liftCount , currentCount , sumCount);
	end
end

print(getFei(1,1,0));

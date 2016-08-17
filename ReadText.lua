
--代码文件  
count = 0  
Entry = function(item)  
    for k,v in pairs(item) do  
        print(v);  
        count = count+1;  
    end  
end  
dofile('data');
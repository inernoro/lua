    local function search (key,list)  --search the first matched key  
        for i=1,#list do  
            local val = plist[i][key]  
            if val then  
                return val  
            end  
        end  
    end  
      
    function createClass(...)  
        local c = {};         -- new class  
        local parents = {...} -- parent class from args  
      
        local finder =  function(tbl,key)  
                            return search(key,parents)  
                        end  
      
        setmetatable(c,{__index = finder });  
      
        c.__index = c;  
      
        c.new = function(obj)  
            if not obj  then
                obj = {}  
            end  
            setmetatable(obj,c)  
            return obj  
         end  
      
         return c;  
    end

    Named = {}  
    Named.getname = function(self)  
        return self.name  
    end  
    Named.setName = function(self,n)  
        self.name = n  
    end  
      
    --现在以Named和Account为基类，创建新类  
    NamedAccount = createClass(Account,Named);  
      
    na = NamedAccount:new({name="Jobs"})  
    print(na.getname())  
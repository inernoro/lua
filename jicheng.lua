    local Window = {}  
    Window.prototype = {x=0,y=0,width=100,height=100}  
    Window.mt = {__index=function(tbl,key) return Window.prototype[key] end}  
    Window.new = function(obj)  
        setmetatable(obj,Window.mt);  
        return obj;  
    end  
      
    win = Window.new({x=30,y=30});  
    print(win.width) -- 100  
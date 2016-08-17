local x = require("base64");
local y = x.encode("AbortMacro()");
print(y);
local w = x.decode(y);
print(w);


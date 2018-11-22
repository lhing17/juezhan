require 'util.lua-util'
require 'util.war3-util'

commonutil = commonutil or {}

function commonutil.random(m, n)
    return jass.GetRandomReal(m, n)
end

function commonutil.random_int(m, n)
    return jass.GetRandomInt(m, n)
end



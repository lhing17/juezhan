require 'scripts.utility'
require 'scripts.native'
require 'scripts.common'
require 'scripts.blizzard'
require 'scripts.runtime'
require 'scripts.war3map'

local std_print = print

function print(...)
    std_print(('[%.3f]'):format(os.clock()), debug.getinfo(2).source, debug.getinfo(2).currentline, ...)
end
print("hello juezhan")
main()
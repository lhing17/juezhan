require 'scripts.utility'
require 'scripts.native'
require 'scripts.common'
require 'scripts.blizzard'
require 'scripts.war3map'

local std_print = print

function print(...)
	std_print(('[%.3f]'):format(os.clock()), ...)
end
print("hello juezhan")
main()
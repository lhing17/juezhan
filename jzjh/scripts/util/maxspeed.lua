--library MaxSpeed:
--private:
--temp variables

--Implemented from module Init:

function s__ModSpeed_destroy(this)
	s__ModSpeed_speed[this] = 0.0
	if s__ModSpeed_next[this] ~= 0 then
		s__ModSpeed_prev[s__ModSpeed_next[this]] = s__ModSpeed_prev[this]
	end
	s__ModSpeed_next[s__ModSpeed_prev[this]] = s__ModSpeed_next[this]
	s__ModSpeed_prev[this] = s__ModSpeed_prev[0]
	s__ModSpeed_prev[0] = this
	if s__ModSpeed_next[0] == 0 then
		PauseTimer(s__ModSpeed_tm)
	end
end
function s__ModSpeed__get_moveFilter(this)
	return GetUnitAbilityLevel(s__ModSpeed_u[this], 1112757326) < 1 and GetUnitAbilityLevel(s__ModSpeed_u[this], 1112560453) < 1 and GetUnitMoveSpeed(s__ModSpeed_u[this]) > 521.0 and not IsUnitPaused(s__ModSpeed_u[this]) and not s__ModSpeed_lead[this]
end
function s__ModSpeed_move(this)
	if not s__ModSpeed__get_moveFilter(this) then
		return
	end
	s__ModSpeed_x = GetUnitX(s__ModSpeed_u[this])
	s__ModSpeed_y = GetUnitY(s__ModSpeed_u[this])
	s__ModSpeed_dx = s__ModSpeed_x - s__ModSpeed_lastX[this]
	s__ModSpeed_dy = s__ModSpeed_y - s__ModSpeed_lastY[this]
	s__ModSpeed_lastX[this] = s__ModSpeed_x
	s__ModSpeed_lastY[this] = s__ModSpeed_y
	s__ModSpeed_dist = SquareRoot(s__ModSpeed_dx * s__ModSpeed_dx + s__ModSpeed_dy * s__ModSpeed_dy) / MaxSpeed___PERIOD
	if s__ModSpeed_dist >= MaxSpeed___MIN_SPEED and s__ModSpeed_dist <= MaxSpeed___MAX_SPEED then
		s__ModSpeed_rate = (s__ModSpeed_speed[this] - 522.0) / s__ModSpeed_dist
		s__ModSpeed_lastX[this] = s__ModSpeed_x + s__ModSpeed_dx * s__ModSpeed_rate
		s__ModSpeed_lastY[this] = s__ModSpeed_y + s__ModSpeed_dy * s__ModSpeed_rate
		SetUnitX(s__ModSpeed_u[this], s__ModSpeed_lastX[this])
		SetUnitY(s__ModSpeed_u[this], s__ModSpeed_lastY[this])
	end
end
function s__ModSpeed_iterate()
	local this = 0
	for _ in _loop_() do
		this = s__ModSpeed_next[this]
		if this == 0 then break end
		if GetWidgetLife(s__ModSpeed_u[this]) < 0.405 then
			s__ModSpeed_destroy(this)
		else
			s__ModSpeed_move(this)
		end
	end
end
--public:
function s__ModSpeed_getInstance(u)
	local this = 0
	for _ in _loop_() do
		this = s__ModSpeed_next[this]
		if this == 0 then break end
		if s__ModSpeed_u[this] == u then
			return this
		end
	end

	return 0
end
function s__ModSpeed_setUnitLed(u, b)
	local this = s__ModSpeed_getInstance(u)
	if this > 0 then
		s__ModSpeed_lead[this] = b
	end
end
function s__ModSpeed_getSpeed(u)
	local this = s__ModSpeed_getInstance(u)
	if this > 0 and GetUnitMoveSpeed(u) > 521.0 then
		return s__ModSpeed_speed[this]
	end
	return GetUnitMoveSpeed(u)
end
function s__ModSpeed_setSpeed(u, amount)
	local this
	if u == nil or GetWidgetLife(u) < 0.405 then
		return
	end
	this = s__ModSpeed_getInstance(u)
	if amount < 523.0 then
		if this > 0 then
			s__ModSpeed_destroy(this)
		end
		return
	elseif this == 0 then
		if s__ModSpeed_prev[0] == 0 then
			s__ModSpeed_instanceMaxCount = s__ModSpeed_instanceMaxCount + 1
			this = s__ModSpeed_instanceMaxCount
		else
			this = s__ModSpeed_prev[0]
			s__ModSpeed_prev[0] = s__ModSpeed_prev[s__ModSpeed_prev[0]]
		end
		if s__ModSpeed_next[0] == 0 then
			TimerStart(s__ModSpeed_tm, MaxSpeed___PERIOD, true, s__ModSpeed_iterate)
		else
			s__ModSpeed_prev[s__ModSpeed_next[0]] = this
		end
		s__ModSpeed_next[this] = s__ModSpeed_next[0]
		s__ModSpeed_next[0] = this
		s__ModSpeed_prev[this] = 0
		s__ModSpeed_u[this] = u
	end
	amount = RMinBJ(amount, MaxSpeed___MAX_SPEED)
	s__ModSpeed_lastX[this] = GetUnitX(u)
	s__ModSpeed_lastY[this] = GetUnitY(u)
	s__ModSpeed_speed[this] = amount
end
--interface:
function SetUnitLed(u, b)
	s__ModSpeed_setUnitLed(u, b)
end
function GetUnitMoveSpeedEx(u)
	return s__ModSpeed_getSpeed(u)
end
function SetUnitMoveSpeedEx(u, speed)
	s__ModSpeed_setSpeed(u, speed)
end
function sc___prototype16_execute(i, a1, a2)
	f__arg_unit1 = a1
	f__arg_real1 = a2

	TriggerExecute(st___prototype16[i])
end
function sc___prototype16_evaluate(i, a1, a2)
	f__arg_unit1 = a1
	f__arg_real1 = a2

	TriggerEvaluate(st___prototype16[i])

end
function h__SetUnitMoveSpeed(a0, a1)
	--hook: SetUnitMoveSpeedEx
	sc___prototype16_evaluate(1, a0, a1)
	SetUnitMoveSpeed(a0, a1)
end
--processed hook:      hook SetUnitMoveSpeed SetUnitMoveSpeedEx

--library MaxSpeed ends
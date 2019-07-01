mutable struct Stats
	hp::int
	atk::int
	def::int
	spAtk::int
	spDef::int
	spd::int

	function Stats(h::int, a::int, d::int, sa::int, sd::int, s::int)
		n = new(h, a, d, sa, sd, s)
		return n
	end
end
-module(pb2).
-export([start/0]).

start() ->
	compute().

compute() ->
	compute(0,0,1).

compute(Total,Result,Next) when Result > 3999999 ->
	io:format("~w~n",[Total]),
	Total;

compute(Total,Result,Next) ->
	case Result rem 2 of
		0 -> compute(Total+Result,Next,Result+Next);
		1 -> compute(Total,Next,Result+Next)
	end.

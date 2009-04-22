% 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
% What is the smallest number that is evenly divisible by all of the numbers from 1 to 20?

-module(pb5_1).
-export([start/0]).

start() ->
	compute(1, 1, 20).

compute(N, Min, Max) ->
	case loop_divisible(N, Min, Min, Max) of
		true -> N;
		false -> compute(N+1, Min, Max)
	end.
		

is_divisible(N, By) ->
	case N rem By of
		0 -> true;
		_ -> false
	end.

loop_divisible(N, By, Min, Max) when By < Max ->
	case is_divisible(N, By) of
		true -> loop_divisible(N, By +1, Min, Max);
		false -> false
	end;

loop_divisible(N, By, Min, Max) when By == Max ->
	case is_divisible(N, By) of
		true -> true;
		false -> false
	end.


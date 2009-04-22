%% If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
%% Find the sum of all the multiples of 3 or 5 below 1000.

-module(pb1_2).
-export([start/0]).

start() ->
	compute(999).

print_result(Result) ->
	io:format("Total = ~w~n", [Result]).


compute(N,Total) ->
	if 
	N == 0 ->
		print_result(Total);
	N rem 3 == 0 ->
		compute(N-1, Total+N);
	N rem 5 == 0 ->
		compute(N-1, Total+N);
	true ->
		compute(N-1, Total)
	end.

compute(N) ->
	compute(N,0).


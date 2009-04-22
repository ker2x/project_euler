% What is the 10001^(st) prime number?


-module(pb7_1).
-export([start/0]).

start() ->
	compute(2,10001,0).

compute(N, Max, Max) -> N-1;

compute(N, Max, Counter) ->
	case isprime(N) of
		true -> compute(N+1, Max, Counter+1);
		false -> compute(N+1, Max, Counter)
	end.

isprime(1) -> false;
isprime(2) -> true;
isprime(3) -> true;
isprime(N) -> 
	case (N rem 2) =:= 0 of
		true -> false;
		_ -> isprime_loop(3,N)
	end.


isprime_loop(N, N) -> true;
isprime_loop(Iter, N) ->
	case (N rem Iter) =:= 0 of
		true -> false;
		false -> isprime_loop(Iter+2, N)
	end.



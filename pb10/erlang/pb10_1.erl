% The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
% Find the sum of all the primes below two million.


-module(pb10_1).
-export([start/0]).

start() ->
	compute(1999999).

compute(N) ->
	lists:sum(gen_primelist(N)).



isprime(1) -> false;
isprime(2) -> true;
isprime(3) -> true;
isprime(N) -> 
	case (N rem 2) =:= 0 of
		true -> false;
		false -> isprime_loop(3,N)
	end.


isprime_loop(N,N) -> true;
isprime_loop(Iter,N) ->
	case (N rem Iter) =:= 0 of
		true -> false;
		false -> isprime_loop(Iter+2, N)
	end.

gen_primelist(N) ->
	A = loop_primelist(2,N,[]),
	A.

loop_primelist(Iter,N,PrimeList) when Iter < N+1 ->
	case isprime(Iter) of 
		true ->
			loop_primelist(Iter+1,N,[Iter|PrimeList]);
		false ->
			loop_primelist(Iter+1,N,PrimeList)
	end;

loop_primelist(_,_,PrimeList) -> 
	PrimeList.


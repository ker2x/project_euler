%% The prime factors of 13195 are 5, 7, 13 and 29.
%%What is the largest prime factor of the number 600851475143 ?

%% SUBOPTIMAL SOLUTION !!!

-module(pb3_1).
-export([start/0]).

start() ->
        compute(600851475143).

compute(N) ->
        loop_compute(N, 2).


loop_compute(0,_) -> 0;
loop_compute(N,Great) when Great > (N div 2) -> N;
loop_compute(N,Great) ->
        case N rem Great =:= 0 of
                true -> loop_compute(N div Great, Great);
                _ -> loop_compute(N, Great +1)
        end.


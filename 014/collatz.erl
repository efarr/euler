-module(collatz).
-export([run/0]).

run() ->
	iterate(1,1,1,1).

iterate(N, _, HighestNumber, _) when N =:= 1000000 -> HighestNumber;
iterate(N, Count, _, HighestCount) when Count > HighestCount -> 
	iterate(N+1, collatz_size(N+1), N, Count);
iterate(N, _, HighestNumber, HighestCount) -> 
	iterate(N+1, collatz_size(N+1), HighestNumber, HighestCount).

collatz_size(N) -> collatz_size(N, 1).
collatz_size(N, Count) when N =:= 1 -> Count;
collatz_size(N, Count) when N rem 2 =:= 0 -> collatz_size(trunc(N/2), Count+1);
collatz_size(N, Count) -> collatz_size(N*3+1, Count+1).



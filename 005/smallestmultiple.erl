% 2520 is the smallest number that can be divided by each of the numbers 
% from 1 to 10 without any remainder.

% What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
-module(smallestmultiple).
-export([run/0]).

run() ->
  io:fwrite("~p~n", [iterate(20)]).

isMultiple(_, 21) -> true;
isMultiple(N, Factor) when N rem Factor > 0 -> false;
isMultiple(N, Factor) -> isMultiple(N, Factor+1).

iterate(N) ->
	case isMultiple(N,11) of
		true -> N;
		false -> iterate(N+20)
	end.
-module(multiples).
-export([run/0]).

% If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
% The sum of these multiples is 23.

% Find the sum of all the multiples of 3 or 5 below 1000.

run() ->
  io:fwrite("~p~n", [calc(999,0)]).

calc(0, Sum) -> Sum;
calc(N, Sum) when (N rem 3 =:= 0) or (N rem 5 =:= 0) -> calc(N-1,Sum+N);
calc(N, Sum) -> calc(N-1,Sum).

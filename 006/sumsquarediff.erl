% Find the difference between the sum of the squares of the first one 
% hundred natural numbers and the square of the sum.
-module(sumsquarediff).
-export([run/0]).

run() ->
  io:fwrite("~p~n", [iterate(1, 0, 0)]).

iterate(N, Sum, SumSq) when N =:= 101 -> Sum * Sum - SumSq;
iterate(N, Sum, SumSq) -> iterate(N+1, Sum + N, SumSq + N * N).
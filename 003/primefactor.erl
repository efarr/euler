-module(primefactor).
-export([run/0]).

% The prime factors of 13195 are 5, 7, 13 and 29.

% What is the largest prime factor of the number 600851475143 ?

run() ->
  io:fwrite("~p~n", [iterate(2, 600851475143)]).

iterate(Prime, Remaining) when Prime =:= Remaining -> Prime;
iterate(Prime, Remaining) when Remaining rem Prime =:= 0 ->
  iterate(Prime, trunc(Remaining/Prime));
iterate(Prime, Remaining) -> iterate(Prime+1, Remaining).

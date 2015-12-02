% By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
% What is the 10,001st prime number?
-module(primes).
-export([run/0]).

run() ->
  io:fwrite("~p~n", [iterate([2], 3)]).

isPrime([],_) -> true; 
isPrime([P|_],N) when N rem P =:= 0 -> false;
isPrime([_|Primes],N) -> isPrime(Primes, N).

iterate(Primes, Next) when length(Primes) =:= 10001 -> Next-2;
iterate(Primes, Next) ->
	case isPrime(Primes, Next) of
		true -> iterate([Next|Primes], Next + 2);
		false -> iterate(Primes, Next + 2)
	end.

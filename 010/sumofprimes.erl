% The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
% Find the sum of all the primes below two million.
-module(sumofprimes).
-export([run/0]).

run() ->
	Candidates = lists:seq(3, 2000000, 2),
	Primes = primes(3, Candidates, [2]),
	lists:foldl(fun(X,Sum) -> X + Sum end, 0, Primes).

primes(Next, [], Primes) -> [Next|Primes];
primes(Next, Candidates, Primes) ->
	[NextPrime|NewCandidates] = [X || X <- Candidates, X rem Next =/= 0],
	primes(NextPrime, NewCandidates,[Next|Primes]).
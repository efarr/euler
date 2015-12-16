-module(trianglefactors).
-export([run/0]).

run() ->
	iterate(1,2,[1]).

iterate(N,_,Factors) when length(Factors) > 500 -> N;
iterate(N,Next,_) -> iterate(N+Next, Next+1, factors(N+Next)).

factors(N) -> factors(N, 1, trunc(math:sqrt(N))+1, []).

factors(_, I, Max, Factors) when I > Max -> sets:to_list(sets:from_list(Factors));
factors(N, I, Max, Factors) when N rem I =:=0 -> factors(N, I+1, Max, [I|[N/I|Factors]]);
factors(N, I, Max, Factors) -> factors(N, I+1, Max, Factors).


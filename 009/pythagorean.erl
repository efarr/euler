-module(pythagorean).
-export([run/0]).

run() ->
	X = [{A,B,C} ||
		A <- lists:seq(1,333),   % if B and C are larger than A, then A cannot be larger that 333
		B <- lists:seq(2,500),   % if C is larger than B, then B cannot be larger than 500
		C <- lists:seq(333,997), % if A and B are smaller than C, then C cannot be smaller than 333
		A + B + C =:= 1000,
		A*A + B*B =:= C*C
		],
	[{A1,B1,C1}|_] = X, 
	A1*B1*C1.
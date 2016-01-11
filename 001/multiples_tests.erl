-module(multiples_tests).
-include_lib("eunit/include/eunit.hrl").

factorsLessThanTen_test() ->
  ?assertEqual(23, multiples:calc(9,0)).

factorsLessThanOneThousand_test() ->
  ?assertEqual(233168, multiples:calc(999,0)).

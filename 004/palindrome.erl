% A palindromic number reads the same both ways. The largest palindrome
% made from the product of two 2-digit numbers is 9009 = 91 * 99.

% Find the largest palindrome made from the product of two 3-digit numbers.
-module(palindrome).
-export([run/0]).

run() ->
  io:fwrite("~p~n", [iterate(999, 999, 0)]).

isPalindrome(Num) ->
    Str = integer_to_list(Num),
    Str =:= lists:reverse(Str).

iterate(N,_,Palindrome) when N =:= 99 -> Palindrome;
iterate(N,M,Palindrome) when M =:= 99 -> iterate(N-1,N-1,Palindrome);
iterate(N,M,Palindrome) ->
  case isPalindrome(N*M) andalso (M*N > Palindrome) of
  	true -> iterate(N-1,N-1,M*N);
  	false -> iterate(N,M-1,Palindrome)
  end.
 

%%%-------------------------------------------------------------------
%%% @author rl
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 22. May 2023 10:04 PM
%%%-------------------------------------------------------------------
-module(dao_sup_tests).
-author("rl").
-include("../src/dao_sup.erl").
-include_lib("eunit/include/eunit.hrl").

simple_test() ->
  ?assert(true).

should_start_supervisor_test(Args) ->
  {ok,msg} = supervisor:start_link(dao_sup, Args),
  ?assert(true).
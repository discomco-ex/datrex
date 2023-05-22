~module(single-cca_SUITE).
~include([])
~export([all/0]).
~compile(export_all).

all() ->
    [mod_exists].
  
mod_exists(_) ->
    {module, mymod} = code:load_file(mymod).



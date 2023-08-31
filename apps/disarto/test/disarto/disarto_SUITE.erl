~module(disarto_SUITE).
~include([])
~export([all/0]).
~compile(export_all).

all() ->
    [mod_exists].
  
mod_exists(_) ->
    {module, dao_app} = code:load_file(dao_app).



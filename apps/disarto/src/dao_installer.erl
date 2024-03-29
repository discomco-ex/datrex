%%%-------------------------------------------------------------------
%%% @author rl
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 22. May 2023 10:25 PM
%%%-------------------------------------------------------------------
-module(dao_installer).
-author("rl").

-behaviour(gen_server).

%% API
-export([start_link/0]).

%% gen_server callbacks
-export([init/1, handle_call/3, handle_cast/2, handle_info/2, terminate/2,
  code_change/3]).

-define(SERVER, ?MODULE).

-record(dao_installer_state, {}).

%%%===================================================================
%%% API
%%%===================================================================

%% @doc Spawns the server and registers the local name (unique)
-spec(start_link() ->
  {ok, Pid :: pid()} | ignore | {error, Reason :: term()}).
start_link() ->
  gen_server:start_link({local, ?SERVER}, ?MODULE, [], []).

%%%===================================================================
%%% gen_server callbacks
%%%===================================================================

%% @private
%% @doc Initializes the server
-spec(init(Args :: term()) ->
  {ok, State :: #dao_installer_state{}} | {ok, State :: #dao_installer_state{}, timeout() | hibernate} |
  {stop, Reason :: term()} | ignore).
init([]) ->
  {ok, #dao_installer_state{}}.

%% @private
%% @doc Handling call messages
-spec(handle_call(Request :: term(), From :: {pid(), Tag :: term()},
    State :: #dao_installer_state{}) ->
  {reply, Reply :: term(), NewState :: #dao_installer_state{}} |
  {reply, Reply :: term(), NewState :: #dao_installer_state{}, timeout() | hibernate} |
  {noreply, NewState :: #dao_installer_state{}} |
  {noreply, NewState :: #dao_installer_state{}, timeout() | hibernate} |
  {stop, Reason :: term(), Reply :: term(), NewState :: #dao_installer_state{}} |
  {stop, Reason :: term(), NewState :: #dao_installer_state{}}).
handle_call(_Request, _From, State = #dao_installer_state{}) ->
  {reply, ok, State}.

%% @private
%% @doc Handling cast messages
-spec(handle_cast(Request :: term(), State :: #dao_installer_state{}) ->
  {noreply, NewState :: #dao_installer_state{}} |
  {noreply, NewState :: #dao_installer_state{}, timeout() | hibernate} |
  {stop, Reason :: term(), NewState :: #dao_installer_state{}}).
handle_cast(_Request, State = #dao_installer_state{}) ->
  {noreply, State}.
    
    

%% @private
%% @doc Handling all non call/cast messages
-spec(handle_info(Info :: timeout() | term(), State :: #dao_installer_state{}) ->
  {noreply, NewState :: #dao_installer_state{}} |
  {noreply, NewState :: #dao_installer_state{}, timeout() | hibernate} |
  {stop, Reason :: term(), NewState :: #dao_installer_state{}}).
handle_info(_Info, State = #dao_installer_state{}) ->
  {noreply, State}.

%% @private
%% @doc This function is called by a gen_server when it is about to
%% terminate. It should be the opposite of Module:init/1 and do any
%% necessary cleaning up. When it returns, the gen_server terminates
%% with Reason. The return value is ignored.
-spec(terminate(Reason :: (normal | shutdown | {shutdown, term()} | term()),
    State :: #dao_installer_state{}) -> term()).
terminate(_Reason, _State = #dao_installer_state{}) ->
  ok.

%% @private
%% @doc Convert process state when code is changed
-spec(code_change(OldVsn :: term() | {down, term()}, State :: #dao_installer_state{},
    Extra :: term()) ->
  {ok, NewState :: #dao_installer_state{}} | {error, Reason :: term()}).
code_change(_OldVsn, State = #dao_installer_state{}, _Extra) ->
  {ok, State}.

%%%===================================================================
%%% Internal functions
%%%===================================================================

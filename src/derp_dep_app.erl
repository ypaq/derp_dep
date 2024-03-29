%%%-------------------------------------------------------------------
%% @doc derp_dep public API
%% @end
%%%-------------------------------------------------------------------

-module(derp_dep_app).

-behaviour(application).

%% Application callbacks
-export([start/2
        ,stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    derp_dep_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================

-module(hello_world_handler).
-behaviour(cowboy_handler).

-export([init/2]).

init(Req, State) ->
    {ok, Resp} = cowboy_req:reply(200,
                                  #{<<"content-type">> => <<"text/plain">>},
                                  <<"Hello, world!">>,
                                  Req),
    {ok, Resp, State}.
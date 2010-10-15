%%%-------------------------------------------------------------------
%%% File    : protocol_handler.erl
%%% Author  : Ari Lerner
%%% Description : 
%%%   An example protocol_handler
%%% Created :  Thu Dec 10 10:01:12 PST 2009
%%%-------------------------------------------------------------------

-module (protocol_handler).

-include ("beehive.hrl").

%% API
-export([
  handle_request/1
]).

handle_request(ClientSock) ->
  Req = collect_request(ClientSock),
  Subdomain = parse_routing_key(Req),
  ForwardReq = build_new_request(Req),
  {ok, Subdomain, ForwardReq, Req}.
  
%%--------------------------------------------------------------------
%%% Internal functions
%%--------------------------------------------------------------------
collect_request(ClientSock) ->
  % ...
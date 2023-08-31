%% -*- mode: Erlang, fill-column: 75; comment-column: 50; -*-
{application, tr_rpc, [
  {description, "RPC Server for Erlang"},
  {vsn, "0.1.0"},
  {modules, [
    tr_app,
    tr_sup,
    tr_server
  ]},
  {registered, [
    tr_sup
  ]},
  {applications, [
    kernel,
    stdlib
  ]},
  {mod,
    {tr_app, []}
  }
]}.
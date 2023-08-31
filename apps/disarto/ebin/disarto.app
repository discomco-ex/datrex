{application, disarto, [
  {description, "Distributed Artificial Organism"},
  {vsn, "0.1.0"},
  {modules, [
    doa_app,
    doa_sup    
  ]},
  {registered, [
    doa_sup
  ]},
  {applications, [
    kernel,
    stdlib
  ]},
  {mod,
    {doa_app, []}
  }
]}.
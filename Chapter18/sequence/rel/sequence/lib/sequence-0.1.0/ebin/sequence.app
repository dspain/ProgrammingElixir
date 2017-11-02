{application,sequence,
             [{applications,[kernel,stdlib,elixir,logger,exrm]},
              {description,"sequence"},
              {modules,['Elixir.Sequence.Application',
                        'Elixir.Sequence.Server','Elixir.Sequence.Stash',
                        'Elixir.Sequence.SubSupervisor',
                        'Elixir.Sequence.Supervisor']},
              {vsn,"0.1.0"},
              {extra_applications,[logger]},
              {mod,{'Elixir.Sequence.Application',456}},
              {registered,['Elixir.Sequence.Server']}]}.
[
  plugins: [],
  import_deps: [:ecto],
  inputs: ["*.{heex,ex,exs}", "priv/*/seeds.exs", "{config,lib,test,rel,fake,dev}/**/*.{ex,exs}"],
  subdirectories: ["priv/*/migrations"]
]

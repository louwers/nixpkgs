{ caddy }:

# The plugin hash depends on the caddy version, so it must be updated together
# with every `caddy` bump.
(caddy.withPlugins {
  plugins = [ "github.com/caddy-dns/desec@v1.1.0" ];
  hash = "sha256-HrLRezw+q5+dRdJS662686n7xsImSxNb3UqlSo61R8E=";
}).overrideAttrs
  (previousAttrs: {
    meta = previousAttrs.meta // {
      description = "Caddy web server with the deSEC DNS provider plugin for ACME DNS challenges";
      homepage = "https://github.com/caddy-dns/desec";
    };
  })

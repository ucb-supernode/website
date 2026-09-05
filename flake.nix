{
  description = "Jekyll development environment for ucb-supernode/website";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            ruby_3_3
            bundler

            gnumake
            gcc
	    libffi
          ];

          shellHook = ''
            export GEM_HOME="$PWD/.gem"
            export PATH="$GEM_HOME/bin:$PATH"
            export BUNDLE_PATH="$PWD/.gem"

            echo "Jekyll dev shell ready. Ruby: $(ruby -v)"
            if [ ! -f Gemfile ]; then
              echo "No Gemfile found — run: bundle init && bundle add jekyll"
            fi
          '';
        };
      }
    );
}


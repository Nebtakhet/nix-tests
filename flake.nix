{
	description = "C/C++ dev enviroment";

	inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

	outputs = { nixpkgs, ...}:
	let
		system = "x86_64-linux";
		pkgs = nixpkgs.legacyPackages.${system};
	in {
		devShells.${system}.default = pkgs.mkShell {
			packages = [
				pkgs.gcc
				pkgs.gdb
				pkgs.valgrind
				pkgs.gnumake
			];

			shellHook = ''
				echo "C/C++ dev shell ready"
				'';
		};
	};
}

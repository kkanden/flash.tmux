{
  stdenv,
  zig,
}:
stdenv.mkDerivation {
  pname = "flash.tmux";
  version = "0.1.0";

  src = ./.;

  nativeBuildInputs = [ zig ];

  buildPhase = ''
    zig build
  '';

  installPhase = ''
    mkdir -p $out/bin
    cp zig-out/bin/flash_tmux $out/bin
  '';
}

{pkgs, ...}:

moga-neon-magenta = pkgs.stdenvNoCC.mkDerivation {
  pname = "moga-neon-magenta-cursor";
  version = "unstable";

  src = pkgs.fetchurl {
    url = "<та самая ссылка>";
    sha256 = pkgs.lib.fakeSha256;
  };

  nativeBuildInputs = [ pkgs.unzip ];

  installPhase = ''
    # тут нужно будет посмотреть, что реально внутри архива
  '';
};

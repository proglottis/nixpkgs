{ lib, stdenv, fetchFromGitHub, autoreconfHook }:

stdenv.mkDerivation rec {
  pname = "par2cmdline-turbo";
  version = "1.1.0";

  src = fetchFromGitHub {
    owner = "animetosho";
    repo = "par2cmdline-turbo";
    rev = "v${version}";
    hash = "sha256-+p6EeWn+tgZFRWSK4feQ4TIXJP+2iIcu9Ng0T6JNRCE=";
  };

  nativeBuildInputs = [ autoreconfHook ];

  meta = with lib; {
    homepage = "https://github.com/animetosho/par2cmdline-turbo";
    description = "par2cmdline × ParPar: speed focused par2cmdline fork";
    license = licenses.gpl2Plus;
    maintainers = [ maintainers.proglottis ];
    platforms = platforms.all;
  };
}

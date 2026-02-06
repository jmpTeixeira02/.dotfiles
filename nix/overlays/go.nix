final: prev: {
  go = prev.go.overrideAttrs (oldAttrs: rec {
    version = "1.25.7";
    src = prev.fetchurl {
      url = "https://go.dev/dl/go${version}.src.tar.gz";
      hash = "sha256-F48oMoICdLQ+F30y8Go+uwEp5CfdIKXkyI3ywXY88Qo=";
    };
  });
}

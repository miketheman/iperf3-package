class Iperf3 < FPM::Cookery::Recipe
  description 'Update of iperf: measures TCP, UDP, and SCTP bandwidth'
  homepage 'https://github.com/esnet/iperf'

  name 'iperf3'

  version '3.1.2'

  source "https://github.com/esnet/iperf/archive/#{version}.tar.gz"
  sha256 '48b5c783bb4a9c44f2bdcfe52c5d45b77ab1e1c82de3d0131f692457950811f9'

  build_depends 'curl', 'libtool'

  def build
    configure prefix: prefix
    make
  end

  def install
    make :install, 'DESTDIR' => destdir
  end
end

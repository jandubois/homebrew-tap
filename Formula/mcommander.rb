class Mcommander < Formula
  desc "Twin-panel terminal file manager with panel plugins"
  homepage "https://blue-panels.github.io/mcommander/"
  url "https://github.com/jandubois/mcommander/archive/02772132932aacdaaecb2f8600ad75afa4973a35.tar.gz"
  version "6.1.0-301-g027721329"
  sha256 "eee67aef8e732495c76303bd19b160e8b065f4c4c59e6b37d26fac844a52cedb"
  license "GPL-3.0-or-later"

  livecheck do
    skip "Pinned to a commit of the fork"
  end

  depends_on "meson" => :build
  depends_on "ninja" => :build
  depends_on "pkgconf" => :build

  depends_on "glib"
  depends_on "libarchive"
  depends_on "libmagic"
  depends_on "libssh2"
  depends_on "lua"
  depends_on "mongo-c-driver"
  depends_on "s-lang"

  uses_from_macos "curl"
  uses_from_macos "sqlite"

  on_macos do
    depends_on "gettext"
  end

  # The source archive has the po files but not the catalogs built from them,
  # so msgfmt is needed at build time; glibc provides libintl itself.
  on_linux do
    depends_on "gettext" => :build
    depends_on "zlib-ng-compat"
  end

  def install
    # A GitHub archive does not include .git, so version.sh reads this file.
    (buildpath/".tarball-version").write "v#{version}\n"

    # Every feature backed by a dependency above is explicit, since auto would
    # follow whatever happens to be on the build machine. Samba is off because
    # libsmbclient is a large tree for a rare plugin.
    args = %w[
      -Dscreen=slang
      -Dlua=enabled
      -Dmagic=enabled
      -Dzlib=enabled
      -Dnls=enabled
      -Dtests=disabled
      -Dpanel_plugin_sftp=enabled
      -Dshell_ssh2=enabled
      -Dpanel_plugin_samba=disabled
      -Dpanel_plugin_ftp=enabled
      -Dpanel_plugin_s3=enabled
      -Dpanel_plugin_arcmc=enabled
      -Dpanel_plugin_mongo=enabled
      -Dpanel_plugin_sqlite=enabled
    ]

    system "meson", "setup", "build", *std_meson_args, *args
    system "meson", "compile", "-C", "build", "--verbose"
    system "meson", "install", "-C", "build"

    # meson writes the perl, python3 and ruby that it found into the syntax
    # file, and under Homebrew on macOS ruby resolves to the superenv shim. A
    # build with no shim path leaves nothing to replace, which audit_result
    # allows.
    inreplace pkgshare/"syntax/Syntax", Superenv.shims_path.to_s, "/usr/bin",
              audit_result: false
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcommander --version")
  end
end

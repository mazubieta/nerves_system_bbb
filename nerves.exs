use Mix.Config

version =
  Path.join(__DIR__, "VERSION")
  |> File.read!
  |> String.strip

config :nerves_system_bbb, :nerves_env,
  type: :system,
  version: version,
  mirrors: [
    "https://github.com/nerves-project/nerves_system_bbb/releases/download/v#{version}/nerves_system_bbb-v#{version}.tar.gz",
    "https://s3.amazonaws.com/nerves/artifacts/nerves_system_bbb-#{version}.tar.gz"],
  platform: Nerves.System.BR,
  platform_config: [
    defconfig: "nerves_defconfig",
  ],
  checksum: [
    "linux",
    "rootfs-additions",
    "uboot",
    "bbb-busybox.config",
    "fwup.conf",
    "nerves_defconfig",
    "nerves.exs",
    "post-createfs.sh",
    "uboot-script.cmd",
  ]

cask "flight-engineer" do
  version "1.3.0"
  sha256 "be87bf6b5d0d83e964a4c0592cb862149851558925c4a7a5957690ce5c574578"

  url "https://github.com/floriandejonckheere/flight-engineer/releases/download/v#{version}/FlightEngineer-#{version}.zip"
  name "Flight Engineer"
  desc "Desktop widget monitoring GitHub Copilot AI credit usage"
  homepage "https://github.com/floriandejonckheere/flight-engineer"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Flight Engineer.app"

  # The app is ad-hoc signed and not notarized, so Gatekeeper would refuse to
  # open it while it carries the quarantine attribute.
  postflight_steps do
    run "/usr/bin/xattr",
        args:           ["-dr", "com.apple.quarantine", "{{appdir}}/Flight Engineer.app"],
        writable_paths: ["Flight Engineer.app"],
        writable_base:  :appdir
  end

  uninstall quit: "be.floriandejonckheere.FlightEngineer"

  zap trash: [
    "~/Library/Application Support/FlightEngineer",
    "~/Library/Caches/be.floriandejonckheere.FlightEngineer",
    "~/Library/Containers/be.floriandejonckheere.FlightEngineer.Widget",
    "~/Library/HTTPStorages/be.floriandejonckheere.FlightEngineer*",
    "~/Library/WebKit/be.floriandejonckheere.FlightEngineer",
  ]
end

cask "couchbase-server-enterprise" do
  on_el_capitan :or_older do
    version "4.5.1"
    sha256 "de014c7c134eb97ff00be6b2e6f5d0da84295ce05bbb7bb3a4d3c747a365cd22"

    url "https://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_x86_64.zip"

    app "couchbase-server-enterprise_#{version}/Couchbase Server.app"

    livecheck do
      skip "Legacy version"
    end
  end
  on_sierra :or_newer do
    version "7.1.3"
    sha256 "2acf5f3d32482b9595686b1d236be1d477dfa6fe06fd8ee81e2f0b77f824c589"

    url "https://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_x86_64.dmg"

    app "Couchbase Server.app"

    livecheck do
      url "https://www.couchbase.com/downloads"
      regex(/couchbase[._-]server[._-]enterprise[._-]v?(\d+(:?\.\d+)+)[._-]macos[._-]x86[._-]64\.dmg/i)
    end
  end

  name "Couchbase Server"
  desc "Distributed NoSQL cloud database"
  homepage "https://www.couchbase.com/"

  conflicts_with cask: "couchbase-server-community"
end

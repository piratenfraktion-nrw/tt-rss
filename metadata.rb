name             "tt-rss"
maintainer       "Walter Treur"
maintainer_email "wtreur@gmail.com"
description      "Installs/Configures tt-rss"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.1"

recipe "tt-rss", "Installs apache, php5, mysql and Tiny Tiny RSS"
recipe "tt-rss::apache-site", "Add a dedicated apache site configuration for Tiny Tiny RSS"

%w{debian ubuntu}.each do |os|
  supports os
end

depends "apt"
depends "apache2"
depends "php", ">= 1.1.8"
depends "mysql"
depends "database"

name             'media'
maintainer       'Kannan Manickam'
maintainer_email 'me@arangamani.net'
license          'Apache 2.0'
description      'Installs/Configures media'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.1'

%w{ ubuntu debian redhat centos fedora scientific }.each do |os|
  supports os
end

depends "nfs"

recipe 'media', 'Simply runs the media::mount_devices recipe'
recipe 'media::mount_devices', 'Mounts the specified media devices'
recipe 'media::setup_nfs_shares', 'Sets up the specified NFS shares'

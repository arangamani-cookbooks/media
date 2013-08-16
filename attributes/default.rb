#
# Cookbook Name:: media
# Recipe:: default
#
# Copyright (C) 2013 Kannan Manickam
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Media devices to mount. This is a hash of keys as the devices and values as
# their mount points.
#
# @example Example Hash
#   {
#     "/dev/sdb1" => "/mnt/movies",
#     "/dev/sdc1" => "/mnt/backups"
#   }
#
default['media']['devices'] = {}

# The user to be used for media mount points
default['media']['user'] = 'root'

# The group to be used for media mount points
default['media']['group'] = 'root'

# NFS shares to mount
# By default it takes all mount points given in the node['media']['devices']
# @example Example NFS Shares
#   ["/mnt/movies", "/mnt/backups"]
#
default['media']['nfs']['shares'] = node['media']['devices'].values

default['media']['nfs']['network'] = ''

default['media']['nfs']['writable'] = true

default['media']['nfs']['sync'] = true

default['media']['nfs']['options'] = ['no_root_squash']

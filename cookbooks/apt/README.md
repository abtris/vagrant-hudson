DESCRIPTION
===========

Configures various APT components on Debian-like systems.

RECIPES
=======

default
-------

The default recipe runs apt-get update during the Compile Phase of the Chef run to ensure that the system's package cache is updated with the latest. It is recommended that this recipe appear first in a node's run list (directly or through a role) to ensure that when installing packages, Chef will be able to download the latest version available on the remote APT repository.

This recipe also sets up a local cache directory for preseeding packages.

cacher
------

Installs the apt-cacher package and service so the system can be an APT cache.

proxy
-----

Installs the apt-proxy package and service so the system can be an APT proxy.

LICENSE AND AUTHOR
==================

Author:: Joshua Timberman (<joshua@opscode.com>)

Copyright 2009, Opscode, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


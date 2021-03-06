#
# Copyright 2014 John Bellone <jbellone@bloomberg.net>
# Copyright 2014 Bloomberg Finance L.P.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# NOTE: This is only supported for Ubuntu 12.04LTS and 14.04LTS.

if node['consul']['use_packagecloud_repo']

  packagecloud_repo "darron/consul" do
    type "deb"
  end

  packagecloud_repo "darron/consul-webui" do
    type "deb"
  end

end

package 'consul'
package 'consul-webui'

include_recipe 'consul::_service'

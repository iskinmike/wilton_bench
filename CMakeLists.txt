# Copyright 2018, alex at staticlibs.net
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

cmake_minimum_required ( VERSION 2.8.12 )

add_subdirectory ( samples/golang )

add_subdirectory ( samples/wilton_c )

# run wilton_js from wilton/build dir:
# ./bin/wilton_cli ../bench/samples/wilton_js/server.js -m ../js -s app

# express module is required for node example:
# npm install express --save
# npm install body-parser --save
# nodejs ../bench/samples/node/server.js

# libluajit-5.1-dev is required to build wrk
add_subdirectory ( tools )



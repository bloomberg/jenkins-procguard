# Jenkins Process Guard - Protect your processes from ProcessTreeKiller

Jenkins will not follow Unix as you would expect when trying to kill
processes. This makes sense on the cases where you want jenkins to
just kill everything that was triggered by a runaway make.

However, if you're trying to run something that supports a graceful
shutdown, you don't want the ProcessTreeKiller to traverse the entire
process tree killing all your processes, you want to have just the top
level process receiving the signal and waiting for it to finish.

This pair of scripts will run and monitor your process while at the
same time detaching it and completely dissociating from the the
environment where the jenkins job ran, which means that the process
killer will not try to kill it.

# Copyright

Copyright 2016 Bloomberg Finance L.P.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

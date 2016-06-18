use Module::Build;

my $build = Module::Build->new
  ( dist_abstract => 'Jenkins Process Guard',
    dist_author => 'Daniel Ruoso <druoso@bloomberg.net>',
    dist_version => '0.0.1',
    dist_name => 'jenkins-procguard',
    licence => 'apache2',
    script_files => [ qw<jenkins-procguard jenkins-procguard-monitor> ],
    meta_merge =>
      { resources =>
          { 'repository' =>
              'https://github.com/bloomberg/jenkins-procguard'
          },
    },
);
$build->create_build_script;

__END__

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

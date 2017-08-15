
require './common.iced'
semver = require 'semver'

# ==============================================================================
# tasks required for this build 
Tasks "dotnet"  # dotnet functions

# ==============================================================================
# Settings
Import
  initialized: false
  solution: "#{basefolder}/autorest.common.sln"

# ==============================================================================
# Tasks

task 'init', "" ,(done)->
  Fail "YOU MUST HAVE NODEJS VERSION GREATER THAN 7.10.0" if semver.lt( process.versions.node , "7.10.0" )
  done()
  
# Run language-specific tests:
# (ie, things that call stuff like 'mvn test', 'npm test', 'tox', 'go run' etc)
task 'test', "more", ["regenerate"], (done) ->
  # insert commands here to do other kinds of testing
  # echo "Testing More"
  done();
  

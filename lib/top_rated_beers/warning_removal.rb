#This file was created to remove the deprecation warning each time the program
#would run.  - Not a requirement -
# Source - https://stackoverflow.com/questions/56649240/how-to-suppress-deprecation-warnings

require 'warning'
Warning.ignore(/deprecated/)

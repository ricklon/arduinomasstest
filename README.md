# arduinomasstest
Massive Testing of Arduino Libraries

##Arduino Library Test Process:


###The Idea:
Library authors want to make sure their libraries work across multiple Arduino platforms. Typically, they want to know what boards work with their libraries. Arduino has a definition of what a library should be:
https://github.com/arduino/Arduino/wiki/Library-Manager-FAQ

The experience the user would like with Arduino libraries is that they just work or that they can be warned that their board or platform is not supported.

With this project Arduino library Authors would be able to present that status of their library with a test result badge that showed the status. These badges would be updated to represent:
Good code style
Code compiles properly
Works for specific boards
Works for specific platforms
Works everywhere™

###Specify Starting Point
Arduino IDE 1.6.7

###Library at Github:
Indicate you want your library tested
Indicate a specific branch, or build to test 
Every pull request would trigger a “merge” check
Every pull request would trigger a “coverage” check

###What can be tested for?
Code style
Compilation
Boards
Platforms

###Libraries are defined here:
https://github.com/arduino/Arduino/wiki/Library-Manager-FAQ

Each library should have a library.properties file.

In that library.properties
Indicate platforms supported
Indicate  boards supported 
Library dependencies


###Technologies:
Coveralls: https://coveralls.io/
Travis CI: 
https://travis-ci.org/getting_started, 
https://docs.travis-ci.com/user/customizing-the-build/

###Arduino Board Level Test Library
https://github.com/mmurdoch/arduinounit

###Docker Shipyard:
Docker Swarm: manage the central server for as many machines as want. Stop and spawn docker images on those machines. Spawn a docker instance 

###GitHub Webhooks:
https://developer.github.com/webhooks/



###RunTime Environment

Docker:
Arduino Official version
Use the Arduino Builder that comes with Arduino version
Copy all the libraries over
Run the compile test against all examples
Run the compile test against all test sketches
Run the linter to check for code style



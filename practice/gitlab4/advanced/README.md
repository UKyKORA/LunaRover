# Advanced Gitlab 4 

This is code that would be more applicable to being put directly on the robot.
The more clever and intuitive it is the better. **But still make it clean**. 

Additional requirements of the program are as follows: 
1. display_values should be a JSON object with top key: 'motors' and all attributes being subsequent keys.
2. all speeds should be checked that they are within range by an static method called: check_my_range().
    if it has an invalid value, adjust to the closest valid value
3. make a mutex (mutual exlusion) checker that says: 'can i drive x in current state'. Things that cannot be driven simultaniously.
  - any drive with any actuators
  - dig belt arm and dig belt actuator and/or dig belt.
4. make a position tracker
  - add speed to position at each method call of 'tick'
5. make a position checker that makes sure you are allowed to do something.
  - also check this at tick that can tell if the next tick will overdrive the motor and reduce the speed accordingly 
  - have class constants that are max position for dig arm and dig actuator
      - +/-100
6. Make all max/min positions, speed limits, and other arbitrary constants in the program descriptive class constants


# Boris Bike

Week 1 Afternoon Challenge at Makers. This was a collaborative exercise, pairing every day with a different member of the cohort. The objectives of the week were to learn to test drive a object orientated program. This was not only my first week at Makers, but the first time using Ruby for a fully functional program, and my first time using RSpec, the testing library.

The functionality of the app:

A user can create a bike object which can then dock in a DockingStation object - aimed at simulating the boris bike infostructure around London. A User can:

- Instantiate a new Docking Station
- Instantiate a new Bike
- Dock the Bike in the Docking Station
- Release the Bike from the Docking Station
- An error message will appear if the Max capacity is reached in a Docking Station and a Bike is docked
- An error message will appear if there are no Bikes to release from a Docking Station
- A user can confirm if the Bike they have released Is Working
- A user can report if a Bike is Broken

---

## How to Run

Clone this repo, and from the command line navigate to the [_BORIS_BIKE_](BORIS_BIKE). In the command line type:

```
irb
```

This will start the Ruby REPL. Then type the following:

```
require './lib/docking_station'
```

This will require the files you need to instantiate new Docking Stations and Bikes. This can be done by the following commands:

```
bike = Bike.new
dockingstation = DockingStation.new
```

This will return 2 Hexadecimal numbers, indicating the creation of the new objects. You can then type in the following commands to action the objects accordingly:

```

```

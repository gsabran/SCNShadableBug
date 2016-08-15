# SCNShadableBug

Reproduce a bug with SNCShadable where the Metal shader code that gets generated has errors that make the shader fail.

The code works well on non Metal devices (simulator, iPhone 5c) but not on Metal devices (iPhone 6).
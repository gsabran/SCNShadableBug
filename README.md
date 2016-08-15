# SCNShadableBug

Reproduce a bug with SNCShadable where the Metal shader code that gets generated has errors that make the shader fail.

The code works well on non Metal devices (simulator, iPhone 5c) but not on Metal devices (iPhone 6).

On the left: desire output, on the right: error
![Alt text](/error.jpg?raw=true)

The code fails with `error: redefinition of parameter 'u_diffuseTextureSampler'`

`u_diffuseTextureSampler` is defined once here: https://github.com/gsabran/SCNShadableBug/blob/master/debug.log#L543

and gets defined a second time here https://github.com/gsabran/SCNShadableBug/blob/master/debug.log#L570
The second definition seems to come from the Metal compilation of the [shader snippet](https://github.com/gsabran/SCNShadableBug/blob/master/SCNShadableBug/SceneController.swift#L29) that refers to `u_diffuseTextureSampler` but doens't define it.

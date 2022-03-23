# vcpkg-registry

Custom vcpkg registry. Contains my own libraries which are just used for own projects and ports that are not maintained by upstream and therefore not suited for vcpkg per policy.

Currently included packages:

* cpp-json-schema
* mylogger
* lua51 => lua 5.1.3
* lua52 => lua 5.2.4
* lua53 => lua 5.3.6
* turf
* junction

# usage
add the following to your `vcpkg-configuration.json`. For a more detailed explanation see https://github.com/microsoft/vcpkg/blob/master/docs/specifications/registries-2.md#consuming-registries
```
{
    "registries": [
        {
            "kind": "git",
            "repository": "https://github.com/mathisloge/vcpkg-registry.git",
            "packages": [] <-- !add the used ports here! eg: "lua51" for lua 5.1
        }
    ]
}
```

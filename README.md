# vcpkg-registry

Currently included packages:

* lua51 => lua 5.1.3
* lua52 => lua 5.2.4
* lua53 => lua 5.3.6


# usage
add the following to your `vcpkg-configuration.json`. For a more detailed explanation view https://github.com/microsoft/vcpkg/blob/master/docs/specifications/registries-2.md#consuming-registries
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

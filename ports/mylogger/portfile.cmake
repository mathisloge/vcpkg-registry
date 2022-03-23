vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO mathisloge/mylogger
    REF 5cdcd6130ffd87761c20c1eb16778774123c78bb
    SHA512 e71c2a82b7740e338c6660cae0ae136bd24ed6b1ec2a7b1bbc8ea68e2db625afcd01850ba04cacaa36d53f21f172b1bb813ca6c4c7f991a50ce48845a35a1f63
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        -DBUILD_TESTING=OFF
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup(CONFIG_PATH lib/cmake/mylogger)

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

# Handle copyright
file(INSTALL "${SOURCE_PATH}/LICENSE" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME copyright)

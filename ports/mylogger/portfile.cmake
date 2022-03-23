vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO mathisloge/mylogger
    REF 8bec5d9ab7ed05626b023c7baa02f9403cf13fd4
    SHA512 f2bb93195cbc1869c25a627518bf8da7901e999d436bfebe0734204435d2aa96df91c1b889c4dc4a4b943513813d2174497e2445b7aa54826d969c140c10b2bf
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

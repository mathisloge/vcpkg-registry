vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO mathisloge/mylogger
    REF 5f035c0fb9eba32de192785f58a3a473806f48aa
    SHA512 fd1bdb512a87b85b2ec9fb6b2103c20042aa399b8f1303a2f35e6c8592e4973e1ac182bd5b78d341a1e8ebb9ecf92e632ad5e03fa21426497763f023dec99da8
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

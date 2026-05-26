// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "AppleMobileDeviceLibrary",
    platforms: [
        .macOS(.v11),
    ],
    products: [
        .library(
            name: "AppleMobileDeviceLibrary",
            targets: ["AppleMobileDeviceLibrary"]
        ),
    ],
    dependencies: [
        .package(name: "OpenSSL", url: "https://github.com/Lakr233/openssl-spm.git", from: "3.2.0"),
    ],
    targets: [
        .target(name: "AppleMobileDeviceLibrary", dependencies: [
            "libimobiledevice",
            "libimobiledevice_glue",
            "libplist",
            "libusbmuxd",
            "libtatsu",
            "OpenSSL",
        ]),
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.05C3431D-0BE9-41D5-8D7E-9E46505EEDB9/libimobiledevice.xcframework.zip", checksum: "2efbc0c1d0b14ce1082527e31e624f4c39834e912bdb0b717bbffc12c5f2fff7"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.05C3431D-0BE9-41D5-8D7E-9E46505EEDB9/libimobiledevice_glue.xcframework.zip", checksum: "d60e27c34f3192860d2fc7e3230e92c1ed940078bbbb9925d8fcdc5d7d3bf9c0"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.05C3431D-0BE9-41D5-8D7E-9E46505EEDB9/libplist.xcframework.zip", checksum: "6118b3a8504827ba4b39263c0c915282573fa780f5529fdde966dfa093973727"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.05C3431D-0BE9-41D5-8D7E-9E46505EEDB9/libtatsu.xcframework.zip", checksum: "a7d0544c10a0762870ca2a3bf82e672b31067f0c44f3997188ba593a0e6289c5"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.05C3431D-0BE9-41D5-8D7E-9E46505EEDB9/libusbmuxd.xcframework.zip", checksum: "68464deaf03901ac888ee51681ce61e7739a362d851a14b2979c055388eb3bf3"),
    ]
)


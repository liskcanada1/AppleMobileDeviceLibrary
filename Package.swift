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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8FBEA377-6F28-4832-AFBB-07EB18E96807/libimobiledevice.xcframework.zip", checksum: "c782ee3d480b31c5680166f5cb22a916a078d1ad31d4ce3dcebb85eca0c6910e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8FBEA377-6F28-4832-AFBB-07EB18E96807/libimobiledevice_glue.xcframework.zip", checksum: "b60f488dc55416a408a0ca04cdbe0ac68f39a714a2598239daebaf3569aa565d"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8FBEA377-6F28-4832-AFBB-07EB18E96807/libplist.xcframework.zip", checksum: "8d806592a95ecd0354b1210bf7c41d051dfd77033263ad3b43f4bd7589e307d9"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8FBEA377-6F28-4832-AFBB-07EB18E96807/libtatsu.xcframework.zip", checksum: "87b20ce33e5c7e8c8022eeab23d7fe41db2c486085a6d8dffe3576ef38150f00"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8FBEA377-6F28-4832-AFBB-07EB18E96807/libusbmuxd.xcframework.zip", checksum: "a18b33a5725f88cf42fabc3d3e3ae0465e74a936d57488c48177de141081d1d6"),
    ]
)


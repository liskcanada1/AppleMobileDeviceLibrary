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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7DEFA82E-612B-42B3-AC18-44F9294A4A9E/libimobiledevice.xcframework.zip", checksum: "2083b707df2e801da04f02eabeff847262dc229bfd271039796a5436838990da"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7DEFA82E-612B-42B3-AC18-44F9294A4A9E/libimobiledevice_glue.xcframework.zip", checksum: "8e286d1707cff9f494ae862ccac6be494fb930fb376694dae2bbf22c9aeac582"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7DEFA82E-612B-42B3-AC18-44F9294A4A9E/libplist.xcframework.zip", checksum: "1ebf15a456752b191c39dcb160b4a3cc4557a628a3be25b1694e7ad24a804fcf"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7DEFA82E-612B-42B3-AC18-44F9294A4A9E/libtatsu.xcframework.zip", checksum: "bf9d0a81980d243958d9467cfbbcc747a08e4f8b80dffceab8ed19dfd057d211"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7DEFA82E-612B-42B3-AC18-44F9294A4A9E/libusbmuxd.xcframework.zip", checksum: "cc0d5826b1b5745b36cfcdc7ad64cbcae9133d63f339ca3ba650c7d8d1fd1831"),
    ]
)


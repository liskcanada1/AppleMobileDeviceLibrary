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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0890ED31-DB91-453F-A86F-66F90A28EEAA/libimobiledevice.xcframework.zip", checksum: "fc9944508eaf5add5568b40174811fff4f9df0b39936b4a3f72361a15a76cf28"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0890ED31-DB91-453F-A86F-66F90A28EEAA/libimobiledevice_glue.xcframework.zip", checksum: "aef254f39c2f1c15af3d34150666aa048ebef8eed7d97a5bf3acc5a6568a8277"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0890ED31-DB91-453F-A86F-66F90A28EEAA/libplist.xcframework.zip", checksum: "a290fec77d9ba561a300297c28f68fe5c9b4a9615722960e4f89ee6c1f5adf85"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0890ED31-DB91-453F-A86F-66F90A28EEAA/libtatsu.xcframework.zip", checksum: "2ee6c3df593b778e4271d5fe02c1fd2c198452d21b58de702d29cd6bcf7dfd0d"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0890ED31-DB91-453F-A86F-66F90A28EEAA/libusbmuxd.xcframework.zip", checksum: "7e08083cdfa9ddb958d83f8d2b6efd252424e50cc256a1dc14411bf30cbf7af2"),
    ]
)


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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5E9424E4-74C3-4303-A9AC-27E477CF2CA1/libimobiledevice.xcframework.zip", checksum: "77b74232c9f3b2b44c324acfe1ace487ce306e60ac30caec83adcbf9b7b9c180"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5E9424E4-74C3-4303-A9AC-27E477CF2CA1/libimobiledevice_glue.xcframework.zip", checksum: "5ce6dcdcaaa7a16e0622a066495021e99b98343859470093d6734062df90d8ba"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5E9424E4-74C3-4303-A9AC-27E477CF2CA1/libplist.xcframework.zip", checksum: "735d899396afe6602284e3a5bb603e467c82ad6f320cb0e1377247e4895795f6"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5E9424E4-74C3-4303-A9AC-27E477CF2CA1/libtatsu.xcframework.zip", checksum: "1ea51ed1a0fae78b836148dad3c91f442cce5c2f23375afb0433744d7e0d662a"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5E9424E4-74C3-4303-A9AC-27E477CF2CA1/libusbmuxd.xcframework.zip", checksum: "f6c24cb8b47d081bf507e00720d3673661711f056bc87d240aaae4374971d81a"),
    ]
)


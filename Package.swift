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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9C45EEFD-92BD-4D06-AD47-9AE3796AFC56/libimobiledevice.xcframework.zip", checksum: "ce2354b45f8359056d298325c7557fe5e2a8d87eb29fb5b8ae53e1d9bc352926"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9C45EEFD-92BD-4D06-AD47-9AE3796AFC56/libimobiledevice_glue.xcframework.zip", checksum: "479659582dcdf87c6035e647b8ce2c88f19b6470c0c9fcf6fbf0e64312cc3ffa"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9C45EEFD-92BD-4D06-AD47-9AE3796AFC56/libplist.xcframework.zip", checksum: "98c712a32406bf7a273b1f890aa6a56cc1afbfc20fe2e641e59cdf283ac2d4a0"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9C45EEFD-92BD-4D06-AD47-9AE3796AFC56/libtatsu.xcframework.zip", checksum: "51ee8178143119298aee5b78db513afcee0b9f95c55f9e004d8559d7c16d8054"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9C45EEFD-92BD-4D06-AD47-9AE3796AFC56/libusbmuxd.xcframework.zip", checksum: "82464292e09f1e077671af5f5f8a7bc6a700318b865cdca8dc2e799983ce202e"),
    ]
)


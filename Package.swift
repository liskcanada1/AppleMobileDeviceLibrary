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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CDBEFBD5-27CE-4D1E-825D-294DC1037510/libimobiledevice.xcframework.zip", checksum: "1f56c163d69625663a3c802a305e67971ed5b82241cb419fe4d0aa9e45efb5a0"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CDBEFBD5-27CE-4D1E-825D-294DC1037510/libimobiledevice_glue.xcframework.zip", checksum: "645a188f080e9998ff2812fbca642abde600f650d5d7de4892e486934ea424d5"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CDBEFBD5-27CE-4D1E-825D-294DC1037510/libplist.xcframework.zip", checksum: "b8c2f28a29fb6c7b02a9ebef1af7108b445987aebaeec0bf293d4ff8e6da0bc0"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CDBEFBD5-27CE-4D1E-825D-294DC1037510/libtatsu.xcframework.zip", checksum: "c73f0100fbc26adf5861c7599f00c411b48a6821727cbf6bcbdbda043843686d"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CDBEFBD5-27CE-4D1E-825D-294DC1037510/libusbmuxd.xcframework.zip", checksum: "2f43614cafdda0130bcb4d2e065cb81adc8d979ed35750a1bff94b0c46cb76dc"),
    ]
)


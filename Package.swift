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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.AE805769-09EE-437A-8DD8-DBE1AE129379/libimobiledevice.xcframework.zip", checksum: "9e3d04bf609477d06d198628a82dbdcee6491d7f0007965224e131cec8fe1406"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.AE805769-09EE-437A-8DD8-DBE1AE129379/libimobiledevice_glue.xcframework.zip", checksum: "ed17c2fd705e14f00a3148095caa6a60b5a9a4ddf686e79a3c0c490e50eff00e"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.AE805769-09EE-437A-8DD8-DBE1AE129379/libplist.xcframework.zip", checksum: "1500544779298781fbcef6290d388e466119eed6a827762cddfbb0a33402914b"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.AE805769-09EE-437A-8DD8-DBE1AE129379/libtatsu.xcframework.zip", checksum: "74c23acab2631be60441b2bfe6f585aea5a9553f2c7524b5fc387f168a423d07"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.AE805769-09EE-437A-8DD8-DBE1AE129379/libusbmuxd.xcframework.zip", checksum: "c2e3064afdf9b63ddda5a8caa6d0d1b74262a053db53cd6a29a825015620050d"),
    ]
)


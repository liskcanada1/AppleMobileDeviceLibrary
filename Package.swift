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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.418869EF-63DD-4619-951B-D6EA33E64D02/libimobiledevice.xcframework.zip", checksum: "8a1018b12abc75505029226fda0b31cc741fd5bf6986991174bcc0011e7b14ae"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.418869EF-63DD-4619-951B-D6EA33E64D02/libimobiledevice_glue.xcframework.zip", checksum: "d7e49ff870de28bf6304231ff3a44012e1a6a1293f806253d97ee44c0e52cb3e"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.418869EF-63DD-4619-951B-D6EA33E64D02/libplist.xcframework.zip", checksum: "0a630a8d602fe29db9b31afef1291677302df9ddbe265ae57fbe3e5038da8a8f"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.418869EF-63DD-4619-951B-D6EA33E64D02/libtatsu.xcframework.zip", checksum: "8ed1002da76f24eb35a9b46914d5691fd9c3b21b638efff210b2b4c92c8c01ab"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.418869EF-63DD-4619-951B-D6EA33E64D02/libusbmuxd.xcframework.zip", checksum: "b6f5dccbe033895ed2a0b2790737743c31f3520409451a53e531d842e2207657"),
    ]
)


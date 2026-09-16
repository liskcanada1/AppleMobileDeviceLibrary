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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.24028235-ABB2-41C8-BDED-85A3B1329CA2/libimobiledevice.xcframework.zip", checksum: "c91c91bc917c38e5cc1608d0d61d7ed0f2c383f8e27fa8c22f4853f35c4f75fe"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.24028235-ABB2-41C8-BDED-85A3B1329CA2/libimobiledevice_glue.xcframework.zip", checksum: "37fbb56931ed4f30182a82c2723479c7af344cd25d1bfebd57bcd9339d4bc222"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.24028235-ABB2-41C8-BDED-85A3B1329CA2/libplist.xcframework.zip", checksum: "4c78d3d930be622a668d631ab5e0c538ad2865e91f3cf77d53904dedb1b6d84e"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.24028235-ABB2-41C8-BDED-85A3B1329CA2/libtatsu.xcframework.zip", checksum: "e728ed8c304a76d16753800cb3996c3c54abd9485d85a7cfbd02eec3398d2091"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.24028235-ABB2-41C8-BDED-85A3B1329CA2/libusbmuxd.xcframework.zip", checksum: "0e5814ef4b9bbc7b834eca3a0275f6fefb4d5bf0d8a3792970f1404152a29cd0"),
    ]
)


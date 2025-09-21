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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C1FCDC9D-A179-4487-B6ED-75572ABDA887/libimobiledevice.xcframework.zip", checksum: "d22932d8228e0200afde646385c2f4860476f79d0a08b9f90efef6257d2beb95"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C1FCDC9D-A179-4487-B6ED-75572ABDA887/libimobiledevice_glue.xcframework.zip", checksum: "5b00d204904316fe1d1ab0e4751d939ba9d571377283fe1da880341287b3dfce"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C1FCDC9D-A179-4487-B6ED-75572ABDA887/libplist.xcframework.zip", checksum: "252ec5914aad304f1dbfe849c08db7d7eeab9f33147df75d4293db0ef50677b0"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C1FCDC9D-A179-4487-B6ED-75572ABDA887/libtatsu.xcframework.zip", checksum: "8c353b69f8b84723568326391f866f1fc457398709f077ec6d6b1e349aba8bf3"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C1FCDC9D-A179-4487-B6ED-75572ABDA887/libusbmuxd.xcframework.zip", checksum: "7ea661f8b34ace966213b1e0109589a3243e9dde836db4df89f22a5103c7cfc6"),
    ]
)


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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.80427551-A507-4B35-B0DF-9655CCB976AC/libimobiledevice.xcframework.zip", checksum: "0fedb89d42966e1cfa854771d604e48dbc32db3ff743d21d16157f9bab041439"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.80427551-A507-4B35-B0DF-9655CCB976AC/libimobiledevice_glue.xcframework.zip", checksum: "e05264ae5f15e2c1470b0bb9377622ce9ce9d744bdd0edd34d23c35ea1bf9524"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.80427551-A507-4B35-B0DF-9655CCB976AC/libplist.xcframework.zip", checksum: "4a1e21fec9479339f1061532d325998c02d637bcc57be19d7a663d094cf14df2"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.80427551-A507-4B35-B0DF-9655CCB976AC/libtatsu.xcframework.zip", checksum: "0889a95501a9775bb2ad623a2703d4c385502d77f10d8343b1c156a7daa52d58"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.80427551-A507-4B35-B0DF-9655CCB976AC/libusbmuxd.xcframework.zip", checksum: "6ab4872edd48eb272e7999ba489452b3e6ee7140c711c6be45a016a9bf8e6e39"),
    ]
)


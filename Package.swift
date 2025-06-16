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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.512A0E2B-8452-4F70-99D1-CB80D117EF0D/libimobiledevice.xcframework.zip", checksum: "af2027992cfbd7966617c2d1e75f2027afc494675f9e9d1521059a163086c90a"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.512A0E2B-8452-4F70-99D1-CB80D117EF0D/libimobiledevice_glue.xcframework.zip", checksum: "40a1091bd9b32cde3f6a3cb00efa1547dc4765ef00fbec0e72f4508ef0069a33"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.512A0E2B-8452-4F70-99D1-CB80D117EF0D/libplist.xcframework.zip", checksum: "582874ae0dcc28218b2b8c1d63e35302cb6b3445045d5928b2c105d010239843"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.512A0E2B-8452-4F70-99D1-CB80D117EF0D/libtatsu.xcframework.zip", checksum: "2edaf0207ba8a919a67d632e8ecfe64c5886fbaf7c7e612a4838e16b62dd40af"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.512A0E2B-8452-4F70-99D1-CB80D117EF0D/libusbmuxd.xcframework.zip", checksum: "4a1da9db1292aa03f653bdd756d93e94c78a13a29635d6f2a27bc35504da0b6a"),
    ]
)


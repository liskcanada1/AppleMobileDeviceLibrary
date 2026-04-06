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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3A631C76-6744-4E23-9872-019EF2404441/libimobiledevice.xcframework.zip", checksum: "c3f1caf8e7bb8ca0bdfd6a095165d6e66f300fedcb37912e1b693d1507785f4e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3A631C76-6744-4E23-9872-019EF2404441/libimobiledevice_glue.xcframework.zip", checksum: "0def9e397cd21eb94a2cae6f1e74f5102d575d4336f0aee875ffe8816eb82ced"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3A631C76-6744-4E23-9872-019EF2404441/libplist.xcframework.zip", checksum: "9c81f11a086a8bf54965df3879fd55f110c53f6abe2e824c4e8396c4a379f32d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3A631C76-6744-4E23-9872-019EF2404441/libtatsu.xcframework.zip", checksum: "b67e4f20e995e50efd1f9814536891d7e8bff9dce898ce060a300f936467c3fb"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3A631C76-6744-4E23-9872-019EF2404441/libusbmuxd.xcframework.zip", checksum: "21599f66b8f344b5d22f5a2a7cb9180ea07dd1217c19e393b4fd2e8c1907fe03"),
    ]
)


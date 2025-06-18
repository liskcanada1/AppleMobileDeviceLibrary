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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F9D253FE-81DE-491B-9F86-F004A13720B9/libimobiledevice.xcframework.zip", checksum: "20c5dd305af0bf935792190f548856df56078a4ad5cf67dc7a66ab747fa1bdeb"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F9D253FE-81DE-491B-9F86-F004A13720B9/libimobiledevice_glue.xcframework.zip", checksum: "6ca174a343927c6b8488481c4719ebbcc72313ed87f03b24bdf8284ca3d36d58"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F9D253FE-81DE-491B-9F86-F004A13720B9/libplist.xcframework.zip", checksum: "5b193dfd8aaa4de20e068bdc2f0a3020bd379cf746eea78c4c12fd6eb49d37ce"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F9D253FE-81DE-491B-9F86-F004A13720B9/libtatsu.xcframework.zip", checksum: "81f899a91e595bb89b2f1e34fd4abe0143aecb296119af5c22f51a613fddb8e7"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F9D253FE-81DE-491B-9F86-F004A13720B9/libusbmuxd.xcframework.zip", checksum: "a7b6a30a1f618bf3e891ac7713004b394bd5954bc2663a15d4cb199bb6c6eaa4"),
    ]
)


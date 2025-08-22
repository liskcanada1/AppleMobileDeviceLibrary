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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5BFE6AFB-6CFC-48BF-83B2-67ECD1A524AC/libimobiledevice.xcframework.zip", checksum: "d88bcf2c310157cd6ad54c17460af473516b1052be5222a9f6be492c3aa139f5"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5BFE6AFB-6CFC-48BF-83B2-67ECD1A524AC/libimobiledevice_glue.xcframework.zip", checksum: "6ae287c6e740977a7740307dd1051ef9f4f8b39c89356096c207b1ed0e5749a4"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5BFE6AFB-6CFC-48BF-83B2-67ECD1A524AC/libplist.xcframework.zip", checksum: "bb65986c9066065b11ad6a4d77e049d1d850800edfafad5697be4f8f57730ea6"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5BFE6AFB-6CFC-48BF-83B2-67ECD1A524AC/libtatsu.xcframework.zip", checksum: "3e1e4cee305524d015761f9a0cd8805554f5e94854f0e6ebf89ccb8e171cca60"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5BFE6AFB-6CFC-48BF-83B2-67ECD1A524AC/libusbmuxd.xcframework.zip", checksum: "8570b20840c18618a742c537c377c88668dbaf0350163ec98b6a9b58de2cb2c7"),
    ]
)


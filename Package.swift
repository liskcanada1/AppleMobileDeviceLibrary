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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E1DCE149-F41D-4B1D-AA0A-4BA5FFBDF33C/libimobiledevice.xcframework.zip", checksum: "12276dc424e694a0555099138d17e124c07f1a6d0079125bb8ce8bf5a190ec6e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E1DCE149-F41D-4B1D-AA0A-4BA5FFBDF33C/libimobiledevice_glue.xcframework.zip", checksum: "137d603f8f94d641cb758fe0e7e041b6ed43b98f9a4639f0b1d0a769adc92f0f"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E1DCE149-F41D-4B1D-AA0A-4BA5FFBDF33C/libplist.xcframework.zip", checksum: "7f42df133be58fa2f6770a800ad71a9e91b531ad241de33906750cccb9e2eeab"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E1DCE149-F41D-4B1D-AA0A-4BA5FFBDF33C/libtatsu.xcframework.zip", checksum: "5ac6535df7757a09d24d3d1c49cf1bbe233a6516e8e09fe49fa274017cf37026"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E1DCE149-F41D-4B1D-AA0A-4BA5FFBDF33C/libusbmuxd.xcframework.zip", checksum: "2d36a3a357267ff63899bf0bc081c9d58afbacde705b7e6d272c19d4977683a3"),
    ]
)


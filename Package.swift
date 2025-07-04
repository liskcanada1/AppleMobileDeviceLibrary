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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.EDD93C14-3787-44D2-9986-65465466BC13/libimobiledevice.xcframework.zip", checksum: "41554ab532636d74a69d50503a61b9020a3480599fda01a64086eb93c3c92879"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.EDD93C14-3787-44D2-9986-65465466BC13/libimobiledevice_glue.xcframework.zip", checksum: "3340a1b830154c34b373ce96f65d4db19a4564d2b6b3b4dce2bdb7e9fa7956b3"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.EDD93C14-3787-44D2-9986-65465466BC13/libplist.xcframework.zip", checksum: "b5c0e62aa4ba4a139a467390bbb93fd02fea1efbb71d45f80317f2287ddcc521"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.EDD93C14-3787-44D2-9986-65465466BC13/libtatsu.xcframework.zip", checksum: "3c09cf88d8f9d7a556a5e90a1f03d1b7cc5d1231ef79489406c64a0999688522"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.EDD93C14-3787-44D2-9986-65465466BC13/libusbmuxd.xcframework.zip", checksum: "f6b84ec53823743e3ddea4eba9dc21ea2e5e98607e470ed6800dc8d93827cc24"),
    ]
)


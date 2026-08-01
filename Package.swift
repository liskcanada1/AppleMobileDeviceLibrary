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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2CBFDC62-AFD8-44ED-8118-F1D50F628148/libimobiledevice.xcframework.zip", checksum: "9366b1624081d7cc36fb1e137effe4c476420689f3563ed1bcbb0a9d2ef4f39f"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2CBFDC62-AFD8-44ED-8118-F1D50F628148/libimobiledevice_glue.xcframework.zip", checksum: "49ff43a3ad35732eee454c6f90aad7c6ebeb22ed78d19972f7f7b5761d973b4a"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2CBFDC62-AFD8-44ED-8118-F1D50F628148/libplist.xcframework.zip", checksum: "860d87335359e686739924e9b824329d73de10171e779039beb179c79072c97c"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2CBFDC62-AFD8-44ED-8118-F1D50F628148/libtatsu.xcframework.zip", checksum: "4d10a6aa6ce181867b673caf24e745cff320f9d9ff79eebd9c3a09bd38577352"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2CBFDC62-AFD8-44ED-8118-F1D50F628148/libusbmuxd.xcframework.zip", checksum: "acb475404d1f9c8a79ecb8b77548bff72773891d64b7623400df4f25a5a77a8d"),
    ]
)


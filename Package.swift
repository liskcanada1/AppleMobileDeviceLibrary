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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.BD076C6E-145A-4C38-B6CF-BEDBFAD5FBD7/libimobiledevice.xcframework.zip", checksum: "03ea8d56f26c3825626686440df7fe13c957299edcd774766feb21107bae541d"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.BD076C6E-145A-4C38-B6CF-BEDBFAD5FBD7/libimobiledevice_glue.xcframework.zip", checksum: "a92454c8f8d64e7473638e9936a7237c7a0bba86c8ca9628b2b953d2be5a1e8c"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.BD076C6E-145A-4C38-B6CF-BEDBFAD5FBD7/libplist.xcframework.zip", checksum: "d0cc809d9ddc176d8b95e08b6623d68e980b968984f204fe1a6eacc395c9a15b"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.BD076C6E-145A-4C38-B6CF-BEDBFAD5FBD7/libtatsu.xcframework.zip", checksum: "07a3caec2bac32852e37c390563751fd6bf72f98225c146c9787ddab2a15d4c2"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.BD076C6E-145A-4C38-B6CF-BEDBFAD5FBD7/libusbmuxd.xcframework.zip", checksum: "43fcdb71b29d520f286d5608b780a3f07facf506126e2bd5fde94611fdf71d2f"),
    ]
)


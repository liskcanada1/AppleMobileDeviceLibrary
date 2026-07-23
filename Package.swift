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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FFBA0BF2-8EBD-4FDF-A523-3FC5A193D1ED/libimobiledevice.xcframework.zip", checksum: "ba3ca68c987bff180b8bb98177dff07572051e5b8977a94298cdd8bf64f9cc71"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FFBA0BF2-8EBD-4FDF-A523-3FC5A193D1ED/libimobiledevice_glue.xcframework.zip", checksum: "507931c111cda96afdbc9c263a473e7927eacf073058a4c03d06c8ffa6c37d45"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FFBA0BF2-8EBD-4FDF-A523-3FC5A193D1ED/libplist.xcframework.zip", checksum: "aae27ae9b20cda526269b45575c1ad288c1c07bd90b32714d11cb307ad394626"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FFBA0BF2-8EBD-4FDF-A523-3FC5A193D1ED/libtatsu.xcframework.zip", checksum: "a270fb350f81f9db0646f7d08df1fe32a6bc3361af703b7661182f421bd3127f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FFBA0BF2-8EBD-4FDF-A523-3FC5A193D1ED/libusbmuxd.xcframework.zip", checksum: "ed9141aa8cc48245c436d6d066911f5724d17c59a04cfd1ec193b7907db56a9b"),
    ]
)


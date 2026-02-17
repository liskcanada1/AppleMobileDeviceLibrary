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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1D6D6401-7BA6-4863-AE48-49F6D927945E/libimobiledevice.xcframework.zip", checksum: "11dfda7adcbf7dec365a39a3349fbece8ed7f4efcb02b4d9a1d613cb10e67584"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1D6D6401-7BA6-4863-AE48-49F6D927945E/libimobiledevice_glue.xcframework.zip", checksum: "b7dff8e41b3f0bd0f6f5ee464bbf0d6d5d9f7e7d6c790d4a77a3c0ba6f12550e"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1D6D6401-7BA6-4863-AE48-49F6D927945E/libplist.xcframework.zip", checksum: "8e4b3465df29379eee1b72ede883daee6a9ced4739cca31e8609f1509ec11968"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1D6D6401-7BA6-4863-AE48-49F6D927945E/libtatsu.xcframework.zip", checksum: "4f9d34190fa601b5dc6248b921a6e0f8a22b8123cc91905b56884d1a431d37ee"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1D6D6401-7BA6-4863-AE48-49F6D927945E/libusbmuxd.xcframework.zip", checksum: "eec5b4a0f9969affecb81efdce98cf108dea445899b390b3fcb30f36e5d02e70"),
    ]
)


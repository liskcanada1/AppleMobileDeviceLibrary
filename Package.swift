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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6CDE72F4-A9B3-4F1C-ADAB-02CCFB8A8B68/libimobiledevice.xcframework.zip", checksum: "3cabdf2174435d3e52f1991280d8ae85a9afbbf2bba81986c682e541d2dc7e60"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6CDE72F4-A9B3-4F1C-ADAB-02CCFB8A8B68/libimobiledevice_glue.xcframework.zip", checksum: "f189523ed5e2b06eb3e8f132fbd992fed6d620038da1cd665bdf1407f1ca3e52"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6CDE72F4-A9B3-4F1C-ADAB-02CCFB8A8B68/libplist.xcframework.zip", checksum: "8f64cc0cd76adfcedee31462dc95f5fd6d690d6e7dcfd50d0093337ad6738060"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6CDE72F4-A9B3-4F1C-ADAB-02CCFB8A8B68/libtatsu.xcframework.zip", checksum: "e584387bf1252260af0139975a3d5d20fe7f166ff93ef3a3261c335f83224700"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6CDE72F4-A9B3-4F1C-ADAB-02CCFB8A8B68/libusbmuxd.xcframework.zip", checksum: "f36002ed15e2d41cf5c183fec835876d4dc48a82d5405bc78c5c63ab348ada70"),
    ]
)


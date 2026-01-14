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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7184EF01-4602-44D7-866D-2F273E1E44F5/libimobiledevice.xcframework.zip", checksum: "0c4c31ae0c2eb7a016c193adc8e2038ec9a6743f05c59aefa47d385a1c2eab3b"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7184EF01-4602-44D7-866D-2F273E1E44F5/libimobiledevice_glue.xcframework.zip", checksum: "2d2ea566a43fb3cf20c9ef1883547b727563a40ea77f5c2310e93c3661263447"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7184EF01-4602-44D7-866D-2F273E1E44F5/libplist.xcframework.zip", checksum: "b096ba96d3932567ac0c97a1f27c7a6b314195fa14620565e9721156082721c9"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7184EF01-4602-44D7-866D-2F273E1E44F5/libtatsu.xcframework.zip", checksum: "f660752e68593b1450fd7ee2a23ea48ed12be9fc32ece69430c483c376c1d622"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7184EF01-4602-44D7-866D-2F273E1E44F5/libusbmuxd.xcframework.zip", checksum: "38e16e49b6c75775ef82bfa96dd3185c0a20c233fa65bca223d187aa93807996"),
    ]
)


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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.838F98D4-7DE2-405C-AB47-4CC5F9EA847C/libimobiledevice.xcframework.zip", checksum: "c13b57f0b4532038dd77b240561a5d1937d397fd363eb12a5535c8b6fbc0aaee"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.838F98D4-7DE2-405C-AB47-4CC5F9EA847C/libimobiledevice_glue.xcframework.zip", checksum: "541df19ebedf8fa187a75bd7814adb7553a83a212712899ce9e90a6ad7a0ed1e"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.838F98D4-7DE2-405C-AB47-4CC5F9EA847C/libplist.xcframework.zip", checksum: "c282bd37c4bc0feb74a1780fb48a6d20fdf9fdfa4846f14c71a0b3f73fbe85af"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.838F98D4-7DE2-405C-AB47-4CC5F9EA847C/libtatsu.xcframework.zip", checksum: "bd2418a7deba59bf5b4196fc9bbd86b2fde0bfc1cbb9c319deedfe0b283f06b8"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.838F98D4-7DE2-405C-AB47-4CC5F9EA847C/libusbmuxd.xcframework.zip", checksum: "977ec0215515def1e730c29bc2717340e36f8e9ed485f2db336c36ac856ee13f"),
    ]
)


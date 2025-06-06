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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7E738573-E42D-47A7-B89C-2E0D35C270F4/libimobiledevice.xcframework.zip", checksum: "ca9dfb1633e17a9960f05d6ace3ddffecab120d831cbdf1f79406b8582461180"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7E738573-E42D-47A7-B89C-2E0D35C270F4/libimobiledevice_glue.xcframework.zip", checksum: "55b0bcc881130284e60f77b66396eeb5c2b28961f2d2c44ab577307adc3bffd0"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7E738573-E42D-47A7-B89C-2E0D35C270F4/libplist.xcframework.zip", checksum: "38e504b52312b175d08ff4579dd6224671704eb051787626032298725bf43419"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7E738573-E42D-47A7-B89C-2E0D35C270F4/libtatsu.xcframework.zip", checksum: "80a149e8f9a57cb0c74d772a9253605c3262f7bae32df2a8c6d3366188cafa11"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7E738573-E42D-47A7-B89C-2E0D35C270F4/libusbmuxd.xcframework.zip", checksum: "4bd276e1bfa432ea11846f64b09ada192dd6bda30eaf743f88549457f17bc405"),
    ]
)


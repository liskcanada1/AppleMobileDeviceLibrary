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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4F466854-2F7E-4581-8146-978EF3917DB5/libimobiledevice.xcframework.zip", checksum: "deb86d3930de3954cf2a79d54a2c7039d999e1c71f92794722e70df20eeb3e5e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4F466854-2F7E-4581-8146-978EF3917DB5/libimobiledevice_glue.xcframework.zip", checksum: "5afe97d548fc5670f3e6c641ec899ccffd83a9cb77ed5fdd7835dadd543a7d23"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4F466854-2F7E-4581-8146-978EF3917DB5/libplist.xcframework.zip", checksum: "9c8c3d9e11aa6f417f967b21724ac194de09add9423c854cdac7c8d20d3ac177"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4F466854-2F7E-4581-8146-978EF3917DB5/libtatsu.xcframework.zip", checksum: "2a4a7b5db6ff75057afe883f9b83dc72abe50a1856896f6bb08d304fae4a83cd"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4F466854-2F7E-4581-8146-978EF3917DB5/libusbmuxd.xcframework.zip", checksum: "d4463fb516f2e1618344553edb3d32f574dda8d37fb6fa211a7d60b555676429"),
    ]
)


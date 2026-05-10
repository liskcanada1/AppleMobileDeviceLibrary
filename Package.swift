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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.12378242-08A5-4D56-9942-FBCA6A8DE159/libimobiledevice.xcframework.zip", checksum: "b0c431f11cebbb31452b7158c117c69ae9bfbcd290c6d12bb5ff69841fb41108"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.12378242-08A5-4D56-9942-FBCA6A8DE159/libimobiledevice_glue.xcframework.zip", checksum: "3070fb051b7d050fb2c8641d455011ef8731eeaa6e24f730ef20655eb3559aa3"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.12378242-08A5-4D56-9942-FBCA6A8DE159/libplist.xcframework.zip", checksum: "9ab44c85e90682ce0d0ce3541f1e9a770a2cf90efa5cbc78523ae1fd3c9159e5"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.12378242-08A5-4D56-9942-FBCA6A8DE159/libtatsu.xcframework.zip", checksum: "53dd208f77b49c723cd2044606135ccf7a72444b264d783fad47103897b5e30a"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.12378242-08A5-4D56-9942-FBCA6A8DE159/libusbmuxd.xcframework.zip", checksum: "d21ca31870443192e6fcf807059b65bd0877a87ac17526dffdae3d05a5c2bef0"),
    ]
)


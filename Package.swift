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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3D8D2556-8A28-40F1-A5CE-EE8EFC937B9D/libimobiledevice.xcframework.zip", checksum: "6d0511a7e51c39af5a627c2c68098bd24ab74c579e4167376dd5a3d852f9360c"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3D8D2556-8A28-40F1-A5CE-EE8EFC937B9D/libimobiledevice_glue.xcframework.zip", checksum: "2aa6855752cea063f2af32e7c3549ebb9fbdc3b3feaa83e6d42bf17df5ca66ac"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3D8D2556-8A28-40F1-A5CE-EE8EFC937B9D/libplist.xcframework.zip", checksum: "2a82db708babd741b4fc4b16486e86af408a6cdec3a53372c2ae9b7d4bd619fb"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3D8D2556-8A28-40F1-A5CE-EE8EFC937B9D/libtatsu.xcframework.zip", checksum: "27b6274786bcb6f0f78abdb0af3345ca83ee3133d12cb3a4e088a17f69ac554f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3D8D2556-8A28-40F1-A5CE-EE8EFC937B9D/libusbmuxd.xcframework.zip", checksum: "b220969315371f348473ad5458fdbd957c5ad612b8f8074cf3a07928657297b0"),
    ]
)


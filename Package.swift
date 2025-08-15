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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7A425392-11D2-4ECB-A4F7-5EF5D88B59D0/libimobiledevice.xcframework.zip", checksum: "d313f00ddc1fef813c1e329d9306c2e12b69713952e633871157191c7643317e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7A425392-11D2-4ECB-A4F7-5EF5D88B59D0/libimobiledevice_glue.xcframework.zip", checksum: "338b42bbfff6e664b684e306f0b651b0b6a9004f187b10e5af46bcc7934cf30a"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7A425392-11D2-4ECB-A4F7-5EF5D88B59D0/libplist.xcframework.zip", checksum: "4c33c5cefe898a053b7e9f1710d0fbd1d1e2bd5a17875dd6e3de9489e7602298"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7A425392-11D2-4ECB-A4F7-5EF5D88B59D0/libtatsu.xcframework.zip", checksum: "d75f27ac259ef6b3211d37c5eedbf7664e677ba23c90dfeac7ea105d722bf3eb"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7A425392-11D2-4ECB-A4F7-5EF5D88B59D0/libusbmuxd.xcframework.zip", checksum: "42fb2a2bdd60bed00c33b157f3ee84037fd4238b6eea96283ee86b444b9400aa"),
    ]
)


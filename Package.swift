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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9D1FC9DA-F040-4902-A192-0E0193F607D0/libimobiledevice.xcframework.zip", checksum: "b7459e15d65508226d8f46a54575868295258d95e4cb36ec874d877dbac5b250"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9D1FC9DA-F040-4902-A192-0E0193F607D0/libimobiledevice_glue.xcframework.zip", checksum: "7f94f769c50ab2585b1305d009dc256a24a03d5ab0a0f37aa9287598800149bc"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9D1FC9DA-F040-4902-A192-0E0193F607D0/libplist.xcframework.zip", checksum: "23bcd3cff83facfc6cb240358ad709802ee6d1a16caac2658113c9180b89d257"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9D1FC9DA-F040-4902-A192-0E0193F607D0/libtatsu.xcframework.zip", checksum: "f1fdf29e62bdd2a20fa0aea35e2e7e51e34d04f127dc318b5b728f2f866597dc"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9D1FC9DA-F040-4902-A192-0E0193F607D0/libusbmuxd.xcframework.zip", checksum: "e53f2e86444ecd7f9b24e00a7d40a6f0adf0ffd9462f7fb8f0b86a81812ceaf5"),
    ]
)


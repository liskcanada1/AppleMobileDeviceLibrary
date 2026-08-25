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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7A8D87DF-67B0-40C1-BC81-754410E5735F/libimobiledevice.xcframework.zip", checksum: "f46707f05d9b3344d10fcebef376097ff2418d8489f3922bdc33cf465d4f1bf6"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7A8D87DF-67B0-40C1-BC81-754410E5735F/libimobiledevice_glue.xcframework.zip", checksum: "84a54d38f4cef7101eda94f5a6c7af397ec9c7ebc55a91a2ec07abda78d9c507"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7A8D87DF-67B0-40C1-BC81-754410E5735F/libplist.xcframework.zip", checksum: "78615f6e19dc9fad88bfaf156cc0bd7a1545be4da00be05ab4baf20777333b0d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7A8D87DF-67B0-40C1-BC81-754410E5735F/libtatsu.xcframework.zip", checksum: "6716f08b118827027d265a27afb1a9d883bec7abcde362ce3df940ee592d6821"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7A8D87DF-67B0-40C1-BC81-754410E5735F/libusbmuxd.xcframework.zip", checksum: "21bb075f625e080cd6215b5f95bf6753c4cd81316cb0db37db0cd77190304c8b"),
    ]
)


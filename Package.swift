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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.44B8E283-3086-41EF-B823-3F6C4DF706B6/libimobiledevice.xcframework.zip", checksum: "57aceaa3996f8c1998d4f68cf7be7ccc922965e023003745590c361c2e61cac4"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.44B8E283-3086-41EF-B823-3F6C4DF706B6/libimobiledevice_glue.xcframework.zip", checksum: "eb6c2169ee37edc76101b36b24ebac530376a79c1f4f1cf8b81881cbcec89e89"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.44B8E283-3086-41EF-B823-3F6C4DF706B6/libplist.xcframework.zip", checksum: "3947f6b207d94db2f42e9af7efd1da546dd969f158834db2df9baba455154c2e"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.44B8E283-3086-41EF-B823-3F6C4DF706B6/libtatsu.xcframework.zip", checksum: "92c2ece71ad8ac246678f8ff4097200ae3128e6b7e9c36c23d016c2b40be3a87"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.44B8E283-3086-41EF-B823-3F6C4DF706B6/libusbmuxd.xcframework.zip", checksum: "b54e7ecb9706e7e0bc70b18fe5a6b220e3f05992477bd20d87d2bd4cc6f47a2b"),
    ]
)


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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B4B5E526-2C41-469C-B454-76B514250FD0/libimobiledevice.xcframework.zip", checksum: "57545fb8198033389e5cc7d5a1a967b19b37a461c12638b27cffed94717f41b4"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B4B5E526-2C41-469C-B454-76B514250FD0/libimobiledevice_glue.xcframework.zip", checksum: "925ff60eab8e420c523df3a1a82e283b5e870aabdb91951306cef4614b37c679"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B4B5E526-2C41-469C-B454-76B514250FD0/libplist.xcframework.zip", checksum: "0e5119d96f26ef20d48d192cc93d178e1584421de8f350ea1012f5c40ed4fa0d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B4B5E526-2C41-469C-B454-76B514250FD0/libtatsu.xcframework.zip", checksum: "77cb0034e846fec81c0a014c4698014fe9956a2ef0d37d16b9c2008afdc690e5"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B4B5E526-2C41-469C-B454-76B514250FD0/libusbmuxd.xcframework.zip", checksum: "1737411566a5243af93a1f89b24639711ccc5c89e18294d4600ae97d44a7a336"),
    ]
)


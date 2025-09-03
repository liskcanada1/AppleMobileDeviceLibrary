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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DABE5A35-5059-433E-99C1-46EF51990637/libimobiledevice.xcframework.zip", checksum: "e9839782c96a447edb9721ab89415f70dc9f804d86ef01dcf95ee580fde8ce0b"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DABE5A35-5059-433E-99C1-46EF51990637/libimobiledevice_glue.xcframework.zip", checksum: "d865d7ef9183df53dd75199027296fa203c4a3a9c166cf6368b10f7e16ac3f23"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DABE5A35-5059-433E-99C1-46EF51990637/libplist.xcframework.zip", checksum: "6af028cf2dd0e5986d63ac1330a401bc815fbd59cdc47e32a2f909eba9709a33"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DABE5A35-5059-433E-99C1-46EF51990637/libtatsu.xcframework.zip", checksum: "4af05968a687b9a00d695c8fe900863c1edb74a43f7d4ace1748e60c64a0e4e3"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DABE5A35-5059-433E-99C1-46EF51990637/libusbmuxd.xcframework.zip", checksum: "111a3579fbdad98a5b830144296a8ec349328416e565ddf59ea5d0f6c3cb654c"),
    ]
)


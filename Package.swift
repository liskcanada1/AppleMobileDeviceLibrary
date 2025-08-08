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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.46E5F5B4-58AA-40B3-81AD-11BF0F2592A2/libimobiledevice.xcframework.zip", checksum: "98682ddfee288a663354216348ee714e32700a70ff95316b5ea06dac09371aba"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.46E5F5B4-58AA-40B3-81AD-11BF0F2592A2/libimobiledevice_glue.xcframework.zip", checksum: "9e29d354a54a8270e21b1f4fa871b8daa5d697abbd25b753d6d38dc75ba1fa87"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.46E5F5B4-58AA-40B3-81AD-11BF0F2592A2/libplist.xcframework.zip", checksum: "2183ef9f4593e5e799db41f5b8320dbb0dcc92106a32504b9695adfdd6f2aaed"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.46E5F5B4-58AA-40B3-81AD-11BF0F2592A2/libtatsu.xcframework.zip", checksum: "9dff0e4e7ab3e61390a4cf36004181589e03efc039b312397a8b9111a9f4e1ec"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.46E5F5B4-58AA-40B3-81AD-11BF0F2592A2/libusbmuxd.xcframework.zip", checksum: "3a8f5eca433a64f1196f1eef93cad1cad3e64e568d663a63bb913cbf27632cc8"),
    ]
)


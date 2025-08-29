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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4C4C9422-72F8-480F-8D8B-C2B67C31E6EA/libimobiledevice.xcframework.zip", checksum: "8c314cc4a7702d24f497053d6c5b0a75db580a0c2f7b05ee45475d0cc8ae9794"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4C4C9422-72F8-480F-8D8B-C2B67C31E6EA/libimobiledevice_glue.xcframework.zip", checksum: "f26d2632acb1f3596fb18f75109ccf53122e67f0de7c1cf6a317d7335c117d2d"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4C4C9422-72F8-480F-8D8B-C2B67C31E6EA/libplist.xcframework.zip", checksum: "5019b925fa1d40829dfdb31ea859f8a18eb8f369a5f84ce8e69b2fd2116271ff"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4C4C9422-72F8-480F-8D8B-C2B67C31E6EA/libtatsu.xcframework.zip", checksum: "da9627172efb2bfe664d2469992efcedd3eb9d1e3d83e985cc0d428e846274d1"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4C4C9422-72F8-480F-8D8B-C2B67C31E6EA/libusbmuxd.xcframework.zip", checksum: "80716dbb5f10254ec4ab7e681f5ed52bd955db5356d1f3cf5f023825749b7334"),
    ]
)


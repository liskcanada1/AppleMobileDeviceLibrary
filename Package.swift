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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.18F6C9C1-ACAD-449E-AEF6-4F5501285F92/libimobiledevice.xcframework.zip", checksum: "54290a54758fe475c3f70491e35fa9e0345cce194187ff3c481c2692dea71c5c"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.18F6C9C1-ACAD-449E-AEF6-4F5501285F92/libimobiledevice_glue.xcframework.zip", checksum: "9f5423bd0b5f03802d4038efa54740ec3aaa77eabbe0652ab0490cc650cf3873"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.18F6C9C1-ACAD-449E-AEF6-4F5501285F92/libplist.xcframework.zip", checksum: "bab209ec2deb017fd9fb519312b1777b9292a5c2c705642db61a142851fe0724"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.18F6C9C1-ACAD-449E-AEF6-4F5501285F92/libtatsu.xcframework.zip", checksum: "f88253c917f9b56fe3d97e35c3f99e6a921933bfb8e039a52b7699646900d3ef"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.18F6C9C1-ACAD-449E-AEF6-4F5501285F92/libusbmuxd.xcframework.zip", checksum: "9e3f54c248ea4257554ff4ecd8541cd23e2d4f1fcf17f89a25c238ae6345239f"),
    ]
)


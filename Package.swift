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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E61EC18D-6304-40EB-BA34-06C8DBDF5FF3/libimobiledevice.xcframework.zip", checksum: "6a0c6a83ed5643b20cd97eaf1f1605a37f8f010f449fdbcea8e85c8d05627e29"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E61EC18D-6304-40EB-BA34-06C8DBDF5FF3/libimobiledevice_glue.xcframework.zip", checksum: "d1109478e8ab92c77d03b806df9b52ed286e126efdd02457d2f1b877bcfb2bac"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E61EC18D-6304-40EB-BA34-06C8DBDF5FF3/libplist.xcframework.zip", checksum: "d9d3eae4aa7ceaccce22acc5c64e1a50c3d547e4504c33f1c6e7795b779c3243"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E61EC18D-6304-40EB-BA34-06C8DBDF5FF3/libtatsu.xcframework.zip", checksum: "10b3814691c5c32f27e4b31117c32cfe6bcb59f6774831d666012e064e38deea"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E61EC18D-6304-40EB-BA34-06C8DBDF5FF3/libusbmuxd.xcframework.zip", checksum: "30512492f9a9eb4a983f24475d10f356dd617ed360b872bd67cd9b858924d707"),
    ]
)


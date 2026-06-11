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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4B3D390C-B51F-45ED-BB31-C7F2386FBB66/libimobiledevice.xcframework.zip", checksum: "aa055a840d97ad25d3a8bf60ac6f89e428b6a32629e3eca9622b308c16f3d57e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4B3D390C-B51F-45ED-BB31-C7F2386FBB66/libimobiledevice_glue.xcframework.zip", checksum: "1f21603a46194eb99de450ecf63a05b4fb9410ded42e7b52276c2603d62a65db"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4B3D390C-B51F-45ED-BB31-C7F2386FBB66/libplist.xcframework.zip", checksum: "f54157ad1ef8734d6187e9584a855fedc92ffdfdd90c16101cd984ec44cb028d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4B3D390C-B51F-45ED-BB31-C7F2386FBB66/libtatsu.xcframework.zip", checksum: "25170d552f6d1cb9579bd041cbd1262ab77c2981bc98b453c53d7ca437210166"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4B3D390C-B51F-45ED-BB31-C7F2386FBB66/libusbmuxd.xcframework.zip", checksum: "4c1334caddf68a36b0fcc453cfb20e4587d22c3cb5eedf72a7ea47d628f7a64a"),
    ]
)


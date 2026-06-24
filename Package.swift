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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.281DBE3E-BBC1-4D15-A268-B8418E0DC2F4/libimobiledevice.xcframework.zip", checksum: "c3ff07ade8636285b92571c8423a08e6d735bb9df5c81fcdadff8f5b10aa33ea"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.281DBE3E-BBC1-4D15-A268-B8418E0DC2F4/libimobiledevice_glue.xcframework.zip", checksum: "ff4d6230d90950bec61d09f8a13aeb543f926327720bf7d9635963bea8c234d0"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.281DBE3E-BBC1-4D15-A268-B8418E0DC2F4/libplist.xcframework.zip", checksum: "75d01bd67b2d0d36d769b5bb45f3fd07312287b7932d4c42ddea9b25bb13c50c"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.281DBE3E-BBC1-4D15-A268-B8418E0DC2F4/libtatsu.xcframework.zip", checksum: "8d7a4be17d377acb301dc89ede54eb858cd9daefe871393ced25cf199d089364"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.281DBE3E-BBC1-4D15-A268-B8418E0DC2F4/libusbmuxd.xcframework.zip", checksum: "aa177c68bfc0e8d249aeb688106c99ba0d262cfa16c18ec53d3a6500cbfdb6ec"),
    ]
)


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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D7B6DDB0-5690-4EFB-ADEF-E43F616045E2/libimobiledevice.xcframework.zip", checksum: "f9986200dc8e59cdd4ad7781af3cd21eecc0ebbcfc2fbdedc2bdf96b69540f36"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D7B6DDB0-5690-4EFB-ADEF-E43F616045E2/libimobiledevice_glue.xcframework.zip", checksum: "1b1bbaccaf25d0f180cb6aa5840c084ed523d2a72e4b4bac5a3f8100ca8bcf93"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D7B6DDB0-5690-4EFB-ADEF-E43F616045E2/libplist.xcframework.zip", checksum: "e7ce7cd8c47061e07f3410b6d0357d61408ef96ed769d3e9f028e864b33d8934"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D7B6DDB0-5690-4EFB-ADEF-E43F616045E2/libtatsu.xcframework.zip", checksum: "25b915e4ed28b1807be2b745e1851ba4d027178e3d6df25068066bf0fd0bf996"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D7B6DDB0-5690-4EFB-ADEF-E43F616045E2/libusbmuxd.xcframework.zip", checksum: "251c3d35f86d111c315b2393b2893d628bd37fb70ab6edcab8eecb9790110523"),
    ]
)


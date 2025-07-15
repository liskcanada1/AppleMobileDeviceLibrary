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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F53155B1-E7DD-4C84-87B4-45BF51B01EB4/libimobiledevice.xcframework.zip", checksum: "f7346813530ba7988a2602492b9d9decf6ed99c5c358119cd27175c127930018"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F53155B1-E7DD-4C84-87B4-45BF51B01EB4/libimobiledevice_glue.xcframework.zip", checksum: "02ec6d36e521f6950e9237196ec3b491367df4fbffdb79c6be8d2bac20073ef8"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F53155B1-E7DD-4C84-87B4-45BF51B01EB4/libplist.xcframework.zip", checksum: "4ccbaa5f446579815d711665dbfdba2b3b102e0c89f3b82cad1969167b304792"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F53155B1-E7DD-4C84-87B4-45BF51B01EB4/libtatsu.xcframework.zip", checksum: "07efb3488b6dbfcd5c9ccb5bf34748463b93aef102bd1f60cdfb7e9c4ddd525e"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F53155B1-E7DD-4C84-87B4-45BF51B01EB4/libusbmuxd.xcframework.zip", checksum: "fb7b2e6bf50069ac06e8dbb2b2b89a1e0aec63d65c77c14ce6ec728e82a7a76c"),
    ]
)


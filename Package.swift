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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.164AAD6F-ADE8-4984-AFF2-5B50DE52B727/libimobiledevice.xcframework.zip", checksum: "0fbeb7f0daa72a480e731abec8e92b68830228ac0dae5a1c2bb8e536104bb95d"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.164AAD6F-ADE8-4984-AFF2-5B50DE52B727/libimobiledevice_glue.xcframework.zip", checksum: "bef649db0d0e2697eb4750dd87bf2f368edd5b934ae1731fee3ecba2b8fccea3"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.164AAD6F-ADE8-4984-AFF2-5B50DE52B727/libplist.xcframework.zip", checksum: "b31a71e5d2baf7468bd7bbaacad258dfe0df00ef647ad8451c3c875ca0c580da"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.164AAD6F-ADE8-4984-AFF2-5B50DE52B727/libtatsu.xcframework.zip", checksum: "02ecf390f3045745ddb5f084ef3f731ea8b8ad7cc5e791de4c0258cda2df5a8d"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.164AAD6F-ADE8-4984-AFF2-5B50DE52B727/libusbmuxd.xcframework.zip", checksum: "035ff75d9bb1c8cd2034ce23b0f48a600a9b93e6211bf07fcdcc1f7c3aedbea3"),
    ]
)


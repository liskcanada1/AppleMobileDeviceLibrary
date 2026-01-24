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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B458C1AE-CBDE-4268-BA5D-9A6587F25F8A/libimobiledevice.xcframework.zip", checksum: "f4243d620360841ce298a4fe10cc609cbd1831596186429600c2fb0e465d3345"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B458C1AE-CBDE-4268-BA5D-9A6587F25F8A/libimobiledevice_glue.xcframework.zip", checksum: "8a7269104944c735f4117afe61d04330de8b71e0caad7ec3c1467db7528a5329"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B458C1AE-CBDE-4268-BA5D-9A6587F25F8A/libplist.xcframework.zip", checksum: "760922f0c53a89ac386189d2a364a82fa19e226c26fca668113b68a35fc715c4"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B458C1AE-CBDE-4268-BA5D-9A6587F25F8A/libtatsu.xcframework.zip", checksum: "5e125e63ab04379bd8c0411a0cb588ca07edd113737233327ccf29ae107eb8a8"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B458C1AE-CBDE-4268-BA5D-9A6587F25F8A/libusbmuxd.xcframework.zip", checksum: "472347a1414d00c494019b2f1a48adf17e926a2f5ba900eaa34f71ae301091eb"),
    ]
)


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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A4ED7AB8-4F37-4A9E-949A-29E030A2332F/libimobiledevice.xcframework.zip", checksum: "916e460c13f86bb5846131a60616066eeac353081f21b9fd789095eb773cbdd9"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A4ED7AB8-4F37-4A9E-949A-29E030A2332F/libimobiledevice_glue.xcframework.zip", checksum: "d70be6587e94b882d8916cc02b06491a33350641d49df6481083346ce23eda33"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A4ED7AB8-4F37-4A9E-949A-29E030A2332F/libplist.xcframework.zip", checksum: "7337b3b0ebc9c4450c1c7b72c647a14e7083e2664a98306363c5cdfb29d4ff0d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A4ED7AB8-4F37-4A9E-949A-29E030A2332F/libtatsu.xcframework.zip", checksum: "a5a45bebf813815e279966999617a0ded910eb481719221baeb321e0d3aff446"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A4ED7AB8-4F37-4A9E-949A-29E030A2332F/libusbmuxd.xcframework.zip", checksum: "482e4afbeedaa0b15f2db31c3e280bf94739c049ea96e44e7090b8080e93e217"),
    ]
)


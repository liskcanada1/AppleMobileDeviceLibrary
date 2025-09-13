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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1746B3B5-6E3D-4F40-B122-A139BF08EABF/libimobiledevice.xcframework.zip", checksum: "0b04d631b5cf3412fc244e8e2aa110fc93aced93fc3ce3ab7a1057524240e869"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1746B3B5-6E3D-4F40-B122-A139BF08EABF/libimobiledevice_glue.xcframework.zip", checksum: "31940e0b426aa647d23092b2eb350b04ab34fd3b0ab762dc086e8fa8bcb7f94c"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1746B3B5-6E3D-4F40-B122-A139BF08EABF/libplist.xcframework.zip", checksum: "6e03faef3fb1296cd284902bc6a8bc267f641df08c33ae734e94084742089cb9"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1746B3B5-6E3D-4F40-B122-A139BF08EABF/libtatsu.xcframework.zip", checksum: "03a736885035db5063426267106b5dada073486dfafd32a682c459513e61cbdc"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1746B3B5-6E3D-4F40-B122-A139BF08EABF/libusbmuxd.xcframework.zip", checksum: "d705a00aebc6d2b45819b80a1fa760984329b1d417d15acbc536b192a15fa128"),
    ]
)


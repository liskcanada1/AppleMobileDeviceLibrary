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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.69488255-3184-4DA3-BAAA-77A443A0B7F8/libimobiledevice.xcframework.zip", checksum: "e6ac5c3aa1be5c45b135a4f3dd65d6d0ad4f50a2648d3b845a3b746417f1b5a3"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.69488255-3184-4DA3-BAAA-77A443A0B7F8/libimobiledevice_glue.xcframework.zip", checksum: "53f5cc703be618ac70e844314a1f45f03ee3307fd82734064b442968eb926061"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.69488255-3184-4DA3-BAAA-77A443A0B7F8/libplist.xcframework.zip", checksum: "249a48837e2061fa0dc192a80c3f185dd5c0bf3531d825c25ec6e1336a316957"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.69488255-3184-4DA3-BAAA-77A443A0B7F8/libtatsu.xcframework.zip", checksum: "f66dda8cac72c4020d70e8da0eb6fe5fdb07ddda6420509705830779da33abbd"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.69488255-3184-4DA3-BAAA-77A443A0B7F8/libusbmuxd.xcframework.zip", checksum: "a9b69c7fbf911a16b65210aafa62b72ee66be856cf64008f45c52efccbe1b662"),
    ]
)


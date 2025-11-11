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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.27A8F871-AD37-4498-91A5-05BF35390470/libimobiledevice.xcframework.zip", checksum: "b47d220c0bc7f425c228ba6e0fb87f7b20dfba1ea0425de516c1bd30b58f66d7"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.27A8F871-AD37-4498-91A5-05BF35390470/libimobiledevice_glue.xcframework.zip", checksum: "3e3deb45f0149d39364ec051f8c854e5a672afb3ef3582388aaf031a9a8932bb"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.27A8F871-AD37-4498-91A5-05BF35390470/libplist.xcframework.zip", checksum: "3db4eac89d8f0ac17a378ca22bde604928526fce4f45ca40901c61736a9b2b4e"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.27A8F871-AD37-4498-91A5-05BF35390470/libtatsu.xcframework.zip", checksum: "2b425e8f24093512e807abb96e78629a5fd378079c6896e160810009ad186415"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.27A8F871-AD37-4498-91A5-05BF35390470/libusbmuxd.xcframework.zip", checksum: "865d11513f3af32773588cf74e90aab07afd67ab68705b7b165eab1db06235e5"),
    ]
)


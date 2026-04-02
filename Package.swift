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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4009039A-7A1E-4081-837A-DDB88C4DC26E/libimobiledevice.xcframework.zip", checksum: "a8e69933434f57ae3caf12a4a46853b25cf398f004f5b7407b908fdeed1b164f"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4009039A-7A1E-4081-837A-DDB88C4DC26E/libimobiledevice_glue.xcframework.zip", checksum: "142a88f1c059ebca260ffb15b47dddcf66efb46f4f9412d05ff194c354644d19"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4009039A-7A1E-4081-837A-DDB88C4DC26E/libplist.xcframework.zip", checksum: "b2d1beea7ae35065b765ee3ba780d8e95a5106b737f0237193867cc05930440b"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4009039A-7A1E-4081-837A-DDB88C4DC26E/libtatsu.xcframework.zip", checksum: "2f683e6f6b14a2d111a7995e8a8570d5e86f62cbba998aba385f993066beacee"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4009039A-7A1E-4081-837A-DDB88C4DC26E/libusbmuxd.xcframework.zip", checksum: "7dc8e1ae60930d0cfee5b2b4f2981bdbcc82bcf503accda16854c8e20246f41a"),
    ]
)


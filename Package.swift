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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7B75165C-C3C9-4400-8615-3868F270093C/libimobiledevice.xcframework.zip", checksum: "45b1961eb55779b5a1414b74dba7b968a4248ad06ac52e228e781ecf003997d1"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7B75165C-C3C9-4400-8615-3868F270093C/libimobiledevice_glue.xcframework.zip", checksum: "591248ae4879bb9581d401212eb910a8cbe84f7e0f3015b82a7f84d598d8f97c"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7B75165C-C3C9-4400-8615-3868F270093C/libplist.xcframework.zip", checksum: "0d50b0ea4aedd8f5638305a580d87dd9d4f16e9e8aab43581c13defca5d3c1fc"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7B75165C-C3C9-4400-8615-3868F270093C/libtatsu.xcframework.zip", checksum: "b871ae0ad5666bcc4410c292cdfc91cbaedc982f9155a1a2ffdfd9520a9b1fb9"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7B75165C-C3C9-4400-8615-3868F270093C/libusbmuxd.xcframework.zip", checksum: "6a288cb69e7bb759c1652b7ce822e442b80adcaa63d098f04f711cd96b1f905c"),
    ]
)


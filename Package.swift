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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.ECE11D1D-6E78-46FE-9BC2-65E909773D47/libimobiledevice.xcframework.zip", checksum: "c44353c32c9a17f77955cc06578ad89b1d02ae50307a09eb9f9fa139540f6259"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.ECE11D1D-6E78-46FE-9BC2-65E909773D47/libimobiledevice_glue.xcframework.zip", checksum: "38f395f0ffb22128f38cf12742ec62b6074ac2eca1979d97d46f7daed2e95555"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.ECE11D1D-6E78-46FE-9BC2-65E909773D47/libplist.xcframework.zip", checksum: "f9ce8229bc55824e732bb808aadc60090243b89015568f17fd55655ff945fd6f"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.ECE11D1D-6E78-46FE-9BC2-65E909773D47/libtatsu.xcframework.zip", checksum: "3466efe934d887c043a27489bb216535d9708909d2e2fd94d577128a1b8db4d7"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.ECE11D1D-6E78-46FE-9BC2-65E909773D47/libusbmuxd.xcframework.zip", checksum: "968b735c11c9bac7abfabbeff9e06d4da95841aa53318f88aa8683da4617afae"),
    ]
)


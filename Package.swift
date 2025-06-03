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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9C81360F-3706-459F-A27E-C4B3975F2EBF/libimobiledevice.xcframework.zip", checksum: "4abd2efb532a4bdbd05bc627c416f36133a4a3fa2045bbc2ed26d031753b5b00"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9C81360F-3706-459F-A27E-C4B3975F2EBF/libimobiledevice_glue.xcframework.zip", checksum: "d202b063aae4ffd4c10900247d91017a11044493e9f2b9c4e9a59c0e4dbdc576"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9C81360F-3706-459F-A27E-C4B3975F2EBF/libplist.xcframework.zip", checksum: "d48e21bc9a30255c7dbbce64db7c8582acaf7896c923c54561a18d871d4df80f"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9C81360F-3706-459F-A27E-C4B3975F2EBF/libtatsu.xcframework.zip", checksum: "de07295cbdd1840761fdc6024e466b62ab8849d0eac88e5a2e963765ab96ecea"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9C81360F-3706-459F-A27E-C4B3975F2EBF/libusbmuxd.xcframework.zip", checksum: "f1a4b66c8b930d9a889c883582a095d7f091ec919c29b95518e7bf8fe3913c3d"),
    ]
)


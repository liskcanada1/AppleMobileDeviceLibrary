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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C1CBACFA-2D25-4EAD-9923-FE4569EB2BE1/libimobiledevice.xcframework.zip", checksum: "78a6032c551211462841f47ed2d1003e37ff97e68ca9b0a5a94349421464fde6"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C1CBACFA-2D25-4EAD-9923-FE4569EB2BE1/libimobiledevice_glue.xcframework.zip", checksum: "e3aa8c171c6f003d117dae8db9368e24dfcb4e56a51fa866308467be0ed5ffbf"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C1CBACFA-2D25-4EAD-9923-FE4569EB2BE1/libplist.xcframework.zip", checksum: "14f71844788fc92c4626bc6d226721bc72a9131770d94c50f348b73db8e706b7"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C1CBACFA-2D25-4EAD-9923-FE4569EB2BE1/libtatsu.xcframework.zip", checksum: "302007b8c6ea579c064f9e689937fc745f0ad51ea0d776161413afc24c264a56"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C1CBACFA-2D25-4EAD-9923-FE4569EB2BE1/libusbmuxd.xcframework.zip", checksum: "e11f2180c41d67925dc77650e99746fd0c4b10ba98f5b76670a0e00469afb31e"),
    ]
)


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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1839E180-375B-46D4-960C-DEC1C1E376ED/libimobiledevice.xcframework.zip", checksum: "5de9a90571a6858a5ffe964d900b6ad2ee385ae42bf89c8ad07928362ddef3ff"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1839E180-375B-46D4-960C-DEC1C1E376ED/libimobiledevice_glue.xcframework.zip", checksum: "36aef6953d6ab06a642e784b87f653097a9e8fd3ebee45d06964f757c7868826"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1839E180-375B-46D4-960C-DEC1C1E376ED/libplist.xcframework.zip", checksum: "3afd3077833eb032f1e70dcbdeee9914df16ce3f57b2ef19876adfec20af753c"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1839E180-375B-46D4-960C-DEC1C1E376ED/libtatsu.xcframework.zip", checksum: "44e488b7acd44f46f1753ef416f2bd28358a92f6d374259ebf104db41e2f53a1"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1839E180-375B-46D4-960C-DEC1C1E376ED/libusbmuxd.xcframework.zip", checksum: "50fc9a238e1818764145d062f0f7e6e3676b01dbee7abec4763ad1855cc1e9a4"),
    ]
)


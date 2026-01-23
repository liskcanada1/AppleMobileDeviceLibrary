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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1F1858AE-ECDF-4D06-AF57-F46B79C36068/libimobiledevice.xcframework.zip", checksum: "9beb2bf757590bfcbe0f4f5cc9a677cf3de771793cab7ee0227194da82282fd8"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1F1858AE-ECDF-4D06-AF57-F46B79C36068/libimobiledevice_glue.xcframework.zip", checksum: "216af5eddca02e640ef69dbd1d80fe48444bbc577cfdb561da770f7221beac04"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1F1858AE-ECDF-4D06-AF57-F46B79C36068/libplist.xcframework.zip", checksum: "a797cbb1b463c8cfd55e8775af818a4d1e88a9faf2fcf6057bb7654203fd2934"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1F1858AE-ECDF-4D06-AF57-F46B79C36068/libtatsu.xcframework.zip", checksum: "18d16845b4007c881abc36751f018fa1e09731064c47b65fd5979e672dcc08c7"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1F1858AE-ECDF-4D06-AF57-F46B79C36068/libusbmuxd.xcframework.zip", checksum: "4657599270f5ec7a3b3364d33838bef6747dddb4268c46230f7fe4b704e135a4"),
    ]
)


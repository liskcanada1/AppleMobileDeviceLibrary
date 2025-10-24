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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F30B1FF9-CD26-463B-A081-F7265CE2F9F9/libimobiledevice.xcframework.zip", checksum: "7a168e04dbffd5dd6bcd430de9d7dde5072d4ce0af1b95fa5cd580f2f49e9218"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F30B1FF9-CD26-463B-A081-F7265CE2F9F9/libimobiledevice_glue.xcframework.zip", checksum: "50fad28f2fa3cac04754cfeed11c40b8e3912b399abf292f654e8dc492974dd5"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F30B1FF9-CD26-463B-A081-F7265CE2F9F9/libplist.xcframework.zip", checksum: "8168de010a7c2ff4481e3307094f0bcb1770338f066be90924feba095293fc31"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F30B1FF9-CD26-463B-A081-F7265CE2F9F9/libtatsu.xcframework.zip", checksum: "1f66870cf16ff6780b7ec1cb98907e16d757c0cb43efe666c7840bb74057c195"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F30B1FF9-CD26-463B-A081-F7265CE2F9F9/libusbmuxd.xcframework.zip", checksum: "d2b5740c500e5187fe3fc2ab6f92560371bcd42e0352bfd28d1463b12d66d192"),
    ]
)


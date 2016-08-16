import PackageDescription

let package = Package(
    name: "ZWeatherServer",
    dependencies: [
        .Package(url: "https://github.com/qutheory/vapor.git", majorVersion: 0, minor: 16),
        .Package(url: "https://github.com/qutheory/mysql.git", majorVersion: 0, minor: 4)
    ],
    exclude: [
        "Config",
        "Database",
        "Localization",
        "Public",
        "Resources",
        "Tests",
    ]
)

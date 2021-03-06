#if os(Linux)
import XCTest

@testable import NoonianKitTests

XCTMain([
    testCase(CommandTaskTests.allTests),
    testCase(RunnerTests.allTests),
    testCase(ParserTests.allTests),
    testCase(YamlParserTests.allTests),
    testCase(EnvironmentTests.allTests),
    testCase(StringNoonianKitTests.allTests),

    // MARK: Android specific
    testCase(BuildTests.allTests),
    testCase(InitCommandTests.allTests),
    testCase(NoonianConfigurationTests.allTests),
    testCase(AndroidCommandTests.allTests),
    testCase(PackageTests.allTests),
    testCase(InstallTests.allTests),
    testCase(SDKPathBuilderTests.allTests),
    testCase(NoonianKitErrorTests.allTests),
])
#endif

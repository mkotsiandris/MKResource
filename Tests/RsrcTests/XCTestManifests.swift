import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(RsrcTests.allTests),
        testCase(CodableTests.allTests),
        testCase(StringResourceTests.allTests),
        testCase(UIImageTests.allTests)
    ]
}
#endif

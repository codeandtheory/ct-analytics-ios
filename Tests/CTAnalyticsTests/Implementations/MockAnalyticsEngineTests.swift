//
//  MockAnalyticsEngineTests.swift
//  CTAnalyticsTests
//
//  Created by Mark Pospesel on 2/21/23.
//

import XCTest
@testable import CTAnalytics

final class MockAnalyticsEngineTests: XCTestCase {
    func testTrack() throws {
        // Given
        let sut = makeSUT()
        let data = MockAnalyticsData()

        XCTAssertTrue(sut.allEvents.isEmpty)

        // When
        data.allEvents.forEach { sut.track(event: $0) }

        // Then
        XCTAssertLogged(engine: sut, data: data)
    }
}

extension MockAnalyticsEngineTests {
    func makeSUT(file: StaticString = #filePath, line: UInt = #line) -> MockAnalyticsEngine {
        let sut = MockAnalyticsEngine()
        trackForMemoryLeak(sut, file: file, line: line)
        return sut
    }
}

//
//  AnalyticsEngineTests.swift
//  CTAnalyticsTests
//
//  Created by Mark Pospesel on 3/8/23.
//

import XCTest
@testable import CTAnalytics

final class AnalyticsEngineTests: XCTestCase {
    func test_trackFactory_tracksEvents() {
        // Given
        let engine = MockAnalyticsEngine()

        // When
        MockEvent.allCases.forEach {
            engine.track(event: $0)
        }

        // Then
        XCTAssertEqual(engine.allEvents.count, 3)
        XCTAssertEqual(engine.screenViews.joined(), "abcdefxyz")
    }
}

private extension AnalyticsEngineTests {
    enum MockEvent: String, CaseIterable, ScreenViewFactory {
        case abc
        case def
        case xyz
    }
}

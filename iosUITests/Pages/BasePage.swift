import XCTest

class BasePage {
    let app: XCUIApplication

    init(app: XCUIApplication) {
        self.app = app
    }

    func waitForElement(_ element: XCUIElement, timeout: TimeInterval = 10) -> Bool {
        return element.waitForExistence(timeout: timeout)
    }

    func tapElement(_ element: XCUIElement) {
        XCTAssertTrue(waitForElement(element))
        element.tap()
    }

    func typeText(_ text: String, into element: XCUIElement) {
        XCTAssertTrue(waitForElement(element))
        element.tap()
        element.doubleTap()
        element.typeText(text)
    }
    
    func typeSecureText(_ text: String, into element: XCUIElement) {
        XCTAssertTrue(waitForElement(element))
        element.tap()
        element.typeText(text)
    }

    func clearText(in element: XCUIElement) {
        XCTAssertTrue(waitForElement(element))
        element.doubleTap()
        element.typeText("")
    }

    func isElementVisible(_ element: XCUIElement) -> Bool {
        return element.exists && element.isHittable
    }
    
    func isElementEnabled(_ element: XCUIElement) -> Bool {
        return element.exists && element.isEnabled
    }
} 

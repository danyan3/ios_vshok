import XCTest

class ProfilePage: BasePage {
    
    var logoutButton: XCUIElement {
        return app.buttons[Constants.AccessibilityIds.profileLogoutButton]
    }
    
    var name: XCUIElement {
        return app.staticTexts[Constants.AccessibilityIds.profileName]
    }
    
    var status: XCUIElement {
        return app.staticTexts[Constants.AccessibilityIds.profileStatus].firstMatch
    }
    
    var editProfileButton: XCUIElement {
        return app.buttons[Constants.AccessibilityIds.profileEditProfileButton]
    }

    func tapEditProfileButton() {
        tapElement(editProfileButton)
    }
    
    func checkPageIsOpened() {
        XCTAssertTrue(waitForElement(logoutButton))
    }
    
    func tapLogoutButton() {
        tapElement(logoutButton)
    }
} 

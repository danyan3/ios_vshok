import XCTest

class MainPage: BasePage {

    var title: XCUIElement {
        return app.staticTexts[Constants.Texts.mainTitle]
    }

    var emailInput: XCUIElement {
        return app.textFields[Constants.AccessibilityIds.mainEmailInput]
    }

    var verifyEmailButton: XCUIElement {
        return app.buttons[Constants.AccessibilityIds.verifyEmailButton]
    }

    var loginButton: XCUIElement {
        return app.buttons[Constants.AccessibilityIds.mainLoginButton]
    }

    var textTruthly: XCUIElement {
        return app.staticTexts[Constants.Texts.textTruthly]
    }

    var textFalsely: XCUIElement {
        return app.staticTexts[Constants.Texts.textFalsely]
    }

    func checkPageIsOpened() {
        XCTAssertTrue(waitForElement(title))
    }

    func checkEmailFieldIsDisplayed() {
        XCTAssertTrue(waitForElement(emailInput))
    }

    func checkLoginButtonIsDisplayed() {
        XCTAssertTrue(waitForElement(loginButton))
    }

    func checkVerifyEmailButtonIsDisplayed() {
        XCTAssertTrue(waitForElement(verifyEmailButton))
    }

    func tapLoginButton() {
        tapElement(loginButton)
    }

    func tapCheckButton() {
        tapElement(verifyEmailButton)
    }

    func typeEmail(email: String) {
        typeText(email, into: emailInput)
    }

    func checkEmail(_ email: String, isValid: Bool) {
        typeEmail(email: email)
        tapCheckButton()
        
        if isValid {
            XCTAssertTrue(waitForElement(textTruthly))
        } else {
            XCTAssertTrue(waitForElement(textFalsely))
        }
    }
} 

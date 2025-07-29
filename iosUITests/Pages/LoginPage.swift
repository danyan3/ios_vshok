import XCTest

class LoginPage: BasePage {
    
    var title: XCUIElement {
        return app.staticTexts[Constants.Texts.loginTitle]
    }
    
    var emailInput: XCUIElement {
        return app.textFields[Constants.AccessibilityIds.loginEmailInput]
    }
    
    var passwordInput: XCUIElement {
        return app.secureTextFields[Constants.AccessibilityIds.loginPasswordInput]
    }
    
    var submitButton: XCUIElement {
        return app.buttons[Constants.AccessibilityIds.loginSubmitButton]
    }

    var cancelButton: XCUIElement {
        return app.buttons[Constants.AccessibilityIds.loginCancelButton]
    }

    var registerButton: XCUIElement {
        return app.buttons[Constants.AccessibilityIds.loginRegisterButton]
    }
    
    var invalidCredentialsError: XCUIElement {
        return app.staticTexts[Constants.Texts.invalidCredentialsError]
    }
    
    func checkPageIsOpened() {
        XCTAssertTrue(waitForElement(title))
    }
    
    func login(email: String, password: String) {
        typeText(email, into: emailInput)
        typeSecureText(password, into: passwordInput)
        tapElement(submitButton)
    }

    func tapCancelButton() {
        tapElement(cancelButton)
    }

    func tapRegisterButton() {
        tapElement(registerButton)
    }
} 

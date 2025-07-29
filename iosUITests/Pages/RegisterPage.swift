 import XCTest

 class RegisterPage: BasePage {
    
    var title: XCUIElement {
        return app.staticTexts[Constants.Texts.registerTitle]
    }
    
    var emailInput: XCUIElement {
        return app.textFields[Constants.AccessibilityIds.registerEmailInput]
    }
    
    var passwordInput: XCUIElement {
        return app.secureTextFields[Constants.AccessibilityIds.registerPasswordInput]
    }

    var ageInput: XCUIElement {
        return app.textFields[Constants.AccessibilityIds.registerAgeInput]
    }
    
    var submitButton: XCUIElement {
        return app.buttons[Constants.AccessibilityIds.registerSubmitButton]
    }
    
    var backButton: XCUIElement {
        return app.buttons[Constants.AccessibilityIds.registerBackButton]
    }
    
    var emptyEmailError: XCUIElement {
        return app.staticTexts[Constants.Texts.emptyEmailError]
    }
    
    var emptyPasswordError: XCUIElement {
        return app.staticTexts[Constants.Texts.emptyPasswordError]
    }
    
    var emptyAgeError: XCUIElement {
        return app.staticTexts[Constants.Texts.emptyAgeError]
    }
    
    func checkPageIsOpened() {
        XCTAssertTrue(waitForElement(title))
    }

    func tapSubmitButton() {
        tapElement(submitButton)
    }

    func tapBackButton() {
        tapElement(backButton)
    }
    
    func register(email: String, password: String, age: Int) {
        typeText(email, into: emailInput)
        typeSecureText(password, into: passwordInput)
        typeText(String(age), into: ageInput)
        tapElement(submitButton)
    }
    
    func isSubmitButtonEnabled() -> Bool {
        return isElementEnabled(submitButton)
    }
 } 

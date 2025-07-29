import XCTest

class EditProfilePage: BasePage {
    
    var title: XCUIElement {
        return app.staticTexts[Constants.Texts.editProfileTitle]
    }
    
    var nameInput: XCUIElement {
        return app.textFields[Constants.AccessibilityIds.editProfileNameInput]
    }
      
    var saveButton: XCUIElement {
        return app.buttons[Constants.AccessibilityIds.editProfileSaveButton]
    }

    var cancelButton: XCUIElement {
        return app.buttons[Constants.AccessibilityIds.editProfileCancelButton]
    }
    
    func checkPageIsOpened() {
        XCTAssertTrue(waitForElement(title))
    }

    func tapCancelButton() {
        tapElement(cancelButton)
    }

    func tapSaveButton() {
        tapElement(saveButton)
    }
    
    func updateProfileName(name: String) {
        clearText(in: nameInput)
        typeText(name, into: nameInput)
        tapElement(saveButton)
    }
} 
import XCTest

class TestBase: XCTestCase {
    var app: XCUIApplication!

    override func setUpWithError() throws {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launchArguments = ["--uitesting", "--reset-data"]
        app.launch()
        
        let profilePage = ProfilePage(app: app)
        if profilePage.logoutButton.waitForExistence(timeout: 3) {
            profilePage.tapLogoutButton()
        }
    }

    override func tearDownWithError() throws {
        if app != nil {
            app.terminate()
        }
        app = nil
    }
} 

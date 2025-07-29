import XCTest

class ProfileTests: TestBase {
    
    private lazy var profilePage = ProfilePage(app: app)
    private lazy var mainPage = MainPage(app: app)
    private lazy var loginPage = LoginPage(app: app)
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        loginUser()
    }
    
    // вынесу это как полагается после рефакторинга
    private func loginUser() {
        mainPage.tapLoginButton()

        loginPage.login(
            email: "larry@mail.ru",
            password: "larry1",
        )
        
        profilePage.checkPageIsOpened()
    }
    
    func testProfileStatus() {
        profilePage.checkPageIsOpened()
        
        XCTAssertTrue(profilePage.status.waitForExistence(timeout: 3))
        
        let statusText = profilePage.status.label
        let youngCatText = TestData.Experiments.youngCat
        let oldCatText = TestData.Experiments.oldCat
        // тоже поправлю в нормальный вид
        XCTAssertTrue(statusText == youngCatText || statusText == oldCatText)
    }
    
    func testLogout() {
        profilePage.tapLogoutButton()

        mainPage.checkPageIsOpened()
    }
    

} 

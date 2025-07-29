import XCTest

class RegisterTests: TestBase {
   
    private lazy var registerPage = RegisterPage(app: app)
    private lazy var mainPage = MainPage(app: app)
    private lazy var loginPage = LoginPage(app: app)
    private lazy var profilePage = ProfilePage(app: app)

    override func setUpWithError() throws {
        try super.setUpWithError()
    }
   
    func testSuccessfulRegistration()  {
        let fakeUser = TestData.randomUser()

        mainPage.checkPageIsOpened()
        mainPage.tapLoginButton()

        loginPage.checkPageIsOpened()
        loginPage.tapRegisterButton()

        registerPage.checkPageIsOpened()
        registerPage.register(
            email: fakeUser.email,
            password: fakeUser.password,
            age: fakeUser.age,
        )

        XCTAssertTrue(profilePage.logoutButton.exists)
    }

    func testRegistrationWithSpaces() {
        mainPage.checkPageIsOpened()
        mainPage.tapLoginButton()

        loginPage.checkPageIsOpened()
        loginPage.tapRegisterButton()

        registerPage.checkPageIsOpened()

        XCTAssertFalse(registerPage.isSubmitButtonEnabled())
    }
   
    func testBackButton() {
        mainPage.checkPageIsOpened()
        mainPage.tapLoginButton()
        
        loginPage.checkPageIsOpened()
        loginPage.tapRegisterButton()
        
        registerPage.checkPageIsOpened()
        registerPage.tapBackButton()

        loginPage.checkPageIsOpened()
    }

} 

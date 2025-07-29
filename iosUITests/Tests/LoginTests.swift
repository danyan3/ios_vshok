import XCTest

class LoginTests: TestBase {
    
    private lazy var loginPage = LoginPage(app: app)
    private lazy var mainPage = MainPage(app: app)
    private lazy var registerPage = RegisterPage(app: app)
    private lazy var profilePage = ProfilePage(app: app)
    
    override func setUpWithError() throws {
        try super.setUpWithError()
    }
    // потом сделаю отдельный метод регистрации и проверки логина с этими данными
    func testSuccessfulLogin() throws {
        mainPage.checkPageIsOpened()
        mainPage.tapLoginButton()

        loginPage.checkPageIsOpened()
        loginPage.login(
            email: "larry@mail.ru", 
            password: "larry1"
        )

        profilePage.checkPageIsOpened()
    }
    
    func testLoginWithInvalidCredentials() throws {
        let fakeUser = TestData.randomUser()

        mainPage.checkPageIsOpened()
        mainPage.tapLoginButton()

        loginPage.checkPageIsOpened()
        loginPage.login(
            email: fakeUser.email, 
            password: fakeUser.password
        )

        XCTAssertTrue(loginPage.invalidCredentialsError.waitForExistence(timeout: 5))
    }
    
    func testNavigateToRegisterFromLogin() throws {
        mainPage.checkPageIsOpened()
        mainPage.tapLoginButton()

        loginPage.tapRegisterButton()

        registerPage.checkPageIsOpened()
    }
    
    func testBackButtonFromLogin() throws {
        mainPage.checkPageIsOpened()
        mainPage.tapLoginButton()

        loginPage.tapCancelButton()

        mainPage.checkPageIsOpened()
    }
} 

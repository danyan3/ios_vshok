import XCTest

class EditProfileTests: TestBase {
    
    private lazy var profilePage = ProfilePage(app: app)
    private lazy var mainPage = MainPage(app: app)
    private lazy var editProfilePage = EditProfilePage(app: app)
    private lazy var loginPage = LoginPage(app: app)
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        loginUser()
    }

    private func loginUser() {
        if profilePage.logoutButton.waitForExistence(timeout: 3) {
            profilePage.checkPageIsOpened()
            return
        }
        
        mainPage.tapLoginButton()

        loginPage.login(
            email: "larry@mail.ru",
            password: "larry1",
            )
        
        profilePage.checkPageIsOpened()
    }
    
    func testEditProfile() {
        profilePage.tapEditProfileButton()

        editProfilePage.checkPageIsOpened()
        editProfilePage.updateProfileName(name: "Новое имя")

        XCTAssertEqual(profilePage.name.label, "Новое имя")
    }
    
    func testCancelEditProfile() {
        profilePage.tapEditProfileButton()

        editProfilePage.tapCancelButton()

        profilePage.checkPageIsOpened()
    }
} 

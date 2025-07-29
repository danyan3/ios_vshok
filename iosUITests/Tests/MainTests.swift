import XCTest

class MainTests: TestBase {
    
    private lazy var mainPage = MainPage(app: app)
    
    override func setUpWithError() throws {
        try super.setUpWithError()
    }
    
    override func tearDownWithError() throws {
        try! super.tearDownWithError()
    }
    
    func testTitleIsDisplayed() {
        mainPage.checkPageIsOpened()
        XCTAssertTrue(mainPage.title.exists)
    }
    
    func testCheckValidEmailForShockness() {
        mainPage.checkPageIsOpened()
        mainPage.checkEmail("larry@mail.ru", isValid: true)
    }
    
    func testCheckInvalidEmailForShockness() {
        mainPage.checkPageIsOpened()
        mainPage.checkEmail("fake@fake.com", isValid: false)
    }
} 

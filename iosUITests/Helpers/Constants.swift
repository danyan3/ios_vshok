import Foundation

struct Constants {
    struct Timeouts {
        static let defaultTimeout: TimeInterval = 10
        static let shortTimeout: TimeInterval = 5
        static let longTimeout: TimeInterval = 20
    }
    
    struct AccessibilityIds {
        static let mainEmailInput = "emailInput"
        static let verifyEmailButton = "checkButton"
        static let mainLoginButton = "navigationButton"
        
        static let loginEmailInput = "emailField"
        static let loginPasswordInput = "passwordField"
        static let loginSubmitButton = "loginButton"
        static let loginCancelButton = "backButton"
        static let loginRegisterButton = "registerButton"
        
        static let registerEmailInput = "emailField"
        static let registerPasswordInput = "passwordField"
        static let registerAgeInput = "ageField"
        static let registerSubmitButton = "registerButton"
        static let registerBackButton = "backButton"
        
        static let profileLogoutButton = "logoutButton"
        static let profileEditProfileButton = "editProfileButton"
        static let profileName = "userName"
        static let profileStatus = "ageLabel"
        
        static let editProfileNameInput = "nameField"
        static let editProfileSaveButton = "saveButton"
        static let editProfileCancelButton = "cancelButton"
    }
    
    struct Texts {
        static let mainTitle = "mainTitle"
        static let textTruthly = "Ты уже в ШОКе"
        static let textFalsely = "Ты еще не в ШОКе"
        static let loginTitle = "loginTitle"
        static let registerTitle = "registerTitle"
        static let editProfileTitle = "Редактировать профиль"
        static let emptyEmailError = "Не введен email"
        static let emptyPasswordError = "Не введен пароль"
        static let emptyAgeError = "Не введен возраст"
        static let invalidCredentialsError = "validationError"
    }
} 

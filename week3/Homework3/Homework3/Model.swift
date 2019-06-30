//
//  Model.swift
//  Homework3
//
//  Created by 黃建程 on 2019/6/29.
//  Copyright © 2019 Spark. All rights reserved.
//

import Foundation

enum CheckInputHaveError: Error {
    case accountIsEmpty
    case passwordIsEmpty
    case checkPasswordIsEmpty
}
enum CheckLoginSignHaveError: Error {
    case loginFail
    case signUpFail
    case notAllowSign
}

func checkInput(account: String, password: String, checkPassword: String, logOrSign status: Int) throws {
    if account == "" {
        throw CheckInputHaveError.accountIsEmpty
    } else if password == "" {
        throw CheckInputHaveError.passwordIsEmpty
    } else if  checkPassword == "" && status == 1 {
        throw CheckInputHaveError.checkPasswordIsEmpty
    }
}

func checkLogin(account: String, password: String) throws -> Bool{
    if account == "appwork_school@gmail.com" && password == "1234" {
        return true
    } else {
        throw CheckLoginSignHaveError.loginFail
    }
}

func checkSignUp(account: String, password: String, checkPassword: String) throws -> Bool {
    if checkPassword == password {
        return true
    } else if checkPassword != password {
        throw CheckLoginSignHaveError.signUpFail
    } else {
        throw CheckLoginSignHaveError.notAllowSign
    }
}

func updateTextFiled () {
    // FIXME: clean the word in textfiled
}


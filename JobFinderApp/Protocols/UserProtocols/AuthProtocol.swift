//
//  AuthProtocol.swift
//  JobFinderApp
//
//  Created by Mustafa Ceylan on 28.04.2024.
//

import Foundation

protocol AuthProtocol {
    
    func UserRegister(user: User) async throws -> Bool
    func UserLogin(email: String, password : String) async throws -> Bool
    func UpdateUser(user: User) async throws -> Bool
    func GetUserById(userId: String) async throws -> User
    func GetUserByEmail(email: String) async throws -> User
    func GetUserDetailByEmail(email: String) async throws -> UserDetail
    func GetUserDetailById(userId: String) async throws -> UserDetail
    func SaveUserResume(fileURL: URL,fileName : String) async throws -> Bool
    func UpdateUserResume(fileURL: URL,fileName : String) async throws -> Bool
    func GetResumeURL(fileName: String) async throws -> URL
    func CheckUserEmailIsExist(email: String) async throws -> Bool
    func CheckCompanyEmailIsExist(email: String) async throws -> Bool
    
    func CompanyRegister(company: Company) async throws -> Bool
    func CompanyLogin(email: String, password : String) async throws -> Bool
    
    func UpdateCompany(company: Company) async throws -> Bool
    
    func GetCompanyByEmail(email: String) async throws -> Company
    func GetAllCompanies() async throws -> [Company]
    
    func GetCompanyDetailByEmail(email: String) async throws -> CompanyDetail
    func GetAllCompanyDetails() async throws -> [CompanyDetail]



}

//
//  SignInScreenView.swift
//  login
//
//  Created by THANSEEF on 22/02/22.
//

import SwiftUI

struct SignInScreenView: View {
    @State private var email : String = "" //setting default value empty
    var body: some View {
        ZStack {
            //            WelcomeScreenView()
            Color("BgColor").edgesIgnoringSafeArea(.all)// to cover entire screen
            VStack {
                Spacer()
                VStack {
                    Text("Sign In")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom,30)
                    SocialLoginButton(image: Image("apple"), text: Text("Sign in with Apple"))
                    SocialLoginButton(image: Image("google"), text: Text("Sign in with Google"))
                        .foregroundColor(Color("PrimaryColor"))
                        .padding(.vertical)
                    
                    Text("or get a link emailed to you")
                        .foregroundColor(Color.black.opacity(0.4))
                    TextField("Work email address",text: $email)
                        .padding()
                        .frame(maxWidth:.infinity)
                        .background(Color.white)
                        .cornerRadius(50)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                        .padding(.vertical)
                    PrimaryButton(title: "Email me a signup link")
                }
                Spacer()
                Divider()
                Spacer()
                Text("You are completely safe.")
                Text("Read our Terms & Conditions.")
                    .foregroundColor(Color("PrimaryColor"))
                Spacer()
            }
            .padding()
        }
    }
}

struct SignInScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreenView()
    }
}

struct SocialLoginButton: View {
    var image : Image
    var text : Text
    var body: some View {
        HStack {
            image
                .padding(.horizontal)
            Spacer()
            text
                .font(.title2)
            Spacer()
        }
        .padding()
        .frame(maxWidth:.infinity)
        .background(Color.white)
        .cornerRadius(50)
        .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
    }
}

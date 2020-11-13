//
//  ContentView.swift
//  NicoCard
//
//  Created by user183145 on 11/13/20.
//  Copyright © 2020 Nico Cobelo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.75, green: 0.22, blue: 0.17)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("nico")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                )
                Text("Nicolás Cobelo")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("Civil Engineer/ iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+54 11 2892 9935", imageName: "whatsapp")
                InfoView(text: "ingcobelo@gmail.com", imageName: "gmail")
                InfoView(text: "nicobelo91", imageName: "github")


            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

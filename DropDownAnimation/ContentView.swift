//
//  ContentView.swift
//  DropDownAnimation
//
//  Created by Anuj Joshi on 26/10/2020.
//

import SwiftUI

struct ContentView : View {
    @State var expand = false

    var body : some  View {
        VStack(alignment: .leading,spacing: 25, content:  {
            HStack {
                Text("DropDown Menu").fontWeight(.heavy)
                    .foregroundColor(.white)

                Image(systemName: expand ? "chevron.up" : "chevron.down")
                    .resizable().frame(width: 13, height: 6)
                    .foregroundColor(.white)

            }.onTapGesture {
                self.expand.toggle()
            }
            if expand {
                Button(action: {
                    self.expand.toggle()
                }) {
                    Text("SubMenu 1")
                }.foregroundColor(.white)
                Button(action: {
                    self.expand.toggle()
                }) {
                    Text("SubMenu 2")
                }.foregroundColor(.white)
                Button(action: {
                    self.expand.toggle()
                }) {
                    Text("SubMenu 3")
                }.foregroundColor(.white)
            }
        }) .padding()
        .background(Color.getLinearGradient())
        .cornerRadius(5)
        .animation(.spring())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



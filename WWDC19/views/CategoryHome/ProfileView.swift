//
//  ProfileHost.swift
//  WWDC19
//
//  Created by LiYong on 07.09.19.
//  Copyright © 2019 Liyong. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    
    @State var selectionIndex:Int = 0
    @State var name:String = ""
    @State var familieName:String = ""
    @State var goalDate:Date = Date(timeIntervalSince1970: 0)
    @State var toggle:Bool = true
    @Environment(\.presentationMode) var presentationMode:Binding<PresentationMode>
    
    
    var dateRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .year, value: -1, to: Date(timeIntervalSince1970: 0))!
        let max = Calendar.current.date(byAdding: .year, value: 1, to: Date(timeIntervalSinceNow: 0))!
        return min...max
    }
    
    var body: some View {
        List{
            HStack{
                Spacer()
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }){
                    Text("Cancel").foregroundColor(Color.white)
                }.frame(width: 80, height: 30, alignment: .center)
                    .background(Color.red)
                    .cornerRadius(10).padding(.bottom,10)
            }
            
            HStack{
                Text("Name:").frame(width: 100,alignment: .leading)
                Divider()
                TextField("Your Name", text: $name)
            }
            HStack{
                Text("Familiename:").frame(width: 100,alignment: .leading)
                Divider()
                TextField("Your Familiename", text: $familieName)
            }
            Toggle(isOn: $toggle){
                Text("Enable Notification")
            }
            Picker("picker",selection: $selectionIndex){
                Text("one").tag(0)
                Text("two").tag(1)
                Text("three").tag(2)
            }.pickerStyle(SegmentedPickerStyle())
            
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Birthday").bold()
                DatePicker(
                    "Date",
                    selection: $goalDate,
                    in: dateRange,
                    displayedComponents: .date)
            }
            .padding(.top)
            
        }.padding(.top)
        
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

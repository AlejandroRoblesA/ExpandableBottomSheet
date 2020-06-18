//
//  CourseDetailView.swift
//  ExpandableBottomSheet
//
//  Created by Omar Alejandro Robles Altamirano on 17/06/20.
//  Copyright © 2020 Omar Alejandro Robles Altamirano. All rights reserved.
//

import SwiftUI

struct CourseDetailView: View {
    var body: some View {
        
        VStack{
            
            HandleBar()
            
            TitleBar(titleText: "Detalles del curso")
            
            HeaderView()
            DescriptionView()
        }
    }
}

struct HandleBar: View{
    var body: some View{
        Rectangle()
            .frame(width: 70, height: 8)
            .foregroundColor(Color(.systemGray4))
        .cornerRadius(8)
    }
}

struct TitleBar: View {
    
    var titleText: String
    
    var body: some View{
        Text(titleText)
            .font(.headline)
            .foregroundColor(.primary)
    }
}

struct HeaderView: View{
    var body: some View{
        Text("")
    }
}

struct DescriptionView: View {
    var body: some View{
        Text("")
    }
}

struct CourseDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CourseDetailView()
    }
}

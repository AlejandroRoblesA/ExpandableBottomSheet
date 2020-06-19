//
//  CourseDetailView.swift
//  ExpandableBottomSheet
//
//  Created by Omar Alejandro Robles Altamirano on 17/06/20.
//  Copyright © 2020 Omar Alejandro Robles Altamirano. All rights reserved.
//

import SwiftUI

struct CourseDetailView: View {
    
    @GestureState private var dragState = DragState.none
    @State private var offset: CGFloat = 0
    @State private var cardState = CardState.half
    @Binding var isShown: Bool
    
    var course: Course
    
    var body: some View {
        
        GeometryReader{ geometry in
            VStack{
                    Spacer()
                    HandleBar()
                    
                    TitleBar(titleText: "Detalles del curso")
                    
                    ScrollView(.vertical){
                        HeaderView(course: self.course)
                        DescriptionView(icon:"dollarsign.circle.fill" , content: "\(self.course.price)")
                        DescriptionView(content: self.course.description)
                    }
                    .animation(nil)
                    .disabled(self.cardState == .half || self.dragState.isDragging)
                }
                .background(Color.white)
            .cornerRadius(15, antialiased: true)
            .offset(y: geometry.size.height*0.4 + self.dragState.translation.height + self.offset)
            .animation(.interpolatingSpring(stiffness: 100, damping: 20, initialVelocity: 10))
            .edgesIgnoringSafeArea(.all)
            .gesture(DragGesture()
                .updating(self.$dragState){ value, state, transaction in
                    state = DragState.dragging(translation: value.translation)
                }
            .onEnded({ (value) in
                switch self.cardState{
                case .half:
                    if value.translation.height < -0.25*geometry.size.height{
                        self.offset = -0.3*geometry.size.height
                        self.cardState = .full
                    }
                    if (value.translation.height > 0.25*geometry.size.height){
                        self.isShown = false
                    }
                    break
                case .full:
                    if value.translation.height > 0.25*geometry.size.height{
                        self.offset = 0
                        self.cardState = .half
                    }
                    if value.translation.height > 0.75*geometry.size.height{
                        self.isShown = false
                    }
                    break
                }
            })
            )
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
            .padding()
    }
}

struct HeaderView: View{
    
    var course: Course
    
    var body: some View{
        Image(course.image)
            .resizable()
            .scaledToFill()
            .frame(width: 200 ,height: 200)
            .clipped()
            .overlay(
            HStack{
                VStack(alignment: .leading){
                    Spacer()
                    Text(course.ratting)
                        .font(.system(.title))
                        .foregroundColor(.yellow)
                        .background(Color.blue)
                        .cornerRadius(5)
                }
                }.offset(x: 0, y: 40)
        )
    }
}

struct DescriptionView: View {
    
    var icon: String?
    var content: String
    
    var body: some View{
        HStack{
            if icon != nil{
                Image(systemName: icon!)
                    .padding(.trailing, 10)
            }
            Text(content)
                .font(.system(.body, design: .rounded))
            Spacer()
        }.padding(.horizontal)
    }
}

enum CardState{
    case half
    case full
    
}


struct CourseDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CourseDetailView(isShown: .constant(true), course: courses[0])
            .background(Color.gray.opacity(0.5))
            .edgesIgnoringSafeArea(.all)
    }
}

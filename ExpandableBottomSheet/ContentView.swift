//
//  ContentView.swift
//  ExpandableBottomSheet
//
//  Created by Omar Alejandro Robles Altamirano on 17/06/20.
//  Copyright © 2020 Omar Alejandro Robles Altamirano. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showCourseDetail = false
    @State private var selectedCourse: Course?
    
    var body: some View {
        
        ZStack{
            NavigationView{
                List{
                    ForEach(courses){ course in
                        
                        BasicRow(course: course)
                            .onTapGesture {
                                self.showCourseDetail = true
                                self.selectedCourse = course
                            }
                    }
                }
            .navigationBarTitle("Cursos de iOS")
            }
            if showCourseDetail{
                BlanketView(color: .gray)
                    .opacity(0.5)
                    .onTapGesture {
                        self.showCourseDetail = false
                }
                self.selectedCourse.map {
                    CourseDetailView(course: $0)
                        .transition(.move(edge: .bottom))
                }
            }
        }
    }
}

struct BasicRow: View{
    
    var course: Course
    
    var body: some View{
        HStack{
            Image(course.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .cornerRadius(10)
            Text(course.name)
        }
    }
}

struct BlanketView: View{
    
    var color: Color
    
    var body: some View{
        
        VStack{
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, maxHeight: .infinity)
        .background(color)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

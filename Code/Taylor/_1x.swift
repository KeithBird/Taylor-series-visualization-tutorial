//
//  _1x.swift
//  Taylor
//
//  Created by keith bird on 2020/3/2.
//  Copyright © 2020 keith bird. All rights reserved.
//

import SwiftUI

struct SliderView_1x: View {
    
    @Binding var value_1x:Double
    
    var body: some View {
        VStack {
            
            Slider(value: $value_1x, in: 0...360, step: 1)
            
        }
    }
}

struct _1x: View {
    
    @State private var value_1x:Double = 0
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            ZStack {
                
                // Image("_1x")
                Image(uiImage: #imageLiteral(resourceName: "_1x.png"))
                    .resizable()
                    .frame(width: 285, height: 191)
                    .cornerRadius(12)
                    .shadow(radius: 12)
                
                // Blue
                VStack {
                    
                    Spacer()
                    
                    HStack {
                        
                        Rectangle()
                            .frame(width: CGFloat(55+value_1x/360*196), height: CGFloat(55*55/(55+value_1x/360*196)))
                            .foregroundColor(Color(red: 70/255, green: 155/255, blue: 255/255))
                            .opacity(0.8)
                            .offset(x: 34.4, y: -34.4)
                        
                        Spacer()
                        
                    }
                    
                }.frame(width: 285, height: 191)
                
                // Red
                VStack {
                    
                    Spacer()
                    
                    HStack {
                        
                        Rectangle()
                            .frame(width: CGFloat(55*55/(55+value_1x/360*102)), height: CGFloat(55+value_1x/360*102))
                            .foregroundColor(Color(red: 255/255, green: 50/255, blue: 40/255))
                            .opacity(0.8)
                            .offset(x: 34.4, y: -34.4)
                        
                        Spacer()
                        
                    }
                    
                }.frame(width: 285, height: 191)
                
                // Purple
                VStack {
                    
                    Spacer()
                    
                    HStack {
                        
                        Rectangle()
                            .frame(width: CGFloat(55*55/(55+value_1x/360*102)), height: CGFloat(55*55/(55+value_1x/360*196)))
                            .foregroundColor(Color(red: 117/255, green: 100/255, blue: 208/255))
                            .opacity(0.8)
                            .offset(x: 34.4, y: -34.4)
                        
                        Spacer()
                        
                    }
                    
                }.frame(width: 285, height: 191)
                
                ZStack {
                    
                    // Background
                    Rectangle()
                        .foregroundColor(Color.white)
                        .frame(width:80, height: 100)
                        .cornerRadius(5)
                        .shadow(radius: 5)
                        .offset(x: 5)
                    
                     VStack {
                        
                        Spacer()
                        
                        Text("   x  =  \(String(format:"%.2f",(1 + 3.56*value_1x/360)))")
                        .font(.footnote)
                        
                        Spacer()
                        
                        Text("   y  =  \(String(format:"%.2f",1/(1 + 3.56*value_1x/360)))")
                        .font(.footnote)
                        
                        Spacer()
                        
                        Text("   y' = \(String(format:"%.2f",1/(-pow((1 + 3.56*value_1x/360), 2.0))))")
                        .font(.footnote)
                        
                        Spacer()
                        
                    }
                    .frame(width:100, height: 120)
                    .foregroundColor(Color.black)
                    .colorScheme(.light)
                    
                }.offset(x: 80, y: -30)
                
            }.frame(width: 300, height: 200)
            
            Spacer()
            
            SliderView_1x(value_1x: $value_1x)
                .frame(width: 380)
            
            Spacer()
            
            HStack {
                // Image("_1x_2")
                Image(uiImage: #imageLiteral(resourceName: "_1x_2.png"))
                    .resizable() //574
                    .frame(width: 360, height: 240)
                    .cornerRadius(12)
                    .shadow(radius: 12)
            }
            
            Spacer()
        
        }.frame(width: 420, height: 540)
    }
}

struct _1x_Previews: PreviewProvider {
    static var previews: some View {
        _1x()
    }
}

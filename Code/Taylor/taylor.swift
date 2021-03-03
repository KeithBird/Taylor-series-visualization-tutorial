//
//  taylor.swift
//  Taylor
//
//  Created by keith bird on 2020/3/9.
//  Copyright © 2020 keith bird. All rights reserved.
//

import SwiftUI

struct SliderView_taylor: View {
    
    @Binding var value_taylor:Double
    
    var body: some View {
        VStack {
            
            Slider(value: $value_taylor, in: 0...360, step: 1)
            
        }
    }
}



struct taylor: View {
    
    @State private var value_taylor:Double = 45
    
    var body: some View {
        
        ScrollView {
            
            Spacer()
            
            ZStack {
                
                // Image("Taylor_cos_")
                Image(uiImage: #imageLiteral(resourceName: "Taylor_cos_.png"))
                    .resizable()
                    .frame(width: 375, height: 250) // 3 : 2
                    .opacity(1)
                
                // Image("Taylor_0_")
                Image(uiImage: #imageLiteral(resourceName: "Taylor_0_.png"))
                    .resizable()
                    .frame(width: 375, height: 250) // 3 : 2
                    .opacity(value_taylor >= 0 && value_taylor < 90 ?
                        1.0/45*value_taylor : 0.0)
                
                // Image("Taylor_0_2_")
                Image(uiImage: #imageLiteral(resourceName: "Taylor_0_2_.png"))
                    .resizable()
                    .frame(width: 375, height: 250) // 3 : 2
                    .opacity(value_taylor >= 45 && value_taylor < 135 ?
                        1.0/45*(value_taylor-45) : 0.0)
                
                // Image("Taylor_2_")
                Image(uiImage: #imageLiteral(resourceName: "Taylor_2_.png"))
                    .resizable()
                    .frame(width: 375, height: 250) // 3 : 2
                    .opacity(value_taylor >= 90 && value_taylor < 180 ?
                        1.0/45*(value_taylor-90) : 0.0)
                
                // Image("Taylor_2_4_")
                Image(uiImage: #imageLiteral(resourceName: "Taylor_2_4_.png"))
                    .resizable()
                    .frame(width: 375, height: 250) // 3 : 2
                    .opacity(value_taylor >= 135 && value_taylor < 225 ?
                        1.0/45*(value_taylor-135) : 0.0)
                
                // Image("Taylor_4_")
                Image(uiImage: #imageLiteral(resourceName: "Taylor_4_.png"))
                    .resizable()
                    .frame(width: 375, height: 250) // 3 : 2
                    .opacity(value_taylor >= 180 && value_taylor < 270 ?
                        1.0/45*(value_taylor-180) : 0)
                
                // Image("Taylor_4_6_")
                Image(uiImage: #imageLiteral(resourceName: "Taylor_4_6_.png"))
                    .resizable()
                    .frame(width: 375, height: 250) // 3 : 2
                    .opacity(value_taylor >= 225 && value_taylor < 315 ?
                        1.0/45*(value_taylor-225) : 0.0)
                
                // Image("Taylor_6_")
                Image(uiImage: #imageLiteral(resourceName: "Taylor_6_.png"))
                    .resizable()
                    .frame(width: 375, height: 250) // 3 : 2
                    .opacity(value_taylor >= 270 && value_taylor < 360 ?
                        1.0/45*(value_taylor-270) : 0.0)
                
                // Image("Taylor_all_")
                Image(uiImage: #imageLiteral(resourceName: "Taylor_all_.png"))
                    .resizable()
                    .frame(width: 375, height: 250) // 3 : 2
                    .opacity(value_taylor >= 315 && value_taylor <= 360 ?
                        1.0/45*(value_taylor-315) : 0)
                
                HStack {
                    
                    Spacer()
                    
                    ZStack {
                        
                        Text("P0(x)")
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor((Color(red: 178.0/255.0, green: 193.0/255.0, blue: 205.0/255.0)))
                            .colorScheme(.light)
                            .opacity(value_taylor >= 0 && value_taylor < 90 ?
                                1.0/45*value_taylor : 0.0)
                        
                        Text("P0(x)")
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor((Color(red: 178.0/255.0, green: 193.0/255.0, blue: 205.0/255.0)))
                            .colorScheme(.light)
                            .opacity(value_taylor >= 90 && value_taylor < 135 ?
                                1.0/45*(135-value_taylor) : 0.0)
                        
                        Text("P4(x)")
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor((Color(red: 117.0/255.0, green: 176.0/255.0, blue: 212.0/255.0)))
                            .colorScheme(.light)
                            .opacity(value_taylor >= 135 && value_taylor < 270 ?
                                1.0/45*(value_taylor-135) : 0.0)
                        
                        Text("P4(x)")
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor((Color(red: 117.0/255.0, green: 176.0/255.0, blue: 212.0/255.0)))
                            .colorScheme(.light)
                            .opacity(value_taylor >= 270 && value_taylor < 315 ?
                                1.0/45*(315-value_taylor) : 0.0)
                        
                    }.frame(width: 120)
                    
                    ZStack {
                        
                        Text("P2(x)")
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor((Color(red: 166.0/255.0, green: 194.0/255.0, blue: 213.0/255.0)))
                            .colorScheme(.light)
                            .opacity(value_taylor >= 45 && value_taylor < 180 ?
                                1.0/45*(value_taylor-45) : 0.0)
                        
                        Text("P2(x)")
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor((Color(red: 166.0/255.0, green: 194.0/255.0, blue: 213.0/255.0)))
                            .colorScheme(.light)
                            .opacity(value_taylor >= 180 && value_taylor < 225 ?
                                1.0/45*(225-value_taylor) : 0.0)
                        
                        Text("P6(x)")
                        .font(.headline)
                        .fontWeight(.medium)
                        .foregroundColor((Color(red: 119.0/255.0, green: 174.0/255.0, blue: 237.0/255.0)))
                        .colorScheme(.light)
                        .opacity(value_taylor >= 225 && value_taylor <= 315 ?
                            1.0/45*(value_taylor-225) : 0.0)
                        
                        Text("P6(x)")
                        .font(.headline)
                        .fontWeight(.medium)
                        .foregroundColor((Color(red: 119.0/255.0, green: 174.0/255.0, blue: 237.0/255.0)))
                        .colorScheme(.light)
                        .opacity(value_taylor >= 315 && value_taylor < 360 ?
                        1.0/45*(360-value_taylor) : 0.0)
                        
                    }.frame(width: 120)
                    
                    Spacer()
                    
                }
                .frame(width: 120)
                .offset(y: -80)
                
            }
            .cornerRadius(12)
            .shadow(radius: 12)
            .frame(width: 420, height: 400)
            
            Spacer()
            
            SliderView_taylor(value_taylor: $value_taylor)
                .frame(width: 400)
            
            
            Spacer()
            
        }
        .frame(width: 420, height: 540)
        
    }
}

struct taylor_Previews: PreviewProvider {
    static var previews: some View {
        taylor()
    }
}

//
//  ContentView.swift
//  Taylor
//
//  Created by keith bird on 2020/3/2.
//  Copyright © 2020 keith bird. All rights reserved.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var value:Double
    
    var body: some View {
        VStack {
            
            Slider(value: $value, in: 0...360, step: 1)
            
        }
    }
}

struct SliderView_3D: View {
    
    @Binding var value_3D:Double
    
    var body: some View {
        
        VStack {
            
            Slider(value: $value_3D, in: 0...360, step: 1)
            
        }
    }
}





struct ContentView: View {
    
    @State private var lenth:Double = 360
    
    @State private var lenth_3D:Double = 360
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            // MARK: - Rectangle
            
            ZStack {
                
                // Background
                Rectangle()
                    .foregroundColor(Color.white)
                    .frame(width: 375, height: 200)
                    .cornerRadius(12)
                    .shadow(radius: 12)
                
                
                HStack {
                    
                    Spacer()
                    
                    // Rectangle
                    ZStack {
                        VStack {
                            HStack {
                                
                                Rectangle()
                                    .frame(width: CGFloat(lenth)/3, height: CGFloat(lenth)/3)
                                    .foregroundColor(Color(red: 187/255, green: 226/255, blue: 225/255))
                                    .border(Color(red: 87/255, green: 191/255, blue: 190/255), width: 3)
                                
                                Spacer()
                            }
                            Spacer()
                        }
                        
                        VStack {
                            HStack {
                                
                                Rectangle()
                                    .frame(width: CGFloat(lenth/3-3), height: CGFloat(lenth/3-3
                                    ))
                                    .foregroundColor(Color(red: 187/255, green: 226/255, blue: 225/255))
                                
                                Spacer()
                            }
                            Spacer()
                        }
                    }.frame(width: 125, height: 125)
                    
                    
                    Spacer()
                    
                    // Right
                    VStack() {
                        
                        Spacer()
                        
                        // =
                        HStack {
                            VStack {
                                
                                Rectangle()
                                    .frame(width: CGFloat(lenth)/3, height: 3)
                                    .foregroundColor(Color(red: 87/255, green: 191/255, blue: 190/255))
                                    .padding(.bottom, 5.0)
                                
                                Rectangle()
                                    .frame(width: CGFloat(lenth)/3, height: 3)
                                    .foregroundColor(Color(red: 87/255, green: 191/255, blue: 190/255))
                                    .padding(.top, 5.0)
                                
                            }
                            
                            Spacer()
                            
                        }
                        .frame(width: 125)
                        
                        ZStack {
                            
                            // Background
                            Rectangle()
                                .foregroundColor(Color.white)
                                .frame(width: 125, height: 70)
                                .cornerRadius(12)
                                .shadow(radius: 5)
                            
                            HStack {
                                
                                Spacer()
                                
                                VStack {
                                    
                                    Spacer()
                                    
                                    Text("x")
                                        .foregroundColor(Color.black)
                                        .colorScheme(.light)
                                        .font(.footnote)
                                    
                                    Spacer()
                                    
                                    Text("y")
                                        .foregroundColor(Color.black)
                                        .colorScheme(.light)
                                        .font(.footnote)
                                    
                                    Spacer()
                                    
                                    Text("y'")
                                        .foregroundColor(Color.black)
                                        .colorScheme(.light)
                                        .font(.footnote)
                                    
                                    Spacer()
                                    
                                }
                                
                                Spacer()
                                
                                VStack {
                                    
                                    Spacer()
                                    
                                    Text("=")
                                        .foregroundColor(Color.black)
                                        .colorScheme(.light)
                                        .font(.footnote)
                                    
                                    Spacer()
                                    
                                    Text("=")
                                        .foregroundColor(Color.black)
                                        .colorScheme(.light)
                                        .font(.footnote)
                                    
                                    Spacer()
                                    
                                    Text("=")
                                        .foregroundColor(Color.black)
                                        .colorScheme(.light)
                                        .font(.footnote)
                                    
                                    Spacer()
                                    
                                }
                                
                                Spacer()
                                
                                VStack {
                                    
                                    Spacer()
                                    
                                    Text("\(Int(lenth/36.0))")
                                        .colorScheme(.light)
                                        .font(.footnote)
                                    
                                    Spacer()
                                    
                                    Text("\(Int(lenth/36.0)*Int(lenth/36.0))")
                                        .colorScheme(.light)
                                        .font(.footnote)
                                    
                                    Spacer()
                                    
                                    Text("\(Int(lenth/18.0))")
                                        .colorScheme(.light)
                                        .font(.footnote)
                                    
                                    Spacer()
                                    
                                }
                                
                                Spacer()
                                
                            }
                            .frame(width:100, height: 70)
                            
                        }.offset(y: 20)
                        
                        Spacer()
                    }
                    
                    Spacer()
                    
                }.frame(width: 375, height: 220)
            }
            
            Spacer()
            
            SliderView(value: $lenth)
                .frame(width: 400)
            
            Spacer()
            
            
            
            // MARK: - 3D
            
            ZStack {
                
                // Background
                Rectangle()
                    .foregroundColor(Color.white)
                    .frame(width: 375, height: 200)
                    .cornerRadius(12)
                    .shadow(radius: 12)
                
                VStack {
                    
                    Spacer()
                    
                    // Up
                    ZStack {
                        
                        // Background
                        Rectangle()
                            .foregroundColor(Color.white)
                            .frame(width: 300, height: 30)
                            .cornerRadius(15)
                            .shadow(radius: 5)
                        
                        HStack {
                            
                            Spacer()
                            
                            Text("x   =   \(Int(lenth_3D/36.0))")
                                .foregroundColor(Color.black)
                                .colorScheme(.light)
                                .font(.footnote)
                            
                            Spacer()
                            
                            Text("y   =   \((Int(lenth_3D/36.0))*(Int(lenth_3D/36.0))*(Int(lenth_3D/36.0)))")
                                .foregroundColor(Color.black)
                                .colorScheme(.light)
                                .font(.footnote)
                            
                            Spacer()
                            
                            Text("y'   =  \(Int(3*(Int(lenth_3D/36.0))*(Int(lenth_3D/36.0))))")
                                .foregroundColor(Color.black)
                                .colorScheme(.light)
                                .font(.footnote)
                             
 
                            Spacer()
                            
                        }.frame(width: 300)
                    }.offset(y:7)
                    
                    Spacer()
                    
                    HStack {
                        
                        Spacer()
                        
                        // 3D
                        VStack() {
                            
                            Spacer()
                            
                            HStack {
                                
                                // Image("_3D")
                                Image(uiImage: #imageLiteral(resourceName: "_3D.png"))
                                    .resizable()
                                    .frame(width: CGFloat(lenth_3D/3), height: CGFloat(lenth_3D/3))
                                
                                Spacer()
                                
                            }
                            
                        }
                        .frame(width: 125, height: 125)
                        
                        
                        Spacer()
                        
                        // *3
                        VStack {
                            
                            Spacer()
                            
                            HStack {
                                
                                ZStack {
                                    Rectangle()
                                        .frame(width: CGFloat(lenth_3D/4), height: CGFloat(lenth_3D/4))
                                        .foregroundColor(Color(red: 255/255, green: 252/255, blue: 214/255))
                                        .border(Color.gray)
                                        .opacity(0.7)
                                        .offset(x: 7, y: -7)
                                    
                                    Rectangle()
                                        .frame(width: CGFloat(lenth_3D/4), height: CGFloat(lenth_3D/4))
                                        .foregroundColor(Color(red: 255/255, green: 252/255, blue: 214/255))
                                        .border(Color.gray)
                                        .opacity(0.7)
                                    
                                    
                                    Rectangle()
                                        .frame(width: CGFloat(lenth_3D/4), height: CGFloat(lenth_3D/4))
                                        .foregroundColor(Color(red: 255/255, green: 252/255, blue: 214/255))
                                        .border(Color.gray)
                                        .opacity(0.7)
                                        .offset(x: -7, y: 7)
                                    
                                }
                                Spacer()
                                
                            }
                            
                        }
                        .offset(x: 7, y: -15)
                        .frame(width: 100, height: 120)
                        
                        Spacer()
                        
                    }.frame(height: 130)
                    
                    Spacer()
                }
                
            }.frame(width: 375, height: 220)
            
            Spacer()
            
            SliderView_3D(value_3D: $lenth_3D)
                .frame(width: 400)
            
            Spacer()
            
        }.frame(width: 420, height: 540)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


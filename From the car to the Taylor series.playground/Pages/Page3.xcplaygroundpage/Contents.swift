/*:
 
 # Page 3
 
 The **sine function** is very beautiful, and its derivative is very simple. 😎

 ![img](3-1.png)
 
 In the picture on the bottom right ↘️ ,
 we found that the two line segments represented by "dθ" and "dy" can form a small triangle. 📐
 Obviously, the three angles of the small triangle are equal to the three angles of the original triangle,
 so they are **similar triangles**. Then:
 
 ![img](3-2.png)
 
 In the same way, we can derive:
 
 ![img](3-3.png)
 
 **[Next page](@next)**
 
 */



//#-hidden-code

import SwiftUI
import PlaygroundSupport

struct SliderView_sin: View {
    
    @Binding var value_sin:Double
    
    var body: some View {
        VStack {
            
            Slider(value: $value_sin, in: 0...360, step: 1)
            
        }
    }
}

let sin_red   = [169.0/255.0, 248.0/255.0, 253.0/255.0,  34.0/255.0,  34.0/255.0]
let sin_green = [252.0/255.0, 248.0/255.0, 204.0/255.0, 232.0/255.0, 232.0/255.0]
let sin_blue  = [228.0/255.0,  93.0/255.0, 121.0/255.0, 253.0/255.0, 253.0/255.0]


struct sin_: View {
    
    @State private var value_sin:Double = 45
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            // Up
            ZStack {
                
                Rectangle()
                    .foregroundColor(Color.white)
                    .frame(width: 380, height: 240)
                    .cornerRadius(12)
                    .shadow(radius: 12)
                
                HStack {
                    
                    Spacer()
                    
                    ZStack {
                        
                        Spacer()
                        
                        // Round
                        // Image("sin")
                        Image(uiImage: #imageLiteral(resourceName: "sin.png"))
                            .resizable()
                            .frame(width: 200, height: 200)
                            .cornerRadius(5)
                            .shadow(radius: 5)
                        
                        // sin
                        Path { path in
                            let middle  = 100.0
                            let spacing = 99.3
                            
                            let h = sin(((value_sin) / 180.0 * Double.pi)) * 80.0
                            let a = cos(((value_sin) / 180.0 * Double.pi)) * 80.0
                            
                            path.addLines([
                                CGPoint(x: middle, y: spacing),
                                CGPoint(x: middle + a, y: spacing),
                                CGPoint(x: middle + a, y: spacing - h),
                                CGPoint(x: middle, y: spacing)
                            ])
                            
                        }
                        .fill(Color(red: sin_red[Int(value_sin/90.0)],
                                    green: sin_green[Int(value_sin/90.0)],
                                    blue: sin_blue[Int(value_sin/90.0)]))
                            .frame(width: 200, height: 200)
                            .opacity(0.8)
                    }
                    
                    Spacer()
                    
                    // Right
                    ZStack {
                        
                        // Background
                        Rectangle()
                            .foregroundColor(Color.white)
                            .frame(width:140, height: 170)
                            .cornerRadius(5)
                            .shadow(radius: 5)
                        
                        List {
                            
                            Text("   θ     =   \(String(format:"%.2f",value_sin / 180.0 * Double.pi))")
                                .font(.footnote)
                            Text(" sinθ   =  \(String(format:"%.2f",sin(((value_sin) / 180.0 * Double.pi))))")
                                .font(.footnote)
                            Text("   y'     =  \(String(format:"%.2f",cos(((value_sin) / 180.0 * Double.pi))))")
                                .font(.footnote)
                            
                        }
                        .frame(width:125, height: 160)
                        .foregroundColor(Color.black)
                        .colorScheme(.light)
                        
                    }
                    
                    Spacer()
                    
                }
                .frame(width: 380, height: 240)
                
                
            }
            
            Spacer()
            
            SliderView_sin(value_sin: $value_sin)
                .frame(width: 400)
            
            Spacer()
            
            // Down
            ZStack {
                
                Rectangle()
                    .foregroundColor(Color.white)
                    .frame(width: 380, height: 200)
                    .cornerRadius(12)
                    .shadow(radius: 12)
                
                
                HStack {
                    
                    Spacer()
                    
                    // Image("_max")
                    Image(uiImage: #imageLiteral(resourceName: "_max.png"))
                        .resizable()
                        .frame(width: 150, height: 150)
                        .cornerRadius(5)
                        .shadow(radius: 5)
                    
                    Spacer()
                    
                    // Image("_min")
                    Image(uiImage: #imageLiteral(resourceName: "_min.png"))
                        .resizable()
                        .frame(width: 150, height: 150)
                        .cornerRadius(5)
                        .shadow(radius: 5)
                    
                    Spacer()
                    
                }.frame(width: 380, height: 200)
            }
            
            Spacer()
        }
        .frame(width: 420, height: 540)
    }
}

PlaygroundPage.current.setLiveView(sin_())

//#-end-hidden-code

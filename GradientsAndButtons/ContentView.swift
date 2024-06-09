//
//  ContentView.swift
//  GradientsAndButtons
//
//  Created by Batuhan Arda on 9.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State var showAlert = false
    var body: some View {
        ZStack{
            Color.black
            VStack(spacing:30){
                HStack(spacing:25){
                    VStack(spacing:10){
                        Text("Linear Gradient")
                            .background(.white)
                            .foregroundColor(.blue)
                            .font(.system(size: 20))
                            .frame(maxWidth: .infinity)
                        
                        Rectangle()
                            .fill(LinearGradient(gradient: Gradient(colors: [.red, .yellow]), startPoint: .top, endPoint: .bottom))
                            .frame(width: 100, height: 150)
                    }
                    
                    VStack(spacing:10){
                        Text("Radial Gradient")
                            .background(.white)
                            .foregroundColor(.blue)
                            .font(.system(size: 20))
                            .frame(maxWidth: .infinity)
                        Rectangle()
                            .fill(RadialGradient(gradient: Gradient(colors: [.red, .yellow]), center: .center, startRadius: 5, endRadius: 100))
                            .frame(width: 100, height: 150)
                    }
                    VStack(spacing:10){
                        Text("Angular Gradient")
                            .background(.white)
                            .foregroundColor(.blue)
                            .font(.system(size: 20))
                            .frame(maxWidth: .infinity)
                        Rectangle()
                            .fill(AngularGradient(gradient: Gradient(colors: [.red , .purple , .yellow ,.blue]), center: .center))
                            .frame(width: 100, height: 150)
                    }
                }
                Button("Button1"){}
                Button("Button2",role:.destructive){}
                Button("Button3",role:.destructive){}
                    .buttonStyle(.bordered)
                Button("Button4"){}
                    .buttonStyle(.borderedProminent)
                Button("Button5",role:.destructive){}
                    .buttonStyle(.borderedProminent)
                
                Button{
                    print("Bravo")
                }
            label:{
                Text("Button 6")
                    .padding()
                    .foregroundColor(.blue)
                    .background(.red)
            }
                
                Button("Alert Button"){
                    showAlert = true
                }
                .tint(.white)
                .frame(width: 250, height: 50)
                .background(.red)
                .cornerRadius(50)
                
                .alert("Important Message ", isPresented: $showAlert){
                    Button("okey",role:.cancel){}
                    Button("Thank you"){}
                }message: {
                    Text("Careful")
                }

            }
            
            
        }
    }
}

#Preview {
    ContentView()
}

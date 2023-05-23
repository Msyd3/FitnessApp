//
//  WorkoutView.swift
//  FitnessApp
//
//  Created by Mohammed Alsayed on 03/11/1444 AH.
//

import SwiftUI

struct WorkoutView: View {
    var body: some View {
        
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(alignment: .leading){
                
                HStack {
                    Text("Workouts")
                        .font(.title)
                        .foregroundColor(.white)
                        .bold()
                        
                    Spacer()
                    Button("Show More") {
                        
                    }
                    .foregroundColor(.green)
                    .font(.headline)
                }.padding()
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.secondary).opacity(0.9)
                    .frame(height: 100)
                    .padding(.top,1)
                    .overlay {
                        
                        HStack {
                            
                            Image("Image2")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 70,height: 70)
                            
                            Spacer()
                            
                            VStack(alignment: .leading){
                                Text("Traditional Strength Tranining")
                                    .foregroundColor(.white)
                                    .bold()
                                Text("304CAL")
                                    .font(.system(size: 20))
                                    .bold()
                                    .foregroundColor(.green)
                            }
                           Spacer()
                        }.padding()
                    }
            }
        }
    }
}

struct WorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView()
    }
}

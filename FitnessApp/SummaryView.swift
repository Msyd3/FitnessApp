//
//  SummaryView.swift
//  FitnessApp
//
//  Created by Mohammed Alsayed on 03/11/1444 AH.
//

import SwiftUI

struct SummaryView: View {
    var body: some View {
        
        
        
        ZStack {
            Color.black
                .ignoresSafeArea()
            ScrollView {
                VStack(alignment: .leading){
                    
                    Text("Activity")
                        .font(.title)
                        .foregroundColor(.white)
                        .bold()
                        .padding()
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.secondary).opacity(0.9)
                        .frame(height: 200)
                        .padding(.top,1)
                        .overlay {
                            
                            HStack {
                                
                                VStack(alignment: .leading){
                                   Spacer()
                                    Text("Move")
                                        .bold()
                                        .foregroundColor(.white)
                                    Text("26/200CAL")
                                        .foregroundColor(.pink)
                                        .bold()
                                        .padding(.bottom,5)
                                    Text("Steps")
                                        .bold()
                                        .foregroundColor(.white)
                                    Text("26/200CAL")
                                        .foregroundColor(.gray)
                                        .padding(.bottom,5)
                                    Text("Distance")
                                        .bold()
                                        .foregroundColor(.white)
                                    Text("26/200CAL")
                                        .foregroundColor(.gray)
                                    Spacer()
                                } .padding(.leading,30)
                                
                                Spacer()
                                Image("Image1")
                                    .resizable()
                                    .frame(width: 180,height: 180)
                                    .clipShape(Circle())
                                    .foregroundColor(.white)
                                    .padding()
                            }
                        }
                }
                
                WorkoutView()
                TrendView()
            }
            
            
        }
        
        
        
        
        
        
    }
}








struct SummaryView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryView()
    }
}

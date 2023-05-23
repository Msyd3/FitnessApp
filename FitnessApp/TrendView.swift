//
//  TrendView.swift
//  FitnessApp
//
//  Created by Mohammed Alsayed on 03/11/1444 AH.
//

import SwiftUI

struct TrendView: View {
    
    let columns = [
        GridItem(.flexible()), GridItem(.flexible())
    ]
  
    
    var body: some View {
        
        ZStack{
            Color.black
                .ignoresSafeArea()
            
            VStack{
                HStack{
                    Text("Trends")
                        .font(.title)
                        .foregroundColor(.white)
                        .bold()
                    Spacer()
                    Button("Show More") {
                        
                    }
                    .foregroundColor(.green)
                    .font(.headline)
                }.padding()
                
                
                .padding(.top)
                LazyVGrid(columns: columns, spacing: 20) {
                    
                    ForEach(allTrends , id: \.id){ trend in
                        HStack {
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.gray).opacity(0.2)
                                .frame(maxWidth: .infinity)
                                .frame(height: 100)
                    
                                .overlay {
                                    HStack{
                                        CardInfo(title: trend.title, description: trend.desciption, imageName: trend.imageName)
                                            .foregroundColor(.white)
                                            .padding(.bottom)
                                    }.padding([.top,.leading])
                                }
                        }
                        
                        
                    }
                    
                    
                    Spacer()
                }
//                .padding()
            }
        }
    }
    
    
    
    
}



struct Trends {
    
    var imageName: String
    var title: String
    var desciption: String
    var id = UUID()
}


var trend1 = Trends(imageName: "Image3", title: "Move", desciption: "102CAL/DAY")
var trend2 = Trends(imageName: "Image4", title: "Distanc", desciption: "2.9KM/DAY")
var trend3 = Trends(imageName: "Image5", title: "Walking Pace", desciption: "-/-KM")
var trend4 = Trends(imageName: "Image5", title: "Running Pace", desciption: "-/-KM")

var allTrends = [
    trend1,
    trend2,
    trend3,
    trend4
]


struct CardInfo: View {
    var title: String
    var description: String
    var imageName: String
    
    var body: some View {
        HStack {
            
            Image(imageName)
                .resizable()
                .frame(width: 45,height: 48)
                .clipShape(Circle())
            
         
            VStack(alignment: .leading) {
                Text(title)
                    .foregroundColor(.white)
                    .bold()
                Text(description)
                    .font(.footnote)
                    .foregroundColor(.white)
                   
            }
            Spacer()
        }
    }
}

struct TrendView_Previews: PreviewProvider {
    static var previews: some View {
        TrendView()
    }
}

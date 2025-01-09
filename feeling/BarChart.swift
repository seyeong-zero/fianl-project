//
//  BarChart.swift
//  Final Project
//
//  Created by seyeong on 17/04/2023.


import Foundation
import SwiftUI
import Charts


struct BarChart: View {
    let data: [Double]
   
    
    var body: some View {
        VStack {
            
            HStack {
                ForEach(data.indices) { index in
                    VStack {
                        Spacer()
                        Rectangle()
                            .fill(Color.gray.opacity(0.4))
                            //.frame(width: 20, height: CGFloat(data[index]) * 10)
                            .frame(width: 20, height: CGFloat(data[index]) * 4)
                            
                            //lengh bewtween bar chart
                            .padding(.all, 18)
                            .background(Color.gray.opacity(0.2))
 
                       
                    }
                }
            }
          
        }
    }
}

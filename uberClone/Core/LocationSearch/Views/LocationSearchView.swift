//
//  LocationSearchView.swift
//  uberClone
//
//  Created by Mahesh Adhikari on 10/5/22.
//

import SwiftUI

struct LocationSearchView: View {
    @State private var StartLocationText = ""
    @State private var DestinationText = ""
    var body: some View {
        VStack{
            
            HStack{
                
                VStack{
                    Circle()
                        .fill(Color(.systemGray3))
                        .frame(width: 6, height: 6)
                    
                    Rectangle()
                        .fill(Color(.systemGray3))
                        .frame(width: 1, height: 32)

                    Rectangle()
                        .fill(.black)
                        .frame(width: 6, height: 6)

                    
                }//inner vstack
                VStack{
                    TextField("Current Location", text: $StartLocationText)
                        .frame(height: 32)
                        .background(Color(.systemGroupedBackground))
                        .padding(.trailing)
                    
                    TextField("Where to?", text: $DestinationText)
                        .frame(height: 32)
                        .background(Color(.systemGray4))
                        .padding(.trailing)
                }
            
                
                
            }//hstack
            .padding(.horizontal)
            .padding(.top, 64)
                Divider()
                .padding(.vertical)
            
            ScrollView{
                VStack(alignment: .leading){
                    
                    ForEach(0 ..< 20, id:\.self){ _ in
                        LocationSearchResultCell()
                    }
                }
            }
            
        }//parent vstack
        .background(.white)
    }
}

struct LocationSearchView_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearchView()
    }
}

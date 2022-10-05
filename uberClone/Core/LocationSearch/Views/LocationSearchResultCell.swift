//
//  LocationSearchResultCell.swift
//  uberClone
//
//  Created by Mahesh Adhikari on 10/5/22.
//

import SwiftUI

struct LocationSearchResultCell: View {
    var body: some View {
        HStack{
            
            Image(systemName: "mappin.circle.fill")
                .resizable()
                .foregroundColor(.blue)
                .frame(width: 40, height: 40)
            
            VStack(alignment: .leading, spacing: 4){
                Text("Starbucks")
                    .font(.body)
                
                Text("San Francisco")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                
                Divider()
                
            }
            .padding(.leading, 8)
            .padding(.vertical, 8)
        }
        .padding(.leading)
    }
}

struct LocationSearchResultCell_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearchResultCell()
    }
}

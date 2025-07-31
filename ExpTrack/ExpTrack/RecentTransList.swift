//
//  RecentTransList.swift
//  ExpTrack
//
//  Created by SDC-USER on 28/07/25.
//

import Foundation
import SwiftUI

struct RecentTransList: View {
    @EnvironmentObject var transListVM: TransListViewModel
    var body: some View {
        VStack{
            HStack{
                Text("Recent Transactions")
                    .bold()
                
                Spacer()
                // Header Link
                NavigationLink{
                    TransList()
                }label:
                {
                    HStack(spacing: 6){
                        Text("See All")
                        Image(systemName: "chevron.right")
                    }
                    .foregroundColor(Color.icon)
                }
            }.padding(.top)
            
            //Recent Transaction List
            ForEach(Array(transListVM.transactions.prefix(5).enumerated()), id: \.element){
                index, transaction in TransRow(transaction: transaction)
                
                Divider()
                    .opacity(index==4 ? 0 : 1) 
            }
        }
        .padding()
        .background(Color.sysBg)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.primary.opacity(0.2), radius: 8, x: 0, y: 4)
    }
}
struct RecentTransList_Previews: PreviewProvider {
    static let transListVM : TransListViewModel = {
        let transListVM=TransListViewModel()
        transListVM.transactions=transListPrevdData
        return transListVM
    }()
    
    
    
    static var previews: some View {
        RecentTransList()
            .environmentObject(transListVM)
    }
}

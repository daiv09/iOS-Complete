//
//  TransList.swift
//  ExpTrack
//
//  Created by SDC-USER on 29/07/25.
//

import SwiftUI

struct TransList: View {
    @EnvironmentObject var transListVM: TransListViewModel
    
    var body: some View {
        VStack{
            List{
                // Trans Groups
                ForEach(Array(transListVM.groupTransByMon()), id: \.key) {
                    month, transactions in
                    Section{
                        // Trans List
                        ForEach(transactions){
                            transaction in TransRow(transaction: transaction)
                        }
                    } header: {
                        // Trans Month
                        Text(month)
                    }
                    .listSectionSeparator(.hidden)
                }
            }
            .listStyle(.plain)
        }
        .navigationTitle("Transaction")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct TransList_Previews: PreviewProvider {
    static let transListVM : TransListViewModel = {
        let transListVM=TransListViewModel()
        transListVM.transactions=transListPrevdData
        return transListVM
    }()
    
    static var previews: some View {
        TransList()
            .environmentObject(transListVM)
    }
}

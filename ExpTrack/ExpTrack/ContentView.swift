//
//  ContentView.swift
//  ExpTrack
//
//  Created by SDC-USER on 28/07/25.
//

import SwiftUI
import SwiftUICharts

struct ContentView: View {
    @EnvironmentObject var transListVM: TransListViewModel
//    var demoData: [Double]=[8,2,3,4,6,9,2]
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(alignment: .leading, spacing: 20){
                    // Title
                    Text("Overview")
                        .font(.title2)
                        .bold()
                    
                    // Charts
                    let data=transListVM.accTrans()
                    
                    if !data.isEmpty {
                        let totExp=data.last?.1 ?? 0
                        CardView {
                            VStack(alignment: .leading) {
                                ChartLabel(totExp.formatted(.currency(code: "INR")), type: .largeTitle,format:"$%.02f")
                                LineChart()
                            }
                            .background(Color.sysBg)
                        }
                        .data(data)
                        .chartStyle(ChartStyle(backgroundColor: Color.sysBg, foregroundColor: ColorGradient(Color.icon.opacity(0.4), Color.icon)))
                        .frame(height: 200)
                    }
                    
                    
                    
                    // Trans List
                    RecentTransList()
                        
                }.padding()
                    .frame(maxWidth: .infinity)
            }
            .background(Color.bg)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                // Notification Icon
                ToolbarItem{
                    Image(systemName: "bell.badge")
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(Color.ic, .primary)
                }
            }
        }
        .navigationViewStyle(.stack)
        .accentColor(.primary)
    }
}

struct ContentView_Preview: PreviewProvider {
    static let transListVM : TransListViewModel = {
        let transListVM=TransListViewModel()
        transListVM.transactions=transListPrevdData
        return transListVM
    }()
    
    static var previews: some View {
        ContentView()
            .environmentObject(transListVM)
    }
    
}

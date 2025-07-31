//
//  TransListViewModel.swift
//  ExpTrack
//
//  Created by SDC-USER on 28/07/25.
//

import Foundation
import SwiftUI
import Collections
import Combine

typealias TransGroup = OrderedDictionary<String, [Trans]>
typealias TransPreSum=[(String,Double)]

final class TransListViewModel: ObservableObject {
    @Published var transactions: [Trans] = []
    private var cancellables = Set<AnyCancellable>()
    
    init(){
        getTrans()
    }
    func getTrans(){
        guard let url=URL(string: "https://designcode.io/data/transactions.json") else{
            print("Invalid URL")
            return
        }
        
        URLSession.shared.dataTaskPublisher(for: url)
            .tryMap { (data,response) -> Data in
                guard let httpResponse=response as? HTTPURLResponse, httpResponse.statusCode == 200 else{
                 dump(response)
                    throw URLError(.badServerResponse)
                }
                
                return data
            }
            .decode(type: [Trans].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink{ (completion) in
                switch completion {
                case .failure(let error):
                    print("Error fetching trans:",error.localizedDescription)
                case .finished:
                    print("Finished fetching trans")
                }
                
            } receiveValue: { [weak self] result in
                self?.transactions=result
//                dump(self?.transactions)
            }
            .store(in: &cancellables)
            }
    
        func groupTransByMon()->TransGroup{
        guard !transactions.isEmpty else {
                return [:]
            }
            
            let groupedTrans=TransGroup(grouping: transactions) {$0.month}
            
            return groupedTrans
    }
    func accTrans() -> TransPreSum {
        print("accumulateTransaction")

        guard !transactions.isEmpty else {
            return []
        }

        let today = "02/17/2022".dateParsed()
        guard let dateInterval = Calendar.current.dateInterval(of: .month, for: today) else {
            return []
        }

        print("dateInterval:", dateInterval)

        var sum: Double = .zero
        var cumSum = TransPreSum()

        let dayInSeconds: TimeInterval = 60 * 60 * 24

        for date in stride(from: dateInterval.start, through: today, by: dayInSeconds) {
            let dailyExp = transactions.filter {
                Calendar.current.isDate($0.DateParsed, inSameDayAs: date) && $0.isExpense
            }

            let dailyTotal = dailyExp.reduce(0) { $0 - $1.signedAmt }
            sum += dailyTotal
            sum=sum.roundTo2Digs()
            cumSum.append((date.formatted(date: .abbreviated, time: .omitted), sum))

            print(date.formatted(date: .abbreviated, time: .omitted), "dailyTotal:", dailyTotal, "sum:", sum)
        }

        return cumSum
    }

    }

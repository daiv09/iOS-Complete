//
//  TransRow.swift
//  ExpTrack
//
//  Created by SDC-USER on 28/07/25.
//

import SwiftUI
import SwiftUIFontIcon

struct TransRow: View {
    var transaction: Trans
    var body: some View {
        HStack {
            // Trans Category Icon
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .fill(Color.ic.opacity(0.4))
                .frame(width: 50, height: 50)
                .overlay{
                    FontIcon.text(.awesome5Solid(code: transaction.icon), fontsize: 25, color: .ic)
                }
            
            VStack(alignment: .leading, spacing: 8){
                // Trans Merchant
                Text(transaction.merchant)
                    .bold()
                    .font(.title2)
                    .lineLimit(1)
                
                // Trans Category
                Text(transaction.category)
                    .font(.callout)
                    .opacity(0.7)
                    .lineLimit(1)

                // Trans Date
                Text(transaction.DateParsed, format: .dateTime.weekday().day().month(.wide).year())
                    .font(.footnote)
                    .foregroundStyle(.secondary)
            }
            Spacer()
            
            // Trans Amount
            Text(transaction.signedAmt, format: .currency(code: "INR"))
                .bold()
                .foregroundColor(transaction.type==TransType.credit.rawValue ? Color.txt : .primary)
        }
        .padding([.top, .bottom], 10)
    }
}

struct TransRow_Previews: PreviewProvider {
    static var previews: some View {
        TransRow(transaction: transPrevData)
    }
}

//
//  BeveragesTable.swift
//  Caffeine Squirrel
//
//  Created by Malin Sundberg on 2022-01-16.
//

import SwiftUI

struct BeveragesTable: View {
    let beverages: [Beverage]
    
    @State private var sortOrder: [KeyPathComparator<Beverage>] = [
        .init(\.name, order: .forward)
    ]
    
    var body: some View {
        Table(beverages.sorted(using: sortOrder), sortOrder: $sortOrder) {
            TableColumn("Beverage", value: \.name) { beverage in
                Text(beverage.name)
            }
            
            TableColumn("Size", value: \.ounces) { beverage in
                Text("\(beverage.ounces.formatted()) oz")
            }
            
            TableColumn("Caffeine", value: \.caffeine) { beverage in
                Text("\(beverage.caffeine.formatted()) mg")
            }
        }.frame(minWidth: 550)
    }
}

struct BeveragesTable_Previews: PreviewProvider {
    static var previews: some View {
        BeveragesTable(beverages: Beverage.allCases)
    }
}

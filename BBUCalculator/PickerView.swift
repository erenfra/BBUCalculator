//
//  PickerView.swift
//  BBUCalculator
//
//  Created by Renato Oliveira Fraga on 8/23/24.
//

import SwiftUI

struct PickerView: View {

  var title: String
  @State var selection: String
  struct PickerItem: Identifiable {
    let id = UUID()
    var name: String
    var tag: String
  }
  var items = [
    PickerItem(name: "LTE FDD", tag: "ltefdd"),
    PickerItem(name: "NR FDD", tag: "nrfdd")
  ]


    var body: some View {
      VStack(alignment: .leading) {
        Text(title)
          .font(.caption)
        Picker(title, selection: $selection) {

        }.pickerStyle(.segmented)
          .background(Color.accentColor.opacity(0.5), in: RoundedRectangle(cornerRadius: 8))
      }.padding(.horizontal)

    }
}

#Preview {
  PickerView(title: "Technology", selection: "technology")
}

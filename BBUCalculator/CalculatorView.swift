//
//  ContentView.swift
//  BBUCalculator
//
//  Created by Renato Oliveira Fraga on 8/23/24.
//

import SwiftUI

struct CalculatorView: View {
  @State private var technology = "ltefdd"
  @State private var capacityModule = "b"
  @State private var softwareRelease = "24q2"
  var body: some View {
    NavigationStack {
      VStack(spacing: 25) {
        VStack(spacing: 15) {

          VStack(alignment: .leading) {
            Text("Technology")
              .font(.caption)
            Picker("Technology", selection: $technology) {
              Text("LTE FDD").tag("ltefdd")
              Text("NR FDD").tag("nrfdd")
            }.pickerStyle(.segmented)
              .background(Color.accentColor.opacity(0.5), in: RoundedRectangle(cornerRadius: 8))
          }.padding(.horizontal)

          VStack(alignment: .leading) {
            Text("Capacity Module")
              .font(.caption)
            Picker("Capacity Module", selection: $capacityModule) {
              Text("B").tag("b")
              Text("C").tag("c")
            }.pickerStyle(.segmented)
              .background(Color.accentColor.opacity(0.5), in: RoundedRectangle(cornerRadius: 8))
          }.padding(.horizontal)

          VStack(alignment: .leading) {
            Text("Software Release")
              .font(.caption)
            Picker("Software Release", selection: $softwareRelease) {
              Text("24.Q1").tag("24q1")
              Text("24.Q2").tag("24q2")
              Text("24.Q3").tag("24q3")
              Text("24.Q4").tag("24q4")
            }.pickerStyle(.segmented)
              .background(Color.accentColor.opacity(0.5), in: RoundedRectangle(cornerRadius: 8))
          }.padding(.horizontal)

        }
        VStack(alignment: .leading) {
          Text("Capacity")
            .font(.title3.bold())
          Text("Capacity")
            .font(.title3.bold())
        }

      }.navigationTitle("Calculator")
      Spacer()
    }

  }
}

#Preview {
  CalculatorView()
}

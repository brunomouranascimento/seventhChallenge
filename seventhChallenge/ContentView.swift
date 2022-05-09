//
//  ContentView.swift
//  seventhChallenge
//
//  Created by Bruno Nascimento on 06/05/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    
    var filteredNames: [String] = []
    var body: some View {
        VStack {
            List {
                ForEach(viewModel.names, id: \.self) { name in
                    Text(name)
                }
            }
            Spacer()
            HStack {
                Spacer()
                Button {
                    withAnimation {
                        viewModel.order()
                    }
                } label: {
                    Label("Ordernar", systemImage: "arrow.up.arrow.down")
                }
                Spacer()
                Button {
                    withAnimation {
                        viewModel.filter()
                    }
                } label: {
                    Label("Filtrar", systemImage: "line.3.horizontal.decrease.circle")
                }
                Spacer()
            }
            .padding(.bottom)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}






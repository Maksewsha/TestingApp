//
//  ScrumsView.swift
//  TestingApp
//
//  Created by admin on 21.02.2022.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    var body: some View {
        List{
            ForEach(scrums){ scrum in
                NavigationLink(destination: DetailView(scrum: scrum)){
                    CardView(scrum: scrum)
                        
                }.listRowBackground(scrum.theme.mainColor)
            }
        }
        
        .navigationTitle("Daily scrums")
        .toolbar{
            Button(action: {}){
                Image(systemName: "plus")
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}

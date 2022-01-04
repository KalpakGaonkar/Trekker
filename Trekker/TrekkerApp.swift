//
//  TrekkerApp.swift
//  Trekker
//
//  Created by Kalpak Gaonkar on 12/1/21.
//

import SwiftUI

@main
struct TrekkerApp: App {
    @StateObject var locations = Locations()
    var body: some Scene {
        WindowGroup {
            TabView{
            NavigationView{
                ContentView(location: locations.primary)
            }
            .tabItem {
                Image(systemName: "airplane.circle.fill")
                Text("Discover")
            }
                
                NavigationView {
                    WorldView()
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
                NavigationView{
                    TipsView()
                }
                .tabItem{
                    Image(systemName: "list.bullet")
                    Text("tips")
                }
        }
            .environmentObject(locations)
    }
}
}

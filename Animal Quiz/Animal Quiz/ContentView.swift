//
//  ContentView.swift
//  Animal Quiz
//
//  Created by Berke Ayar on 4.04.2024.
//

import SwiftUI

struct ContentView: View {
    
    //Skor için değişken
    @State var score = 0
    
    var body: some View {
        NavigationView{
            VStack(spacing: 20){
                Text("Haydi Birlikte Hayvanları Öğrenelim.")
                    .foregroundColor(.green)
                //Butona basıldığında quize başlanır
                
                NavigationLink(destination: Quiz1()){
                    Text("Öğrenmeye Başla")
                }
                HStack{
                    //Skor'unu Gör
                    Text("Önceki Rekorunuz:  \(self.score) / \(myQuiz1.count)")
                        .onAppear(){
                            self.score = LoadScore(quiz: "myQuiz1")
                        }
                }
            }
            .navigationBarTitle("Doğru Hayvanı Bil ", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  QuizView.swift
//  Animal Quiz
//
//  Created by Berke Ayar on 4.04.2024.
//

import SwiftUI

struct Quiz1: View {
    //Soru'nun sayısı
    @State var i : Int = 0
    
    //Skor için değişken
    @State var score = 0
    @State private var showActionSheet = false
    
    var body: some View {
        
        VStack(alignment: .leading,spacing: 15){
            //if i < sorulardan --> soruları başlat
            if(self.i < myQuiz1.count){
                Image(myQuiz1[self.i].img!)
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal)
                Text(myQuiz1[self.i].text!)
                
                //cevap 0 'sa
                Button(action: {
                    self.showActionSheet = true
                    self.buttonAction(n: 0)
                }, label: {
                    Text(myQuiz1[self.i].answer[0])
                        .foregroundColor(.black)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.green, lineWidth: 2))
                })
                    .actionSheet(isPresented: $showActionSheet) {
                        ActionSheet(
                            title: Text("Skor"),
                            message: Text("Skorunuz: \(self.score) / \(myQuiz1.count)"),
                            buttons: [
                                .cancel { print(self.showActionSheet)}
                            ]
                        )
                    }
                
                //cevap 1 'sa
                Button(action: {
                    self.showActionSheet = true
                    self.buttonAction(n: 1)
                }, label: {
                    Text(myQuiz1[self.i].answer[1])
                        .foregroundColor(.black)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.green, lineWidth: 2))
                })
                    .actionSheet(isPresented: $showActionSheet) {
                        ActionSheet(
                            title: Text("Skor"),
                            message: Text("Skorunuz: \(self.score) / \(myQuiz1.count)"),
                            buttons: [
                                .cancel { print(self.showActionSheet)}
                            ]
                        )
                    }
                
                //cevap 2 'sa
                Button(action: {
                    self.showActionSheet = true
                    self.buttonAction(n: 2)
                }, label: {
                    Text(myQuiz1[self.i].answer[2])
                        .foregroundColor(.black)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.green, lineWidth: 2))
                })
                    .actionSheet(isPresented: $showActionSheet) {
                        ActionSheet(
                            title: Text("Skor"),
                            message: Text("Skorunuz: \(self.score) / \(myQuiz1.count)"),
                            buttons: [
                                .cancel { print(self.showActionSheet)}
                            ]
                        )
                    }
                
                //cevap 3 'sa
                Button(action: {
                    self.showActionSheet = true
                    self.buttonAction(n: 3)
                }, label: {
                    Text(myQuiz1[self.i].answer[3])
                        .foregroundColor(.black)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.green, lineWidth: 2))
                })
                    .actionSheet(isPresented: $showActionSheet) {
                        ActionSheet(
                            title: Text("Skor"),
                            message: Text("Skorunuz: \(self.score) / \(myQuiz1.count)"),
                            buttons: [
                                .cancel { print(self.showActionSheet)}
                            ]
                        )
                    }
                
            }
            else{
                FinalView(score: self.score)
            }
        }
        .padding(.horizontal)
    }
    func buttonAction(n: Int){
        //Eğer soru doğruya
        if(myQuiz1[self.i].correct == n){
            self.score = self.score + 1
        }
        // Yeni Soruya Git
        self.i = self.i + 1
    }
}

struct Quiz1_Previews: PreviewProvider {
    static var previews: some View {
        Quiz1()
    }
}

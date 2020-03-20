
//
//  Theme.swift
//  ProjetQuizz
//
//  Created by Benjamin Gronier on 17/03/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI


struct ThemeView: View {
    @State var loginView = false
    @State var questionView = false
    @State var creerView = false
    
    var body: some View {
        
        NavigationView{
            VStack{
                
                VStack{
                    
                    HStack{
                        
                        Spacer().frame(width:10)
                        
                        HStack{
                            
                            NavigationLink(destination: Questionnaire_View(), isActive: $creerView ){EmptyView()}
                            
                            Button(action: {
                                self.creerView = false
                            }) {
                                Image("Creer").resizable().foregroundColor(Color.blue).frame(width:40, height: 40).padding().frame(width:50, height: 50)
                                
                            }.buttonStyle(PlainButtonStyle())
                            
                            Text("Proposer une question !").foregroundColor(Color.gray)
                            
                        }.padding(.horizontal)  .background(Color.white).border(Color.gray, width: 2).cornerRadius(10)
                        
                        Spacer().frame(width:25 )
                        
                        VStack{
                            
                            Spacer().frame(height:10)
                            
                            ZStack{
                                
                                NavigationLink(destination: test(), isActive: $loginView ){EmptyView()}
                                
                                Button(action: {
                                    self.loginView = true
                                }) {
                                    Circle().fill(Color.white).frame(width:65, height: 65); Image("Login").resizable().frame(width:25, height: 10)
                                    
                                }.buttonStyle(PlainButtonStyle())
                                
                            }
                            Text("Invité").font(.footnote).frame(height:4)
                            
                        }
                        
                        Spacer().frame(width:10)
                        
                    }
                    
                    Text("Sélectionner un ou plusieurs themes !").foregroundColor(Color.white)
                }.background(Color.blue).cornerRadius(10)
                
                Spacer().frame(height:30)
                
                VStack{
                    
                    Text("2/15 theme selectionné")
                    
                    VStack{
                        
                        HStack{
                            VStack{Image("Science").resizable().frame(width:65, height: 65)
                                Text("Science").font(.footnote)
                                
                            }
                            
                            Spacer().frame(width:30)
                            Image("Art").resizable().frame(width:65, height: 65)
                            Spacer().frame(width:30)
                            Image("Sport").resizable().frame(width:65, height: 65)
                        }
                        HStack{
                            Image("Cinema").resizable().frame(width:65, height: 65)
                            Spacer().frame(width:30)
                            Image("Jeux").resizable().frame(width:65, height: 65)
                            Spacer().frame(width:30)
                            Image("Musique").resizable().frame(width:65, height: 65)
                        }
                        HStack{
                            Image("Star").resizable().frame(width:65, height: 65)
                            Spacer().frame(width:30)
                            
                            Image("Histoire").resizable().frame(width:65, height: 65)
                            Spacer().frame(width:30)
                            Image("Nature").resizable().frame(width:65, height: 65)
                        }
                        HStack{
                            Image("Voyage").resizable().frame(width:65, height: 65)
                            Spacer().frame(width:30)
                            Image("Lecture").resizable().frame(width:65, height: 65)
                            Spacer().frame(width:30)
                            Image("Divers").resizable().frame(width:65, height: 65)
                        }
                        
                    }.padding(.all)
                }.border(Color.black, width: 2).cornerRadius(5)
                
                Spacer().frame(height: 30)
                
                HStack{
                    
                    VStack{
                        
                        Text("Thème(s)")
                        Text("séléctionné")
                    }.padding(.horizontal).background(Color.blue).cornerRadius(10).foregroundColor(Color.white)
                    
                    Spacer().frame(width: 100)
                    NavigationLink(destination: Questionnaire_View(), isActive: $questionView ){EmptyView()}
                    
                    Button(action: {
                        self.questionView = true
                    }) {
                        Text("Go").padding(.all).background(Color.green).border(Color.green, width: 4).cornerRadius(100).foregroundColor(Color.white)
                        
                    }.buttonStyle(PlainButtonStyle())
                }
                
            } 
        }
    }
}


struct Theme_Previews: PreviewProvider {
    static var previews: some View {
        ThemeView()
    }
}
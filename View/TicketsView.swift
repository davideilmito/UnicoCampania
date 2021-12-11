//
//  TicketViewTest.swift
//  UnicoCampania
//
//  Created by Davide Biancardi on 11/12/21.
//

import SwiftUI

struct TicketsView: View {
    
    @StateObject var tickets = TicketStore()
    
    var body: some View {
        
        NavigationView{
            
            ScrollView(.vertical,showsIndicators: false){
                
                VStack(spacing:4){
                    
                    Text("Active")
                    
                        .font(.title2)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading,18)
                    
                    Text("CACCA")
                        .font(Font.custom("SF-Pro-Text-Regular", size: 21))
                     
                    
                    
                    VStack(spacing:18){
                        
                        ForEach(tickets.ticketArray){
                            
                            ticket in
                            
                            
                            if ticket.expired == false {
                                
                                Group{
                                    
                                    ZStack{
                                    
                                    VStack(spacing: 0){
                                        
                                        Image(ticket.Image)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 356, height: 243)
                                        
                                        
                                            .clipShape(RoundedCornersShape(corners:[.topLeft,.topRight], radius: 20))
                                        
                                        
                                        ZStack{
                                            
                                            ticket.gradient
                                            
                                                .mask(RoundedCornersShape(corners: [.bottomLeft,.bottomRight], radius: 20)
                                                      
                                                ).frame(width: 356, height: 150)
                                            
                                                .opacity(0.7)
                                            
                                            
                                            VStack(alignment: .leading, spacing: 18){
                                                
                                                
                                                
                                                Text(ticket.company.uppercased())
                                                    .font(.caption)
                                                    .foregroundColor(.secondaryCardText)
                                                    .padding(EdgeInsets(top: 15, leading: 15, bottom:5, trailing: 0))
                                                
                                                VStack(alignment:.leading,spacing: 0){
                                                    
                                                    Text(ticket.ticketTipology.uppercased())
                                                        .font(Font.custom("SF-Pro-Text-Bold", size: 21))
                                                        
                                                    
                                                    Text(ticket.route)
                                                        .font(.caption)
                                                        .foregroundColor(.secondaryCardText)
                                                    
                                                    
                                                    
                                                    
                                                }.padding(.leading,15)
                                                
                                                
                                                Spacer()
                                                
                                                
                                                
                                                
                                                
                                            }//VstackCardText
                                            
                                            
                                            .frame(maxWidth:.infinity,maxHeight: 150,alignment: .leading)
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                        }//ZStack
                                        
                                        
                                        
                                        
                                    } //VstackCard
                                    
                                    .padding(EdgeInsets(top: 0, leading: 18, bottom: 0, trailing: 18))
                                 
                                
                                    
                                
                                        if let expiredDate = ticket.expiredDate{
                                            
                                            Group{
                                                HStack(spacing:0){
                                            
                                            Text("Valid up to ")
                                                .font(.caption)
                                                Text(expiredDate, style: .date)
                                                    .font(.caption)
                                            
                                                }  .frame(maxWidth: .infinity,maxHeight:.infinity,alignment:.bottomTrailing)
                                                    .padding(.trailing,33)
                                                    .padding(.bottom,15)
                                            
                                      
                                        
                                            
                                        }
                                        }else {EmptyView()
                                            
                                            
                                            
                                        }
                                        
                                        
                                
                                } //ZstackCardView
                                
                                
                                } //Group
                                
                            }else {
                                
                                EmptyView()
                                
                            }
                            
                            
                        }//ForEach
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                }//VStack ActiveCard
                
                //                INACTIVE LIST
                VStack(spacing:4){
                    
                    Text("Inactive")
                        .font(.title2)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading,18)
                    
                    
                    
                    VStack(spacing:18){
                        
                        ForEach(tickets.ticketArray){
                            
                            ticket in
                            
                            
                            if ticket.expired == true {
                                
                                Group{
                                    
                                    ZStack{
                                    
                                    VStack(spacing: 0){
                                        
                                        Image(ticket.Image)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 356, height: 243)
                                        
                                        
                                            .clipShape(RoundedCornersShape(corners:[.topLeft,.topRight], radius: 20))
                                        
                                        
                                        ZStack{
                                            
                                            ticket.gradient
                                            
                                                .mask(RoundedCornersShape(corners: [.bottomLeft,.bottomRight], radius: 20)
                                                      
                                                ).frame(width: 356, height: 150)
                                            
                                                .opacity(0.7)
                                            
                                            
                                            VStack(alignment: .leading, spacing: 18){
                                                
                                                
                                                
                                                Text(ticket.company.uppercased())
                                                    .font(.caption)
                                                    .foregroundColor(.secondaryCardText)
                                                    .padding(EdgeInsets(top: 15, leading: 15, bottom:5, trailing: 0))
                                                
                                                VStack(alignment:.leading,spacing: 0){
                                                    
                                                    Text(ticket.ticketTipology.uppercased())
                                                        .font(.title3)
                                                        .fontWeight(.bold)
                                                    
                                                    
                                                    
                                                    Text(ticket.route)
                                                        .font(.caption)
                                                        .foregroundColor(.secondaryCardText)
                                                    
                                                    
                                                    
                                                    
                                                }.padding(.leading,15)
                                                
                                                
                                                Spacer()
                                                
                                                
                                                
                                                
                                                
                                            }//VstackCardText
                                            
                                            
                                            .frame(maxWidth:.infinity,maxHeight: 150,alignment: .leading)
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                        }//ZStack
                                        
                                        
                                        
                                        
                                        
                                    } //VstackCard
                                    
                                    .padding(EdgeInsets(top: 0, leading: 18, bottom: 0, trailing: 18))
                                    .opacity(0.4)
                                
                                        
//                                        Text("Expired".uppercased())
//                                            .font(.title2).bold()
//                                            .padding(.top,358)
//                                            .padding(.leading,235)
                                        
                                        
                                        Text("Expired".uppercased())
                                            .font(.title2).bold()
                                            .frame(maxWidth: .infinity,maxHeight:.infinity,alignment:.bottomTrailing)
                                            .padding(.trailing,33)
                                            .padding(.bottom,15)
                                    
                                    }
                                    
                                    
                                }
                                
                            }
                            
                            else {
                                
                                EmptyView()
                                
                            }
                            
                            
                        }//ForEach
                        
                        
                    }
                    
                }
            
                
            }
            
            .navigationBarTitle("Tickets")
            
            
            
        }//NavigationView
        
        
        
        
        
        
    }
}

struct TicketsView_Preview: PreviewProvider {
    static var previews: some View {
        TicketsView().preferredColorScheme(.dark)
    }
}


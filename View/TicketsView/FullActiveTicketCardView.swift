//
//  FullTicketCardView.swift
//  UnicoCampania
//
//  Created by Davide Biancardi on 12/12/21.
//

import SwiftUI

struct FullActiveTicketCardView: View {
    
    var ticket: TicketStore = TicketStore()
    
    
    var body: some View {
        
        ScrollView(.vertical,showsIndicators: false){
        
            VStack(alignment: .leading, spacing: 10){
            
            ZStack{
                
                VStack(spacing: 0){
                    
                    Image(ticket.ticketArray[1].Image)
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: .infinity, maxHeight:250 )
                    
                    
                        .clipShape(RoundedCornersShape(corners:[.topLeft,.topRight], radius: 20))
                        .opacity(0.65)
                    
                    
                    ZStack{
                        
                        ticket.ticketArray[1].gradient
                        
                            .mask(RoundedCornersShape(corners: [.bottomLeft,.bottomRight], radius: 20)
                                  
                            ).frame(maxWidth: .infinity, minHeight: 429)
                        
                            .opacity(0.65)
                        
                        
                        VStack(alignment: .leading, spacing: 18){
                            
                            
                            
                            Text(ticket.ticketArray[1].company.uppercased())
                                .font(.caption)
                                .foregroundColor(.secondaryCardText)
                                .padding(EdgeInsets(top: 15, leading: 15, bottom:5, trailing: 0))
                            
                            VStack(alignment:.leading,spacing: 0){
                                
                                Text(ticket.ticketArray[1].ticketTipology .uppercased())
                                    .font(.title2)
                                    .bold()
                                
                                
                                Text(ticket.ticketArray[1].route)
                                    .font(.caption)
                                    .foregroundColor(.secondaryCardText)
    
                            }
                            
                            .padding(.leading,15)
                            
                            Spacer()
                            
                            
                            
                            
                        }//VstackCardText
                        
                        
                        .frame(maxWidth:.infinity,maxHeight: .infinity,alignment: .leading)
                        
                        
                        
                        
                        Image("Qrcode")
                            .resizable()
                            .clipShape(RoundedRectangle(cornerRadius: 20))          .frame(width: 220, height: 220, alignment: .center)
                            .padding(.top,39)
                        
                        
                    }//ZStack
                    
                    
                    
                    
                } //VstackCard
               
                
                

                
                if let expiredDate = ticket.ticketArray[1].expiredDate{
                    
                    Group{
                        HStack(spacing:0){
                            
                            Text("Valid up to ")
                                .font(.caption)
                            Text(expiredDate, style: .date)
                                .font(.caption)
                            
                        }
                        .frame(maxWidth:.infinity,maxHeight:.infinity,alignment:.bottomTrailing)
                           .padding(.trailing, 15)
                            .padding(.bottom,15)
//
                        
                        
                        
                    }
                }else {EmptyView()
                }
                
                Text(Date(),style: .time)
                    .font(.title2)
                    .bold()
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                    .padding(.leading, 15)
                    .padding(.bottom,15)

            } //ZstackCard
            
            
            Text(ticket.ticketArray[1].description)
                .padding()
            
                HStack(spacing:0){
                    Text("Activated on: ").bold()
                    Text(ticket.ticketArray[1].activatedOn,style: .date)
                    Text(" ")
                    Text(ticket.ticketArray[1].activatedOn,style: .time)
                }.padding()
                
                
                    HStack(spacing:0){
                        Text("Issued on: ").bold()
                        Text(ticket.ticketArray[1].issuedOn,style: .date)
                        Text(" ")
                        Text(ticket.ticketArray[1].issuedOn,style: .time)
                        
                    }.padding()
                
            
        }
    }
        .background()
        .statusBar(hidden: true)
        .ignoresSafeArea()
        
}
}

struct FullActiveTicketCardView_Previews: PreviewProvider {
    static var previews: some View {
        FullActiveTicketCardView().preferredColorScheme(.dark)
    }
}

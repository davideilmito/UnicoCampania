//
//  CardView.swift
//  UnicoCampania
//
//  Created by Davide Biancardi on 15/12/21.
//

import SwiftUI

struct TicketCardView: View {
    
    let ticket: UnicoCampania.Ticket
    
    var body: some View {
        
                
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
                                
                                Text(ticket.tipology.uppercased())
                                    .font(.title2)
                                    .bold()
                                
                                
                                Text(ticket.route)
                                    .font(.caption)
                                    .foregroundColor(.secondaryCardText)
   
                                
                                
                            }.padding(.leading,15)
                            
                            
                            Spacer()
                            
                            
                            
                            
                            
                        }//VstackCardText
                        
                        
                        .frame(maxWidth:.infinity,maxHeight: 150,alignment: .leading)
                                     
                        
                        
                        
                        if let expiredDate = ticket.expiredDate{
                            
                            
                                HStack(spacing:0){
                                    
                                    Text("Valid up to ")
                                        .font(.caption)
                                    Text(expiredDate, style: .date)
                                        .font(.caption)
                                    
                                }  .frame(maxWidth: .infinity,maxHeight:.infinity,alignment:.bottomTrailing)
                                    .padding(.trailing,15)
                                    .padding(.bottom,15)
                                             
                            
                        }
                        else {
                            
                            EmptyView()
                            
                        }
                        
                        
                    
                    
                    }//ZStack
                    .frame(maxWidth:.infinity,maxHeight: 150,alignment: .leading)
                    
                    
                    
                    
                } //VstackCard
                
                .padding(EdgeInsets(top: 0, leading: 18, bottom: 0, trailing: 18))
                .contentShape(Rectangle())
              
                
                
      
     
        
    }
}

struct TicketCardView_Previews: PreviewProvider {
    static var previews: some View {
        
        let viewmodel = UnicoCampaniaViewModel.init()
        
        TicketCardView(ticket: viewmodel.ticketTwo).preferredColorScheme(.dark)
    }
}

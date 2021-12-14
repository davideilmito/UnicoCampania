//
//  ActiveTicketsView.swift
//  UnicoCampania
//
//  Created by Davide Biancardi on 12/12/21.
//

import SwiftUI

struct ActiveTicketsView: View {
    
    let activeTicketsArray : [UnicoCampania.Ticket]
    
    
    let viewModel: UnicoCampaniaViewModel

    var body: some View {
        
        VStack(spacing:4){
            
            Text("Active")
            
                .font(.title2)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading,18)
            
            LazyVStack(spacing:18){
                
                ForEach(activeTicketsArray){
                    
                    ticket in
                    
                    
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
                            }
                            else {EmptyView()
                                
                                
                                
                            }
                            
                            
                            
                        } //ZstackCardView
                        
                        
                    }.onTapGesture{
                        
                        
                        viewModel.showTicket(ticket)
                        
                    }
                    
                    //Group
                    
                    
                    
                }//ForEach
                
                
                
                
            } //Vstack Card
            
            
            
            
        }
        
        
        
    }
}



struct ActiveTicketsView_Previews: PreviewProvider {
    
    
    static let unicoCampaniaVM = UnicoCampaniaViewModel()
    
    
    static var previews: some View {
        
        ActiveTicketsView(activeTicketsArray: unicoCampaniaVM.activeTickets,viewModel: unicoCampaniaVM).preferredColorScheme(.dark)
        
    }
}

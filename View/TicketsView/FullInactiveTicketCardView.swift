//
//  FullInactiveTicketCardView.swift
//  UnicoCampania
//
//  Created by Davide Biancardi on 16/12/21.
//

import SwiftUI

struct FullInactiveTicketCardView: View {
    
    
    @Binding var showInModal : Bool
    
    var ticketCard : UnicoCampania.Ticket
    
    let viewModel: UnicoCampaniaViewModel
    

    var body: some View {
       
    
        ZStack{
        
       ScrollView(.vertical,showsIndicators: false){
           
           LazyVStack(alignment: .leading, spacing: 10){
               
               ZStack{
                   
                   VStack(spacing: 0){
                       
                       Image(ticketCard.Image)
                           .resizable()
                           .scaledToFill()
                           .frame(maxWidth: .infinity, maxHeight:250 )
                       
                       
                           .clipShape(RoundedCornersShape(corners:[.topLeft,.topRight], radius: 20))
                           .opacity(0.65)
                       
                       
                       ZStack{
                           
                           ticketCard.gradient
                           
                               .mask(RoundedCornersShape(corners: [.bottomLeft,.bottomRight], radius: 20)
                                     
                               ).frame(maxWidth: .infinity, minHeight: 150)
                           
                               .opacity(0.65)
                           
                           
                           VStack(alignment: .leading, spacing: 18){
                               
                               
                               
                               Text(ticketCard.company.uppercased())
                                   .font(.caption)
                                   .foregroundColor(.secondaryCardText)
                                   .padding(EdgeInsets(top: 15, leading: 15, bottom:5, trailing: 0))
                               
                               VStack(alignment:.leading,spacing: 0){
                                   
                                   Text(ticketCard.tipology .uppercased())
                                       .font(.title2)
                                       .bold()
                                   
                                   
                                   Text(ticketCard.route)
                                       .font(.caption)
                                       .foregroundColor(.secondaryCardText)
                                   
                               }
                               
                               .padding(.leading,15)
                               
                               Spacer()
       
                           }//VstackCardText
                                       
                           .frame(maxWidth:.infinity,maxHeight: .infinity,alignment: .leading)
      
                        
                           
                           
                       }//ZStack
                       
                       
                       
                       
                   } //VstackCard
                   
                   .opacity(0.5)
                   
                   
                   Text("Expired".uppercased())
                       .font(.headline)
                       .frame(maxWidth: .infinity,maxHeight:.infinity,alignment:.bottomTrailing)
                       .padding(.trailing,15)
                       .padding(.bottom,15)
                   
                   
           
                   
                   
               } //ZstackCard
               
               
               Text(ticketCard.description)
                   .padding()
               
               
               HStack(spacing:0){
                   Text("Issued on: ").bold()
                   Text(ticketCard.issuedOn,style: .date)
                   Text(" ")
                   Text(ticketCard.issuedOn,style: .time)
                   
               }.padding()
               
               HStack(spacing:0){
                   Text("Activated on: ").bold()
                   Text(ticketCard.activatedOn,style: .date)
                   Text(" ")
                   Text(ticketCard.activatedOn,style: .time).opacity(1)
   
               }.padding()
               
               
           }
       } 
            .statusBar(hidden: true)
            .ignoresSafeArea( edges: .top)
            
    
        
            Button {
                
                showInModal.toggle()
                viewModel.unshowTicket()
                
                  } label: {
                      Label("",systemImage: "xmark.circle.fill").foregroundColor(.white)
                          .font(.title )
                      
                  }
                  .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .topTrailing)
                  .padding(.trailing,15)
                  .padding(.top,15)
            
            
        
        
    }
        
    }
}

struct FullInactiveTicketCardView_Previews: PreviewProvider {
    
    static let unicoCampaniaVM = UnicoCampaniaViewModel()
    
    static var previews: some View {
        FullInactiveTicketCardView(showInModal: .constant(true), ticketCard:
                                    unicoCampaniaVM.ticketTwo,viewModel: unicoCampaniaVM).preferredColorScheme(.dark)
        
    }
}

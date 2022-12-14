//
//  ListRowView.swift
//  ToDoList
//
//  Created by Bhumika Patel on 22/11/22.
//

import SwiftUI

struct ListRowView: View{
    //MARK: - Variables
    let data: DataModel
    
    
    var body: some View{
        ZStack{
            HStack {
                Image(systemName: data.isCompleted ? "checkmark.circle": "circle")
                    .foregroundColor(data.isCompleted ? .red : .green)
                VStack(alignment:.leading){
                    Text(data.title)
                        .strikethrough(data.isCompleted)
                        .font(.system(size: 16))
                    
                    Text(data.status)
                        .strikethrough(data.isCompleted)
                        .foregroundColor(.gray)
                        .font(.system(size: 16))
                        .multilineTextAlignment(.leading)
                    // .padding(.trailing,230)
                    
                }
                Spacer()
                Text(data.date , style: .date)
                    .font(.system(size: 14))
                
            }
            .padding(.vertical,1)
        }
            .navigationBarItems(leading: EditButton())
        
       // .padding(.horizontal,15)
            
//        .background{
//            RoundedRectangle(cornerRadius:15, style: .continuous)
//                .fill(.gray.opacity(0.1))
//        }
    }
}

    //MARK: - Preview
struct ListRowView_Previews: PreviewProvider{
    static var data1 = DataModel(title: "First Data!",status: "Status first", date: Date(), isCompleted: false)
    static var data2 = DataModel(title: "Second Data!",status: "status second",date: Date(), isCompleted: true)
    static var previews: some View {
        Group {
            ListRowView(data: data1)
            ListRowView(data: data2)
        }
        .previewLayout(.sizeThatFits)
    }
    
    
}

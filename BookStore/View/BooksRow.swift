
//  Created by Andrew on 6/15/20.
//  Copyright © 2020 Andrew. All rights reserved.
//

import SwiftUI

struct BooksRow: View {
    let book: Book
    var body: some View {
        HStack{
            Image(book.imageName)
                .resizable()
                .aspectRatio(1/1, contentMode: .fit)
                .frame(width: 70, height: 70)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 3/2))
                .shadow(radius: 5)
            VStack(alignment: .leading){
                Text(book.name)
                    .font(.headline)
                Text(book.title)
                    .font(.subheadline)
            }
            Spacer()
        }

    }
}

struct BooksRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BooksRow(book: Books[2])
            .previewLayout(.fixed(width: 300, height: 70))
        
            BooksRow(book: Books[3])
            .previewLayout(.fixed(width: 300, height: 70))
            
        }
    }
}

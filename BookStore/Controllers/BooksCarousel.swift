
//  Created by Andrew on 6/15/20.
//  Copyright © 2020 Andrew. All rights reserved.
//

import SwiftUI

struct BooksCarousel: View {
    let books: [Book]

    var body: some View {
        VStack(alignment: .leading){
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(books) { book in
                        Image(book.imageName)
                        .resizable()
                        .aspectRatio(1/1, contentMode: .fit)
                        .frame(width: 140, height: 140)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.gray, lineWidth: 1/2))
                    }
                }
            }
        }
        .frame(height: 200)
    }
}

struct BooksCarousel_Previews: PreviewProvider {
    static var previews: some View {
        BooksCarousel(books: Books)
    }
}

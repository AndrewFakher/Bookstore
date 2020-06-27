
//  Created by Andrew on 6/15/20.
//  Copyright © 2020 Andrew. All rights reserved.
//

import SwiftUI

struct BooksList: View {
    let books: [Book]
    
    var body: some View {
        NavigationView{
            List{
                BooksCarousel(books: books)
                    .frame(width: UIScreen.main.bounds.width)
                    .padding([.leading], -20)
                ForEach(Books) { book in
                    NavigationLink(destination: BooksDetail(book: book)) {
                        BooksRow(book: book)
                    }
                }
            }.navigationBarTitle("My Library")
        }
    }
}

struct BooksList_Previews: PreviewProvider {
    static var previews: some View {
        BooksList(books: Books)
            .environment(\.colorScheme, .dark)
    }
}


//  Created by Andrew on 6/15/20.
//  Copyright © 2020 Andrew. All rights reserved.
//

import SwiftUI

struct BooksDetail: View {
    let book: Book
    var body: some View {
        VStack(alignment: .leading) {
            Image(book.imageName)
                .resizable()
                .aspectRatio(1/1, contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width)
                .clipped()
            Text(book.name)
                .bold()
                .font(.largeTitle)
                .padding(.leading)
            Text(book.title)
                .padding(.leading)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BooksDetail(book: Books[4])
    }
}

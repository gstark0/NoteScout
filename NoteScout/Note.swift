import SwiftUI

struct Note: View {
    
    var note: String = "Empty note"
    
    var body: some View {
        Button(action: {
            print("edit note...")
        }) {
            HStack {
                VStack(alignment: .leading) {
                    Text("\(self.note)")
                        .font(.system(size: 20))
                        .lineSpacing(5)
                        .foregroundColor(.black)
                    Spacer()
                    Text("23 Aug 2020")
                        .font(.system(size: 16))
                        .foregroundColor(.black)
                }
                .frame(height: 155)
                .padding()
                .padding()
                Spacer()
            }
                .background(Color(.red))
                .cornerRadius(20)
                .padding(.horizontal)
        }
    }
}

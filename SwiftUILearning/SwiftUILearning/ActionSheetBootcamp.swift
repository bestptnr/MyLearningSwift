import SwiftUI

struct ActionSheetBootcamp: View {
    @State private var showingConfirmation : Bool = false
    var body: some View {
        VStack {
            HStack{
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button(action: {
                    showingConfirmation.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
            }
            .padding(.horizontal)
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        
        .confirmationDialog("Title", isPresented: $showingConfirmation) {
            Button("Confirm", role: .destructive) {
                showingConfirmation = false
            }

            Button("Cancel", role: .cancel) {
                showingConfirmation = false
            }
        }
    }
}

struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ActionSheetBootcamp()
                .navigationTitle("Preview")
        }
    }
}

import SwiftUI

struct FetchButton: View {
    let isLoading: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                if isLoading {
                    ProgressView()
                        .colorScheme(.dark)
                }
                Text("Get Stock Supply")
                    .fontWeight(.bold)
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
            .disabled(isLoading)
        }
    }
}

struct FetchButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FetchButton(isLoading: false, action: {})
                .previewDisplayName("Not Loading")
            
            FetchButton(isLoading: true, action: {})
                .previewDisplayName("Loading")
        }
    }
}

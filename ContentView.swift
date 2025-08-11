import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}

struct ContentView: View {
    private let websiteURL = URL(string: "https://chatzeus.vercel.app")!

    var body: some View {
        WebView(url: websiteURL)
            .ignoresSafeArea()
    }
}

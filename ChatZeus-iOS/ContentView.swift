import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url = URL(string: "https://chatzeus.vercel.app" )!

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.isOpaque = false
        webView.backgroundColor = .black
        webView.scrollView.backgroundColor = .black
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

struct ContentView: View {
    var body: some View {
        WebView().ignoresSafeArea()
    }
}

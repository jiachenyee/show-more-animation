//
//  Search.swift
//  
//
//  Created by JiaChen(: on 15/1/19.
//

import Foundation
import UIKit
import SFSafariViewController

// USAGE: "Search Query".search(searchEngine: .google)
// You can use present("Search Query".search(searchEngine: .google), animated: true, completion: nil)

extension String {
    
    enum searchEngines {
        case google
        case duckduckgo
        case bing
        case yahoo
    }
    
    enum openStyle {
        case viewController
        case url
    }
    
    func search(searchEngine: searchEngines) -> UIViewController {
        var spliterVariable = "+"
        var urlStart = ""
        var urlEnd = ""
        
        switch searchEngine {
        case .google:
            spliterVariable = "%20"
            urlStart = "google.com/search?hl=en&q="
        case .duckduckgo:
            spliterVariable = "+"
            urlStart = "duckduckgo.com/?q="
        case .bing:
            spliterVariable = "+"
            urlStart = "bing.com/search?q="
        case .yahoo:
            spliterVariable = "+"
            urlStart = "search.yahoo.com/search;_ylt=Awr4xJwErzxcTtEAGExDDWVH;_ylc=X1MDMTE5NzgwNDg2NwRfcgMyBGZyAwRncHJpZANPdV9zck9lSFFxLnlTeEloTlIwOHZBBG5fcnNsdAMwBG5fc3VnZwMxMARvcmlnaW4Dc2VhcmNoLnlhaG9vLmNvbQRwb3MDMARwcXN0cgMEcHFzdHJsAwRxc3RybAMxMQRxdWVyeQN0ZXN0JTIwdGVzdAR0X3N0bXADMTU0NzQ4MDg0NA--?fr2=sb-top-search&p="
            urlEnd = "&fr=sfp&iscqry="
        }
        let convertedQuery = self.replacingOccurrences(of: " ", with: spliterVariable)
        
        let urlString = "https://\(urlStart)\(convertedQuery)\(urlEnd)"
        
        let url = URL(string: urlString)
        
        let safariViewController = SFSafariViewController(url: url!)
        return safariViewController
        
    }
}

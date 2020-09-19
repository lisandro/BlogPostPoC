//
//  View+.swift
//  BlogAppCoreData
//
//  Created by Lisandro on 19/09/2020.
//

import SwiftUI

extension View {
    func embedInNavigationView() -> some View {
        NavigationView { self }
    }
}

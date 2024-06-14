//
//  FrameworkGridViewModel.swift
//  BasicSwiftUI
//
//  Created by Zafran on 13/06/2024.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}

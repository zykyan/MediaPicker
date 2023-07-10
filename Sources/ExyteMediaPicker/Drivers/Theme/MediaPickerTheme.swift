//
//  Created by Alex.M on 06.07.2022.
//

import Foundation
import SwiftUI

public struct MediaPickerTheme {
    public let main: Main
    public let selection: Selection
    public let error: Error

    public init(main: MediaPickerTheme.Main = .init(),
                selection: MediaPickerTheme.Selection = .init(),
                error: MediaPickerTheme.Error = .init()) {
        self.main = main
        self.selection = selection
        self.error = error
    }
}

extension MediaPickerTheme {
    public struct Main {
        public let text: Color
        public let emptyText: String
        public let photosSelectMoreMsg: String
        public let photosAuthorizeMsg: String
        public let photosUnavailableMsg: String
        public let cameraAuthorizeMsg: String
        public let cameraUnavailableMsg: String
        public let albumSelectionBackground: Color
        public let fullscreenPhotoBackground: Color
        public let cameraBackground: Color
        public let cameraSelectionBackground: Color

        public init(text: Color = Color(uiColor: .label),
                    emptyText: String = "No Images",
                    photosSelectMoreMsg: String = "Setup Photos access to see more photos here",
                    photosAuthorizeMsg: String = "Allow Photos access in settings to see photos here",
                    photosUnavailableMsg: String = "Sorry, Photos are not available.",
                    cameraAuthorizeMsg: String = "Allow Camera access in settings to see live preview",
                    cameraUnavailableMsg: String = "Sorry, Camera is not available.",
                    albumSelectionBackground: Color = Color(uiColor: .systemGroupedBackground),
                    fullscreenPhotoBackground: Color = Color(uiColor: .systemGroupedBackground),
                    cameraBackground: Color = .black,
                    cameraSelectionBackground: Color = .black) {
            self.text = text
            self.emptyText = emptyText
            self.photosSelectMoreMsg = photosSelectMoreMsg
            self.photosAuthorizeMsg = photosAuthorizeMsg
            self.photosUnavailableMsg = photosUnavailableMsg
            self.cameraAuthorizeMsg = cameraAuthorizeMsg
            self.cameraUnavailableMsg = cameraUnavailableMsg
            self.albumSelectionBackground = albumSelectionBackground
            self.fullscreenPhotoBackground = fullscreenPhotoBackground
            self.cameraBackground = cameraBackground
            self.cameraSelectionBackground = cameraSelectionBackground
        }
    }

    public struct Selection {
        public let emptyTint: Color
        public let emptyBackground: Color
        public let selectedTint: Color
        public let selectedBackground: Color
        public let fullscreenTint: Color

        public init(emptyTint: Color = .white,
                    emptyBackground: Color = .clear,
                    selectedTint: Color = .blue,
                    selectedBackground: Color = .white,
                    fullscreenTint: Color = .blue) {
            self.emptyTint = emptyTint
            self.emptyBackground = emptyBackground
            self.selectedTint = selectedTint
            self.selectedBackground = selectedBackground
            self.fullscreenTint = fullscreenTint
        }
    }

    public struct Error {
        public let background: Color
        public let tint: Color

        public init(background: Color = .red.opacity(0.7),
                    tint: Color = .white) {
            self.background = background
            self.tint = tint
        }
    }
}

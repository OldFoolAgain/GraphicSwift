//Copyright © 2023 Charles Kerr. All rights reserved.

import Foundation
import CoreGraphics
import UniformTypeIdentifiers
import ImageIO

@available(macOS 11.0, *)
extension CGImage {
    @discardableResult func save( url: URL, type:UTType) -> Bool {
        
        guard let destination = CGImageDestinationCreateWithURL(url as CFURL, type.identifier as CFString, 1, nil) else { return false }
        CGImageDestinationAddImage(destination, self, nil)
        return CGImageDestinationFinalize(destination)
    }
 }

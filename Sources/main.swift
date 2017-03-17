import Foundation
import AppKit

let workspace = NSWorkspace.shared()
let defaultImage = "./default.png"
let picturePath = CommandLine.argc > 1 ? CommandLine.arguments[1] : defaultImage
let picture = URL.init(fileURLWithPath: picturePath)
let screens = NSScreen.screens() ?? []


for screen in screens {
    do { try workspace.setDesktopImageURL(_: picture, for: screen) } catch {}
}

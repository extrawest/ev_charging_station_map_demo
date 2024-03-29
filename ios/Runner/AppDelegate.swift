import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
    let flavorChannel = FlutterMethodChannel(name: "flavor_channel",
                                          binaryMessenger: controller.binaryMessenger)

    flavorChannel.setMethodCallHandler({
      (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
      // This method is invoked on the UI thread.
      guard call.method == "getFlavor" else {
        result(FlutterMethodNotImplemented)
        return
      }
      self.receiveCurrentFlavor(result: result)
    })

 let dartDefinesString = Bundle.main.infoDictionary!["DART_DEFINES"] as! String
      var dartDefinesDictionary = [String:String]()
      for definedValue in dartDefinesString.components(separatedBy: ",") {
          let decoded = String(data: Data(base64Encoded: definedValue)!, encoding: .utf8)!
          let values = decoded.components(separatedBy: "=")
          dartDefinesDictionary[values[0]] = values[1]
      }
    GMSServices.provideAPIKey(dartDefinesDictionary["IOS_KEY"]!)
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  private func receiveCurrentFlavor(result: FlutterResult) {
    var config: [String: Any]?
        
    if let infoPlistPath = Bundle.main.url(forResource: "Info", withExtension: "plist") {
        do {
            let infoPlistData = try Data(contentsOf: infoPlistPath)
            
            if let dict = try PropertyListSerialization.propertyList(from: infoPlistData, options: [], format: nil) as? [String: Any] {
                config = dict
            }
        } catch {
            print(error)
        }
    }

    result(config?["Flavor"])
  }
}


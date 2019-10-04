import SwiftUI
import GoogleMaps

struct MapView: UIViewRepresentable {
    var landmark:Landmark
    
    func makeUIView(context: Context) -> GMSMapView {
        let camera = GMSCameraPosition.camera(withLatitude: self.landmark.coordinates.latitude,
                                              longitude: self.landmark.coordinates.longitude,
                                              zoom: 7.5)
        return GMSMapView.map(withFrame: CGRect.zero, camera: camera)
    }
    
    func updateUIView(_ uiView: GMSMapView, context: Context) {
        let marker = GMSMarker()
        marker.position = uiView.camera.target
        marker.title = landmark.name
        marker.map = uiView
    }
    
}








struct MapKitDemo_Previews: PreviewProvider {
    static var previews: some View {
        MapView(landmark: landmarkData[0])
    }
}



import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var latitude:Double
    var longitude:Double
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    
}








struct MapKitDemo_Previews: PreviewProvider {
    static var previews: some View {
        MapView(latitude: 34.011286, longitude: -116.166868)
    }
}



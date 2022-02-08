import SwiftUI
import MapKit

struct HeroMapView: UIViewRepresentable {
    var coordinate: CLLocationCoordinate2D
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.25, longitudeDelta: 0.35)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
}

struct HeroMapView_Previews: PreviewProvider {
    static var previews: some View {
        HeroMapView(coordinate: HeroModel.heros[0].location)
    }
}

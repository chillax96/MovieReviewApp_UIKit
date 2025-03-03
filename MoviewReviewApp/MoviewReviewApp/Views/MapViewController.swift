import UIKit
import MapKit
import CoreLocation

class MapviewCOntroller: UIViewController, CLLocationManagerDelegate {
    var mapView: MKMapView!
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Nearby Theaters"
        setupMapView()
        requsetLocationPermission()
    }
    
    func setupMapView() {
        mapView = MKMapView(frame: view.bounds)
        view.addSubview(mapView)
    }
    
    func requsetLocationPermission() {
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else { return }
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
        mapView.setRegion(region, animated: true)
    }
}

import UIKit
import MapKit

class MapViewController: UIViewController, CLLocationManagerDelegate {
    @IBOutlet weak var mapViewOutlet: MKMapView!
    
    let locationManager = CLLocationManager()
    
    var currentLocation : CLLocation!
    
    var places : [MKMapItem] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
        locationManager.requestWhenInUseAuthorization()
        mapViewOutlet.showsUserLocation = true
        let center = CLLocationCoordinate2D(latitude: 42.2371, longitude: -88.3225)
        let region = MKCoordinateRegion(center: center, latitudinalMeters: 1600, longitudinalMeters: 1600)
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region2 = MKCoordinateRegion(center: center, span: span)
        mapViewOutlet.setRegion(region2, animated: true)
        
        
       
 
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        currentLocation = locations[0]
    }
    
    
    @IBAction func searchAction(_ sender: UIButton) {
        let request = MKLocalSearch.Request()
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        request.naturalLanguageQuery = "tennis"
        request.region = MKCoordinateRegion(center: currentLocation.coordinate, span: span)
        let search = MKLocalSearch(request: request)
        search.start { (response, error) in
            guard let response = response else{return}
            for mapItem in response.mapItems{
                self.places.append(mapItem)
                let annotation = MKPointAnnotation()
                annotation.coordinate = mapItem.placemark.coordinate
                annotation.title = mapItem.name
                self.mapViewOutlet.addAnnotation(annotation)
            }
        }
    }
    
    
    
    
    
    

}

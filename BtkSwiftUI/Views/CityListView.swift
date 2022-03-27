import SwiftUI

struct CityListView: View {
    var body: some View {
        List(CityModel.cities){
            cities in
            PreviewView(city: cities)
                .padding()
        }
    }
}

struct CityListView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CityListView()
                .previewDevice("iPhone 11")
                .previewDisplayName("iPhone 11")
            CityListView()
                .previewDevice("iPhone 13")
                .previewDisplayName("iPhone 13")
        }
    }
}

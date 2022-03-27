import SwiftUI

struct PreviewView: View {
    var city: CityModel
    var body: some View {
        HStack {
            Image(city.imageName).resizable().frame(width: 100, height: 75, alignment: .leading)
            Spacer()
            VStack {
                Text(city.name).font(.title2)
                Text(city.region).font(.title3)
            }
            Spacer()
        }.padding()
    }
}

struct PreviewView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PreviewView(city: CityModel.cities[0]).previewLayout(.sizeThatFits)
            PreviewView(city: CityModel.cities[1]).previewLayout(.sizeThatFits)
            PreviewView(city: CityModel.cities[2]).previewLayout(.sizeThatFits)
        }
    }
}

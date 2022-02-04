import SwiftUI

struct ListView: View {

    var body: some View {
        List {
            ForEach(CarModel.cars) {
                car in Section(content: {
                    HStack {
                        Text("\(car.model) \(car.hp)hp")
                            .font(.headline)
                            .fontWeight(.bold)
                        Text("\(car.price)$")
                    }
                }, header: {
                    Text(car.brand)
                        .font(.title3)
                })
            }
        }

    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

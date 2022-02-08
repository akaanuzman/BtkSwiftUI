import SwiftUI

struct HeroDetailView: View {
    let width: Double = UIScreen.main.bounds.width * 0.9
    let height: Double = UIScreen.main.bounds.height * 0.3
    let mapHeight: Double = UIScreen.main.bounds.height * 0.5
    let offset: Double = UIScreen.main.bounds.height * -0.2
    var hero: HeroModel
    var body: some View {
        VStack {
            HeroMapView(coordinate: hero.location)
                .frame(height: mapHeight)
                .edgesIgnoringSafeArea(.top)
            SpecialCircleImage(url: hero.imageUrl, borderColor: .white).frame(width: width, height: height).offset(y: offset)
            VStack {
                HStack {
                    BlueLargeTitleText(text: hero.name)
                    Spacer()
                    BlueLargeTitleText(text: hero.realName)
                }
                HStack {
                    Text(hero.city).bold()
                    Spacer()
                    Text(hero.job).bold()
                }
            }.offset(y: offset)
                .padding()

        }
    }
}

struct HeroDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeroDetailView(hero: HeroModel.heros[0])
    }
}

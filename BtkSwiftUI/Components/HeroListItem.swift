import SwiftUI

struct HeroListItem: View {
    var hero: HeroModel
    var body: some View {
        HStack {
            Image(hero.imageUrl).resizable().aspectRatio( contentMode: .fit).frame(width: 120, height: 120, alignment: .leading).padding()
            VStack {
                Text(hero.name).font(.title2).bold()
                Text(hero.realName)
            }
        }
    }
}

struct HeroListItem_Previews: PreviewProvider {
    static var previews: some View {
        HeroListItem(hero: HeroModel.heros[0])
    }
}

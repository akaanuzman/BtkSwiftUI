import SwiftUI

struct HeroView: View {
    var body: some View {
        NavigationView{
            List(HeroModel.heros){
                hero in NavigationLink(destination: HeroDetailView(hero: hero), label: {
                    HeroListItem(hero: hero)
                })
            }.navigationTitle(Text("Hero List"))
        }
    }
}

struct HeroView_Previews: PreviewProvider {
    static var previews: some View {
        HeroView()
    }
}

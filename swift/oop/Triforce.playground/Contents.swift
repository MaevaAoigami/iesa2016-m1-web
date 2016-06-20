class Personnage {
    var sexe: String
    init (sexe: String) { self.sexe = sexe }
    func getSexe() -> String { return "Le personnage est \(sexe)" }
}

class Humain : Personnage {
    var pouvoir: [String] = ["Magie", "Indéfini"]
    init(sexe: String, pouvoir: [String]) {
        self.pouvoir = pouvoir
        super.init(sexe: sexe)
    }
    func getType() -> String { return "Son pouvoir est \(pouvoir)" }
}

let p = Humain(sexe: "Féminin", pouvoir: pouvoir[0])
p.getSexe()
p.getType()
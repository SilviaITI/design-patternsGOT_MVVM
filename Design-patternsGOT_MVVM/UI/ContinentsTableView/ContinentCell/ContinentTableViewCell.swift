//
//  ContinentTableViewCell.swift
//  Design-patternsGOT_MVVM
//
//  Created by Silvia Casanova Martinez on 8/10/23.
//

import UIKit

class ContinentTableViewCell: UITableViewCell {
 
    @IBOutlet weak var letterImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!

    let westerosText: String = """
    Westeros es un intrigante mundo de fantasía que sirve como el escenario central de la aclamada serie de televisión Juego de Tronos y la serie de novelas Canción de Hielo y Fuego escritas por George R.R. Martin. Este continente ficticio es un lugar lleno de reinos, conflictos políticos, familias nobles en lucha por el poder y un trasfondo de elementos sobrenaturales. Westeros está situado en un mundo vasto y diverso, con climas que van desde los desiertos abrasadores en el sur hasta las gélidas tierras del norte. Sus ciudades y castillos son testigos de alianzas cambiantes, traiciones y batallas épicas mientras los personajes luchan por el Trono de Hierro y el control del reino. Westeros es un lugar donde la intriga, la ambición y la lucha por el poder están en constante ebullición, creando una narrativa rica y cautivadora que ha cautivado a legiones de fanáticos en todo el mundo.
"""
    
    let essosText: String = """
    Essos es un vasto continente ficticio en el mundo de Juego de Tronos y Canción de Hielo y Fuego, creado por George R.R. Martin. Es un lugar repleto de exotismo y diversidad, en contraste con el continente de Westeros. En Essos, los paisajes van desde desiertos abrasadores y ciudades amuralladas hasta vastas llanuras y exuberantes junglas. Este continente es el hogar de una rica variedad de culturas, religiones y reinos, con una historia intrigante llena de conflictos y ambiciones. Además, Essos es conocido por sus misterios, como la ciudad de Braavos y la tierra más allá del Mar de Jade. En este mundo de fantasía, Essos desempeña un papel crucial en la trama, proporcionando un telón de fondo fascinante y un escenario para muchas de las historias y aventuras de la serie y las novelas.
"""
    let sothoryosText: String = """
    
Sothoryos es un continente misterioso y poco explorado en el mundo ficticio de "Juego de Tronos" y "Canción de Hielo y Fuego" creado por George R.R. Martin. Es un lugar exuberante y salvaje, caracterizado por selvas densas, climas extremadamente cálidos y peligrosos depredadores. Aunque se sabe poco sobre este continente en comparación con Westeros y Essos, Sothoryos es un lugar lleno de misterio y desafíos, y su inexplorada naturaleza lo hace intrigante y enigmático en la trama de la serie y las novelas.
"""
    let ulthosText: String = """

En el mundo ficticio de "Juego de Tronos" y "Canción de Hielo y Fuego" de George R.R. Martin, Ulthos es un continente enigmático y poco explorado que se encuentra al este de Essos. Apenas se tiene información sobre Ulthos en la narrativa, y su existencia es en gran medida un misterio. Este continente apenas se menciona en la serie y las novelas, y su geografía y culturas son desconocidas. En la historia de este mundo de fantasía, Ulthos permanece como un enigma, agregando un toque de misterio a la rica diversidad de tierras y regiones que lo rodean.
"""
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    func updateViews(data: Continent) {
        updateText(data: data)
        updateImageText(data: data)
    }
    
    private func updateText(data: Continent) {
        nameLabel.text = data.name
    }
   private  func updateImageText(data: Continent) {
    var version:Int = data.id
        switch version {
        case 0 :
            letterImage.image = UIImage(named: "image_w")
            descriptionLabel.text = westerosText
        case 1 :
            letterImage.image = UIImage(named: "image_e")
            descriptionLabel.text = essosText
        case 2 :
            letterImage.image = UIImage(named: "image_s")
            descriptionLabel.text = sothoryosText
        case 3 :
            letterImage.image = UIImage(named: "image_u")
            descriptionLabel.text = ulthosText
        default : break
            
          
        }
            
        }
    }
    


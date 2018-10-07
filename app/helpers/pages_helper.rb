module PagesHelper
  def food_list
    [
        { id: '01', headline: 'Pekingsuppe', teaser: 'süß - sauer - scharf', infos: ['gv'], price: '2,50' },
        { id: '02', headline: 'Tom Yam Gai', teaser: 'Zitronengrassuppe mit Huhn, Thaigewürz', infos: [4, 'light'], price: '2,50' },
        { id: '03', headline: 'Tom Yam Gung', teaser: 'Zitronengrassuppe mit Scampi', infos: [4, 'light'], price: '3,00' },
        { id: '04', headline: 'Lady-Rollen', teaser: 'Gemüsefüllung Rollen mit süßer Chillisoße', infos: ['vegan', '6 Stück'], price: '2,50' },
        { id: '05', headline: 'Gebackene Wan-Tan', teaser: 'mit feinem Hühnerfleisch, Scampi und süß - sauer Sauce', infos: [4], price: '3,00' },
        { id: '10', headline: 'Wok Gemüse', teaser: 'Gemüse in Sojasoße gebraten', infos: ['vegan', 6, 'gv'], price: '4,50' },
        { id: '11', headline: 'Tofu Wok Gemüse', teaser: 'Gemüse mit Tofu gebraten in Sojasoße', infos: ['vegan', 6, 'light', 'gv'], price: '5,00' },
        { id: '12', headline: 'Tofu Thai Curry', teaser: 'Gemüse mit Tofu in Thai Curry und Kokosmilch', infos: ['vegan', 4, 6, 'light'], price: '5,00' },
        { id: '20', headline: 'Gebratener Reis', teaser: 'mit verschiedenem Gemüse', infos: ['vegan', 3, 'vg'], price: '5,00' },
        { id: '21', headline: 'Gebratener Reis', teaser: 'mit Hühnerfleisch, Eiern und verschiedene Gemüse', infos: [3, 'gv'], price: '5,50' },
        { id: '22', headline: 'Nasi Goreng', teaser: 'gebratener Curryreis mit Eiern, Shrimps, Hühnerfleisch und Gemüse', infos: [2, 3, 'light', 'gv'], price: '6,50' },
        { id: '23', headline: 'Gebratener Reis', teaser: 'mit knuspriger Ente, Eiern und verschiedene Gemüse', infos: [3, 'gv'], price: '6,90' },
        { id: '24', headline: 'Gebratener Reis', teaser: 'mit Garnelen, Eiern und verschiedene Gemüse', infos: [2,3,'gv'], price: '6,90' },
        { id: '25', headline: 'Gebratener Reis', teaser: 'mit knusprige Hühnerbrust, Eiern und verschiedene Gemüse', infos: [1, 3, 'gv'], price: '6,50' },
        { id: '30', headline: 'Gebratene Nudeln', teaser: 'mit verschiedenem Gemüse', infos: ['vegan', 3, 'gv'], price: '5,00' },
        { id: '31', headline: 'Gebratene Nudeln', teaser: 'mit Hühnerfleisch, Eiern und verschiedene Gemüse', infos: [3, 'gv'], price: '5,50' },
        { id: '32', headline: 'Bami Goreng', teaser: 'gebratener Currynudeln mit Shrimps, Hühnerfleisch und Gemüse', infos: [2, 3,'light','gv'], price: '6,50' },
        { id: '33', headline: 'Gebratene Nudeln', teaser: 'mit knuspriger Ente, Eiern und verschiedene Gemüse', infos: [3, 'gv'], price: '6,90' },
        { id: '34', headline: 'Gebratene Nudeln', teaser: 'mit Garnelen, Eiern und verschiedene Gemüse', infos: [2, 3, 'gv'], price: '6,90' },
        { id: '35', headline: 'Gebratene Nudeln', teaser: 'mit knusprige Hühnerbrust, Eiern und verschiedene Gemüse', infos: [1, 3, 'gv'], price: '6,50' },
        { id: '40', headline: 'Hühnerfleisch süß-sauer', teaser: 'mit Teigmantel gebacken dazu süß-sauer Sauce', infos: [1, 'gv'], price: '6,90' },
        { id: '41', headline: 'Hühnerfleisch Chop Suey', teaser: 'mit Wok Gemüse in Sojasoße gebraten', infos: [6, 'gv'], price: '6,50' },
        { id: '42', headline: 'Hühnerfleisch Gong Po Art', teaser: 'mit Wok Gemüse', infos: [6, 'gv'], price: '6,50' },
        { id: '43', headline: 'Hühnerfleisch Sate', teaser: 'mit Gemüse in Kokosmilch dazu Erdnusssoße', infos: [4, 6, 7, 'light'], price: '6,50' },
        { id: '44', headline: 'Hühnerfleisch Thai Curry', teaser: 'mit Gemüse in Thai Curry', infos: [4, 7, 'light'], price: '6,50' },
        { id: '50', headline: 'Ente süß-sauer', teaser: 'knusprige Ente in hausgemachter süß-sauer Sauce', infos: [1, 'gv'], price: '7,90' },
        { id: '51', headline: 'Ente Chop Suey', teaser: 'knusprige Ente mit Wok Gemüse', infos: [6, 'gv'], price: '7,90' },
        { id: '52', headline: 'Ente Gong Po Art', teaser: 'knusprige Ente nach Gong Po Art mit Wok Gemüse', infos: [6, 'light','gv'], price: '7,90' },
        { id: '53', headline: 'Ente Sate', teaser: 'knusprige Ente mit Gemüse in Kokosmilch dazu Erdnusssoße', infos: [4, 6, 7, 'light'], price: '7,90' },
        { id: '54', headline: 'Ente Thai Curry', teaser: 'knusprige Ente mit Gemüse in Thai Curry ', infos: [4, 7, 'light'], price: '7,90' },
        { id: '60', headline: 'Rindfleisch Zwiebeln', teaser: 'gebratenes Rindfleisch mit Zwiebeln und Porree', infos: [6, 'gv'], price: '7,50' },
        { id: '61', headline: 'Rindfleisch Ingwer', teaser: 'gebratenes Rindfleisch mit Ingwer und Wok Gemüse', infos: [6, 'light', 'gv'], price: '7,50' },
        { id: '62', headline: 'Rindfleisch Chop Suey', teaser: 'mit Wok Gemüse in Sojasoße gebraten ', infos: [6, 'gv'], price: '7,50' },
        { id: '63', headline: 'Rindfleisch Gong Po Art', teaser: 'mit Wok Gemüse', infos: [6, 'light', 'gv'], price: '7,50' },
        { id: '64', headline: 'Rindfleisch Thai Curry', teaser: 'mit Gemüse in Thai Curry', infos: [4, 7, 'light'], price: '7,50' },
        { id: '72', headline: 'Garnelen Chop Suey', teaser: 'mit Wok Gemüse in Sojasoße gebraten ', infos: [2, 'gv'], price: '8,50' },
        { id: '73', headline: 'Garnelen Thai Curry', teaser: 'mit Gemüse in rotem Thai Curry', infos: [2, 4, 7, 'light'], price: '8,50' }
    ]
  end

  def additional_list(type)
    case type
    when 'gv'
      'mit Geschmacksverstärke'
    when 'vegan'
      'Vegetarisch'
    when 'light'
      'leicht scharf'
    when 1
      'Gluten'
    when 2
      'Krebstiere'
    when 3
      'Eier'
    when 4
      'Fisch'
    when 5
      'Erdnüsse'
    when 6
      'Soja'
    when 7
      'Milch (einschließlich Laktose)'
    else
      type
    end
  end
end

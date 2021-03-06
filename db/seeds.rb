# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all 

Product.create(title: 'Wer das liest ist doof',
  description: %{
      Isabelle Chevalley (glp., Waadt) forderte im Rahmen einer Änderung des Tierschutzgesetzes, 
      dass das Halten von Wildtieren, die besondere Ansprüche an Haltung und Pflege stellten, 
      einer Bewilligung bedürfe. Artikel 7 des Tierschutzgesetzes sollte zudem wie folgt ergänzt 
      werden: Die Delphin- und Walhaltung (Cetacea) ist verboten. Der Nationalrat stimmte dem 
      Einzelantrag überraschend mit 112 zu 60 Stimmen zu.
  },
  image_url: 'ruby.jpg',
  price: 49.34)

Product.create(title: 'Wer das liest ist noch doofer',
  description: %{
      Im November vergangenen Jahrs waren im Connyland innerhalb einer Woche die beiden Delphine
      Shadow und Chelmers verendet (siehe Box). Tierschutzorganisationen hatten die Delphinhaltung
      im Connyland nicht nur in Zusammenhang mit dem Tod der Delphine heftig kritisiert. Die
      fr&uuml;here Nationalrätin Brigitta Gadient (bdp., Graub&uuml;nden) forderte in einer Motion ein
      Importverbot für Delphine. Der Bundesrat lehnt ein solches Verbot ab. Er teilte im Dezember
      2011 aber mit, er wolle die Untersuchung zum Tod der zwei Delphine im thurgauischen Lipperswil
      abwarten und prüfen, ob die Regeln bei der Haltung verschärft werden sollten.
  },
  image_url: 'rubyx.jpg',
  price: 1493.00)

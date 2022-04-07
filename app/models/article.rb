
class Article < ApplicationRecord
    has_rich_text :text
    has_many :comments, dependent: :destroy
    has_many :ratings, dependent: :destroy
    #belongs_to :user
    validates :title, presence: true,
                      length: { minimum: 5 }

    

    def rating_count
      ratings.count

    end

    def promedio
      suma = 0
      posicion = 0
      if(ratings.count>0)
        while posicion < ratings.count
          suma += ratings[posicion].value
          posicion= posicion+1
        end
        prom = suma.to_f/ratings.count.to_f
        return prom.ceil(1)
      else
        return 0
      end
    end

    def estrellas
      suma = 0
      posicion = 0
      prom = 0
      estrellas = ""
      num_estrellas = 0
      if(ratings.count>0)
        while posicion < ratings.count
          suma += ratings[posicion].value
          posicion= posicion+1
        end
        prom = suma/ratings.count
      end
      while num_estrellas < prom
        estrellas << "* "
        num_estrellas += 1
      end
      return estrellas
    end

    def promedio_5
      suma_5=0
      suma = 0
      posicion = 0
      prom_5 = 0

      if(ratings.count>0)
        while posicion < ratings.count
          suma += ratings[posicion].value
          if(ratings[posicion].value == 5)
            suma_5 += ratings[posicion].value
          end
          posicion = posicion+1
        end
        prom_5 = (100*suma_5)/suma
      end
      return prom_5
    end



    def promedio_4
      suma_4 = 0
      suma = 0
      posicion = 0
      prom_4 = 0

      if(ratings.count>0)
        while posicion < ratings.count
          suma += ratings[posicion].value
          if(ratings[posicion].value == 4)
            suma_4 += ratings[posicion].value
          end
          posicion = posicion+1
        end
        prom_4 = (100*suma_4)/suma
      end
      return prom_4
    end

    def promedio_3
      suma_3 = 0
      suma = 0
      posicion = 0
      prom_3 = 0

      if(ratings.count>0)
        while posicion < ratings.count
          suma += ratings[posicion].value
          if(ratings[posicion].value == 3)
            suma_3 += ratings[posicion].value
          end
          posicion = posicion+1
        end
        prom_3 = (100*suma_3)/suma        
      end
      return prom_3
    end

    def promedio_2
      suma_2 = 0
      suma = 0
      posicion = 0
      prom_2 = 0

      if(ratings.count>0)
        while posicion < ratings.count
          suma += ratings[posicion].value
          if(ratings[posicion].value == 2)
            suma_2 += ratings[posicion].value
          end
          posicion = posicion+1
        end
        prom_2 = (100*suma_2)/suma
      end
      return prom_2
    end

    def promedio_1
      suma_1 = 0
      suma = 0
      posicion = 0
      prom_1 = 0

      if(ratings.count>0)
        while posicion < ratings.count
          suma += ratings[posicion].value
          if(ratings[posicion].value == 1)
            suma_1 += ratings[posicion].value
          end
          posicion = posicion+1
        end
        prom_1 = (100*suma_1)/suma
      end
      return prom_1
    end

    

  

  end
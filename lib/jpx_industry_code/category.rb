# frozen_string_literal: true

class JpxIndustryCode
  class Category
    class << self
      def all
        [
          { id:  1, name: '水産・農林業'     },
          { id:  2, name: '鉱業'             },
          { id:  3, name: '建設業'           },
          { id:  4, name: '製造業'           },
          { id:  5, name: '電気・ガス業'     },
          { id:  6, name: '運輸・情報通信業' },
          { id:  7, name: '商業'             },
          { id:  8, name: '金融・保険業'     },
          { id:  9, name: '不動産業'         },
          { id: 10, name: 'サービス業'       }
        ]
      end
    end
  end
end

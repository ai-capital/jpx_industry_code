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
          { id:  5, name: '電気・ガス業'     },
          { id:  6, name: '運輸・情報通信業' },
          { id:  7, name: '商業'             },
          { id:  8, name: '金融・保険業'     },
          { id:  9, name: '不動産業'         },
          { id: 10, name: 'サービス業'       }
        ]
      end

      def find_by!(find_option)
        validate_find_option!(find_option)

        all.find(raise_not_found) do |jpx_industry_code_category|
          jpx_industry_code_category[find_option.flatten[0]] == find_option.flatten[1]
        end
      end

      def find_by(find_option)
        return nil unless validate_find_option(find_option)

        all.find do |jpx_industry_code_category|
          jpx_industry_code_category[find_option.flatten[0]] == find_option.flatten[1]
        end
      end

      private

      def validate_find_option!(find_option)
        raise JpxIndustryCode::Errors::InvalidArgumentError, ':id or :name must be specified.' if !find_option.is_a?(Hash) || (find_option[:id].nil? && find_option[:name].nil?)
        raise JpxIndustryCode::Errors::InvalidArgumentError, 'Single keyword argument can be specified.' if find_option.keys.length > 1
      end

      def validate_find_option(find_option)
        return false if !find_option.is_a?(Hash) || find_option.keys.length > 1

        true
      end

      def raise_not_found
        proc { raise JpxIndustryCode::Errors::NotFoundError }
      end
    end
  end
end

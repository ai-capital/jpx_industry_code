# frozen_string_literal: true

require 'jpx_industry_code/category'
require 'jpx_industry_code/errors'

class JpxIndustryCode
  class << self
    def all
      [
        { id:  1, jpx_industry_code_category_id:  1, name: '水産・農林業',         code: '0050' },
        { id:  2, jpx_industry_code_category_id:  2, name: '鉱業',                 code: '1050' },
        { id:  3, jpx_industry_code_category_id:  3, name: '建設業',               code: '2050' },
        { id:  4, jpx_industry_code_category_id:  4, name: '食料品',               code: '3050' },
        { id:  5, jpx_industry_code_category_id:  4, name: '繊維製品',             code: '3100' },
        { id:  6, jpx_industry_code_category_id:  4, name: 'パルプ・紙',           code: '3150' },
        { id:  7, jpx_industry_code_category_id:  4, name: '化学',                 code: '3200' },
        { id:  8, jpx_industry_code_category_id:  4, name: '医薬品',               code: '3250' },
        { id:  9, jpx_industry_code_category_id:  4, name: '石油・石炭製品',       code: '3300' },
        { id: 10, jpx_industry_code_category_id:  4, name: 'ゴム製品',             code: '3350' },
        { id: 11, jpx_industry_code_category_id:  4, name: 'ガラス・土石製品',     code: '3400' },
        { id: 12, jpx_industry_code_category_id:  4, name: '鉄鋼',                 code: '3450' },
        { id: 13, jpx_industry_code_category_id:  4, name: '非鉄金属',             code: '3500' },
        { id: 14, jpx_industry_code_category_id:  4, name: '金属製品',             code: '3550' },
        { id: 15, jpx_industry_code_category_id:  4, name: '機械',                 code: '3600' },
        { id: 16, jpx_industry_code_category_id:  4, name: '電気機器',             code: '3650' },
        { id: 17, jpx_industry_code_category_id:  4, name: '輸送用機器',           code: '3700' },
        { id: 18, jpx_industry_code_category_id:  4, name: '精密機器',             code: '3750' },
        { id: 19, jpx_industry_code_category_id:  4, name: 'その他製品',           code: '3800' },
        { id: 20, jpx_industry_code_category_id:  5, name: '電気・ガス業',         code: '4050' },
        { id: 21, jpx_industry_code_category_id:  6, name: '陸運業',               code: '5050' },
        { id: 22, jpx_industry_code_category_id:  6, name: '海運業',               code: '5100' },
        { id: 23, jpx_industry_code_category_id:  6, name: '空運業',               code: '5150' },
        { id: 24, jpx_industry_code_category_id:  6, name: '倉庫・運輸関連業',     code: '5200' },
        { id: 25, jpx_industry_code_category_id:  6, name: '情報・通信業',         code: '5250' },
        { id: 26, jpx_industry_code_category_id:  7, name: '卸売業',               code: '6050' },
        { id: 27, jpx_industry_code_category_id:  7, name: '小売業',               code: '6100' },
        { id: 28, jpx_industry_code_category_id:  8, name: '銀行業',               code: '7050' },
        { id: 29, jpx_industry_code_category_id:  8, name: '証券、商品先物取引業', code: '7100' },
        { id: 30, jpx_industry_code_category_id:  8, name: '保険業',               code: '7150' },
        { id: 31, jpx_industry_code_category_id:  8, name: 'その他金融業',         code: '7200' },
        { id: 32, jpx_industry_code_category_id:  9, name: '不動産業',             code: '8050' },
        { id: 33, jpx_industry_code_category_id: 10, name: 'サービス業',           code: '9050' }
      ]
    end

    def find_by!(find_option)
      validate_find_option!(find_option)

      all.find(raise_not_found) do |jpx_industry_code|
        jpx_industry_code[find_option.flatten[0]] == find_option.flatten[1]
      end
    end

    def find_by(find_option)
      all.find do |jpx_industry_code|
        jpx_industry_code[find_option.flatten[0]] == find_option.flatten[1]
      end
    end

    private

    def validate_find_option!(find_option)
      raise JpxIndustryCode::Errors::InvalidArgumentError, ':id, :name or :code must be specified.' if !find_option.is_a?(Hash) || (find_option[:id].nil? && find_option[:name].nil? && find_option[:code].nil?)
      raise JpxIndustryCode::Errors::InvalidArgumentError, 'Single keyword argument can be specified.' if find_option.keys.length > 1
    end

    def raise_not_found
      proc { raise JpxIndustryCode::Errors::NotFoundError }
    end
  end
end

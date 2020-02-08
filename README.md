[![CircleCI](https://circleci.com/gh/ai-capital/jpx_industry_code/tree/master.svg?style=svg)](https://circleci.com/gh/ai-capital/jpx_industry_code/tree/master)

# jpx_industry_code

JPX industry code and category gem.

# Installation

Add the following line to your Gemfile.

```
gem 'jpx_industry_code'
```

# How to use this

You can get the list of JPX industry codes or categories like this.

```ruby
JpxIndustryCode.all
=> [{:id=>1, :jpx_industry_code_category_id=>1, :name=>"水産・農林業", :code=>"0050"}, {:id=>2, :jpx_industry_code_category_id=>2, :name=>"鉱業", :code=>"1050"}, {:id=>3, :jpx_industry_code_category_id=>3, :name=>"建設業", :code=>"2050"}...]

JpxIndustryCode::Category.all
=> [{:id=>1, :name=>"水産・農林業"}, {:id=>2, :name=>"鉱業"}, {:id=>3, :name=>"建設業"}...]
```

# Authors

@deraru

# License

MIT

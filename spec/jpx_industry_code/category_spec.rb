require 'spec_helper'

describe JpxIndustryCode::Category do
  describe '.all' do
    subject { JpxIndustryCode::Category.all }

    it 'returns 10 elements' do
      expect(subject.length).to eq 10
    end
  end

  describe '.find_by!' do
    subject { JpxIndustryCode::Category.find_by!(find_option) }

    context 'when find_option is nil' do
      let(:find_option) { nil }

      it 'raises JpxIndustryCode::Errors::InvalidArgumentError' do
        expect{ subject }.to raise_error(JpxIndustryCode::Errors::InvalidArgumentError)
      end
    end

    context 'when find_option does not a hash' do
      let(:find_option) { 1 }

      it 'raises JpxIndustryCode::Errors::InvalidArgumentError' do
        expect{ subject }.to raise_error(JpxIndustryCode::Errors::InvalidArgumentError)
      end
    end

    context 'when find_option does not included id or name key' do
      let(:find_option) { { invalid_key: 1 } }

      it 'raises JpxIndustryCode::Errors::InvalidArgumentError' do
        expect{ subject }.to raise_error(JpxIndustryCode::Errors::InvalidArgumentError)
      end
    end

    context 'when find_option includes id and name keys' do
      let(:find_option) { { id: 1, name: 'サービス業' } }

      it 'raises JpxIndustryCode::Errors::InvalidArgumentError' do
        expect{ subject }.to raise_error(JpxIndustryCode::Errors::InvalidArgumentError)
      end
    end

    context 'when find_option includes id key' do
      let(:find_option) { { id: 1 } }

      it 'returns a matched jpx_industry_code' do
        is_expected.to eq(JpxIndustryCode::Category.all[0])
      end
    end

    context 'when find_option includes name key' do
      let(:find_option) { { name: 'サービス業' } }

      it 'returns a matched jpx_industry_code' do
        is_expected.to eq(JpxIndustryCode::Category.all[-1])
      end
    end
  end

  describe '.find_by' do
    subject { JpxIndustryCode::Category.find_by(find_option) }

    context 'when find_option is nil' do
      let(:find_option) { nil }

      it 'returns nil' do
        is_expected.to be_nil
      end
    end

    context 'when find_option does not a hash' do
      let(:find_option) { 1 }

      it 'returns nil' do
        is_expected.to be_nil
      end
    end

    context 'when find_option does not included id or name key' do
      let(:find_option) { { invalid_key: 1 } }

      it 'returns nil' do
        is_expected.to be_nil
      end
    end

    context 'when find_option includes id and name keys' do
      let(:find_option) { { id: 1, name: 'サービス業' } }

      it 'returns nil' do
        is_expected.to be_nil
      end
    end

    context 'when find_option includes id key' do
      let(:find_option) { { id: 1 } }

      it 'returns a matched jpx_industry_code' do
        is_expected.to eq(JpxIndustryCode::Category.all[0])
      end
    end

    context 'when find_option includes name key' do
      let(:find_option) { { name: 'サービス業' } }

      it 'returns a matched jpx_industry_code' do
        is_expected.to eq(JpxIndustryCode::Category.all[-1])
      end
    end
  end
end

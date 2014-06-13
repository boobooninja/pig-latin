require 'spec_helper'

describe "PigLatin" do
  it "responds to translate by returning the sentence translated to pig-latin" do
    expect(PigLatin.translate(
      'yellow egg glove rhythm')).to eq(
        'ellowyay eggway oveglay ythmrhay')

    expect(PigLatin.translate('glove')).to eq('oveglay')
    expect(PigLatin.translate('egg')).to eq('eggway')
    expect(PigLatin.translate('yellow')).to eq('ellowyay')
    expect(PigLatin.translate('rhythm')).to eq('ythmrhay')
  end
end

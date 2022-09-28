require 'cat_facts'

RSpec.describe CatFacts do
  it "returns a cat fact" do
    requester = double :requester
    expect(requester).to receive(:get)
      .with(URI("https://catfact.ninja/fact"))
      .and_return('{"fact":"The female cat reaches sexual maturity within 6 to 10 months; most veterinarians suggest spaying the female at 5 months, before her first heat period. The male cat usually reaches sexual maturity between 9 and 12 months.","length":220}')
    cat_facts = CatFacts.new(requester)
    expect(cat_facts.provide).to eq "Cat fact: The female cat reaches sexual maturity within 6 to 10 months; most veterinarians suggest spaying the female at 5 months, before her first heat period. The male cat usually reaches sexual maturity between 9 and 12 months."
  end
end

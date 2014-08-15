shared_examples_for "a key translator" do
  it "translates keys" do
    expect( subject ).to eq expectation
  end
end

describe KeySmith::Translate do

  let(:hash) { { foo: "bar", "hello" => "world", :Fizz => :buzz } }
  let(:mapping) { { foo: "foo", "hello" => :hello, :Fizz => :fizz } }
  let(:expectation) { { "foo" => "bar", hello: "world", fizz: :buzz } }

  describe "#translate" do
    subject(:translate) { hash.translate(mapping) }
    it_behaves_like "a key translator"
    it "duplicates the object before translating" do
      expect(translate.object_id).to_not eq hash.object_id
    end
  end

  describe "#translate!" do
    subject(:translate!) { hash.translate!(mapping) }
    it_behaves_like "a key translator"
    it "translates on the same object" do
      expect(translate!.object_id).to eq hash.object_id
    end
  end
end
require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  describe "welcome_email" do
    let(:user) { create(:user) }
    let(:mail) { UserMailer.welcome_email(user) }

    it "renders the headers" do
      expect(mail.subject).to eq("Bienvenido a Tongs")
      expect(mail.to).to eq([user.email])
      expect(mail.from).to eq(["tong@example.com"])
    end

    # it "renders the body" do
    #   expect(mail.body.encoded).to match("Hi")
    # end
  end

end
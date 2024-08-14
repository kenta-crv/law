class ContractMailer < ActionMailer::Base
  default from: "law@factoru.jp"
  def received_email(contract)
    @contract = contract
    mail from: contract.email
    mail to: "law@factoru.jp"
    mail(subject: '少額訴訟.comにお問い合わせがありました') do |format|
      format.text
    end
  end

  def send_email(contract)
    @contract = contract
    mail to: contract.email
    mail(subject: '少額訴訟.comにお問い合わせ頂きありがとうございます') do |format|
      format.text
    end
  end

  def contract_received_email(contract)
    @contract = contract
    mail to: "law@factoru.jp"
    mail(subject: '少額訴訟.comで契約同意がありました') do |format|
      format.text
    end
  end

  def contract_send_email(contract)
    @contract = contract
    mail to: contract.email
    mail(subject: '少額訴訟.comをご契約いただきありがとうございます。') do |format|
      format.text
    end
  end

  def received_first_email(contract)
    @contract = contract
    @contract_url = "https://ri-plus.jp/contracts/#{contract.id}"
    mail(to: "reply@ri-plus.jp", subject: "【#{@contract.company}】契約発行通知")
  end

  def send_first_email(contract)
    @contract = contract
    @contract_url = "https://ri-plus.jp/contracts/#{contract.id}"
    mail(from:"law@factoru.jp", to: @contract.email, subject: "契約締結のご案内")
  end

  def received_start_email(contract)
    @contract = contract
    @contract_url = "https://ri-plus.jp/contracts/#{contract.id}"
    mail(to: "reply@ri-plus.jp", subject: "【#{@contract.company}】開始日発行通知")
  end

  def send_start_email(contract)
    @contract = contract
    @contract_url = "https://ri-plus.jp/contracts/#{contract.id}"
    mail(from:"law@factoru.jp", to: @contract.email, subject: "株式会社Ri-Plus業務開始日のご案内")
  end

  def new_comment_notification(comment)
    @comment = comment
    @contract = comment.contract
    @contract_url = "https://ri-plus.jp/contracts/#{@contract.id}"
    mail to: "reply@ri-plus.jp"
    mail(subject: "#{@contract.company}のステータスが#{@comment.status}に更新されました") do |format|
      format.text
    end
  end

  def edit_script_notification(script)
    @script = script
    @contract = script.contract
    @contract_url = "https://ri-plus.jp/contracts/#{@contract.id}/script"
    mail to: "reply@ri-plus.jp"
    mail(subject: "#{@contract.company}よりスクリプト編集が実行されました") do |format|
      format.text
    end
  end
end

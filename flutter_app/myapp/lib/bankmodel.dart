class BankModel {
  String? content;
  String? account;
  BankModel({this.content, this.account});
}

List<BankModel> bankList = [
  BankModel(
    content: "My Account",
    account:
        "https://w7.pngwing.com/pngs/215/58/png-transparent-computer-icons-google-account-scalable-graphics-computer-file-my-account-icon-rim-123rf-symbol-thumbnail.png",
  ),
  BankModel(
    content: "ESEWA",
    account:
        "https://e7.pngegg.com/pngimages/261/608/png-clipart-esewa-zone-office-bayalbas-google-play-iphone-iphone-electronics-text-thumbnail.png",
  ),
  BankModel(
    content: "Ncell Topup",
    account:
        "https://webapi.ncell.com.np/upload/1200px-ncell_logo.svg2pkln22mants.png",
  ),
  BankModel(
    content: "Apply Loan Against FD",
    account: "https://cdn-icons-png.flaticon.com/512/929/929416.png",
  ),
];

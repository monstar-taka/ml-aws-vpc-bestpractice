# VPC BestPractice Template For MonstarLab,Inc.
## CloudFormation
### overview
VPCを作成する場合の、テンプレートを2つ用意しました。

- 本番環境用ベストプラクティステンプレート
  - vpc-bestpractice-production.template
- 開発環境・ステージング環境用ベストプラクティステンプレート
  - vpc-bestpractice.template


## Terraform
### overview
HashiCorpの[Terraform](https://www.terraform.io/)を使って各環境のVPCを作成することができます。
Terraformについては、以下の参考リンクで確認お願いします。
### 参考リンク
- [公式ページ](https://www.terraform.io/)
- [Step by stepで学ぶTerraformによる監視付きAWS構築](http://www.slideshare.net/YoTakezawa/terraform-57653858)
- [AWSでTerraformに入門](http://dev.classmethod.jp/cloud/terraform-getting-started-with-aws/)

他にもたくさん参考になりそうなページはありますので、探してみてください。

### ディレクトリ構成
```
./
├── dev
│   ├── igw.tf
│   ├── providers.tf
│   ├── rt.tf
│   ├── rta.tf
│   ├── sg.tf
│   ├── sn.tf
│   ├── terraform.tfstate
│   ├── terraform.tfstate.backup
│   ├── terraform.tfvars
│   ├── variables.tf
│   └── vpc.tf
├── prod
│   ├── igw.tf
│   ├── providers.tf
│   ├── rt.tf
│   ├── rta.tf
│   ├── sg.tf
│   ├── sn.tf
│   ├── terraform.tfstate
│   ├── terraform.tfstate.backup
│   ├── terraform.tfvars
│   ├── variables.tf
│   └── vpc.tf
├── script.sh
└── stg
    ├── igw.tf
    ├── providers.tf
    ├── rt.tf
    ├── rta.tf
    ├── sg.tf
    ├── sn.tf
    ├── terraform.tfstate
    ├── terraform.tfstate.backup
    ├── terraform.tfvars
    ├── variables.tf
    └── vpc.tf
```

### 実行方法
実行は`script.sh`を使用します。
実行時にはスクリプトの引数に以下を追加してください。

- 環境名 (dev/prod/stg)
- 実行コマンド (terraformのコマンド)
  - plan => dry-run
  - apply => リソースの作成
  - destroy => リソースの削除
- IAMのアクセスキー
- IAMのシークレットキー

### 実行コマンド例
`./script.sh dev plan AKIxxxxx oooooo`

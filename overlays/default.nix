{
  # VSCodeを最新版に置き換えるオーバーレイ
  vscode-overlay = final: prev: {
    vscode = final.nur-tagawa.vscode;
  };

  # VSCode拡張機能のオーバーレイ
  vscode-extensions-overlay = final: prev: {
    vscode-extensions = prev.vscode-extensions // (import ../pkgs/vscode-extensions { pkgs = prev; });
  };
}

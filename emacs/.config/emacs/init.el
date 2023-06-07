(org-babel-load-file
 (expand-file-name
  "config.org"
  user-emacs-directory))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("4c56af497ddf0e30f65a7232a8ee21b3d62a8c332c6b268c81e9ea99b11da0d3" "afa47084cb0beb684281f480aa84dab7c9170b084423c7f87ba755b15f6776ef" "833ddce3314a4e28411edf3c6efde468f6f2616fc31e17a62587d6a9255f4633" "d89e15a34261019eec9072575d8a924185c27d3da64899905f8548cbd9491a36" "3e200d49451ec4b8baa068c989e7fba2a97646091fd555eca0ee5a1386d56077" "524fa911b70d6b94d71585c9f0c5966fe85fb3a9ddd635362bfabd1a7981a307" "00445e6f15d31e9afaa23ed0d765850e9cd5e929be5e8e63b114a3346236c44c" "830877f4aab227556548dc0a28bf395d0abe0e3a0ab95455731c9ea5ab5fe4e1" "fee7287586b17efbfda432f05539b58e86e059e78006ce9237b8732fde991b4c" "7f1d414afda803f3244c6fb4c2c64bea44dac040ed3731ec9d75275b9e831fe5" "1a3c10fc7fa10f814aa59833271eb4f547fe5b0b47a95482477c5df75b9375c5" "2517cb1c06810ad0081591b3b2629d608df33fc964cf6fb6d8daf2ce376aba9b" "4447c5a2dd07e4f70f4cecbdcd20fecd590dfadfbb1022e6cc41c69e6b504f0d" "97d6a04f01bf6385ad53d9bb1f39988cc631f2ba586e1984b4cfa988c61f6c26" "9ce97fbdb9dce917e2c0302ceb21f2db44e7b8e03aa09cc05de82af9af48be25" "0a7fb173b50efb2bbbb54f86b5897d308d9f30a9da988083b313bd7e5969361a" "e2095cd2350502ac3dc68350f0a27485f1edb99b6fc40a782618e1d35bf9d079" "cda3bda013faafc7e6a88cfa1c8b45906a2ce61f77c59e698e69156e003cbf3b" "b3ef09ed89ce20cfad8db3271ac5e8ba33901125b386df4476922ca9e6908174" "e6a7b628460ea9c569228b3368fe0a8d11c615eeb4a0dccd253dbf548e63a835" "72422a99ddf421fc8d705332fd565c90405e73c2ec7ca10427792238ec2ff902" "9a23103f7e71d95b4b6545823c6197474888c21d0ece508fd9f0be50fff7e640" "277a5bce12d6957dbabb43a2f55ee2b6371388b749cbb29fd251df19334a1f0b" "cca1d386d4a3f645c2f8c49266e3eb9ee14cf69939141e3deb9dfd50ccaada79" "01ca8e215adc3a3221b42db10218dd181244e2971071207a384daeb9cbf31e58" "8ad210f0892474f68a5f152bbb7b514667e6f7edddcc52d2f7a3be41ea1edab9" "64947f83c308d1101f20c6ff86c308497c4d032acb75d8e9dcbc4012d9a3b36e" "7887cf8b470098657395502e16809523b629249060d61607c2225d2ef2ad59f5" "da2f0fa47b07c64108022918f9fd3dc1e744cd4b3c266d67d5d858e9f6fb8be7" "aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8" "2e05569868dc11a52b08926b4c1a27da77580daa9321773d92822f7a639956ce" "bf948e3f55a8cd1f420373410911d0a50be5a04a8886cabe8d8e471ad8fdba8e" "6945dadc749ac5cbd47012cad836f92aea9ebec9f504d32fe89a956260773ca4" "adaf421037f4ae6725aa9f5654a2ed49e2cd2765f71e19a7d26a454491b486eb" "7e377879cbd60c66b88e51fad480b3ab18d60847f31c435f15f5df18bdb18184" "636b135e4b7c86ac41375da39ade929e2bd6439de8901f53f88fde7dd5ac3561" "00cec71d41047ebabeb310a325c365d5bc4b7fab0a681a2a108d32fb161b4006" "b99e334a4019a2caa71e1d6445fc346c6f074a05fcbb989800ecbe54474ae1b0" "dc8285f7f4d86c0aebf1ea4b448842a6868553eded6f71d1de52f3dcbc960039" "e3daa8f18440301f3e54f2093fe15f4fe951986a8628e98dcd781efbec7a46f2" "8d3ef5ff6273f2a552152c7febc40eabca26bae05bd12bc85062e2dc224cde9a" "02f57ef0a20b7f61adce51445b68b2a7e832648ce2e7efb19d217b6454c1b644" "2721b06afaf1769ef63f942bf3e977f208f517b187f2526f0e57c1bd4a000350" "da75eceab6bea9298e04ce5b4b07349f8c02da305734f7c0c8c6af7b5eaa9738" "1a1ac598737d0fcdc4dfab3af3d6f46ab2d5048b8e72bc22f50271fd6d393a00" "944d52450c57b7cbba08f9b3d08095eb7a5541b0ecfb3a0a9ecd4a18f3c28948" "7a424478cb77a96af2c0f50cfb4e2a88647b3ccca225f8c650ed45b7f50d9525" "60ada0ff6b91687f1a04cc17ad04119e59a7542644c7c59fc135909499400ab8" "171d1ae90e46978eb9c342be6658d937a83aaa45997b1d7af7657546cae5985b" "f681100b27d783fefc3b62f44f84eb7fa0ce73ec183ebea5903df506eb314077" default))
 '(org-agenda-files '("~/safdar-local/org-roam/plain lists - org.org"))
 '(package-selected-packages
   '(treemacs-projectile treemacs-evil treemacs dired-icon pomidor solarized-theme hydra embark orderless zk ef-themes modus-themes emojify company writeroom-mode vterm perspective neotree ox-man markdown-mode lua-mode ivy-posframe org-roam-ui org-roam undo-tree helpful swiper use-package org-bullets magit ivy general evil-surround evil-collection dracula-theme atom-one-dark-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

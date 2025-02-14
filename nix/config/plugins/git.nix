{...}: {
  plugins.lazygit = {
    enable = true;
  };

  plugins.git-conflict = {
    enable = true;
  };

  keymaps = [
    {
      action = ":LazyGit<CR>";
      key = "<leader>gg";
      options.silent = true;
    }
  ];
}

{...}: {
  plugins.lazygit = {
    enable = true;
  };

  plugins.git-conflict = {
    enable = true;
  };

  plugins.gitsigns = {
    enable = true;
  };

  keymaps = [
    {
      action = ":LazyGit<CR>";
      key = "<leader>gg";
      options.silent = true;
    }
    {
      action = ":Gitsigns stage_hunk<CR>";
      key = "<leader>gs";
    }
    {
      action = ":Gitsigns stage_buffer<CR>";
      key = "<leader>gS";
    }
  ];
}

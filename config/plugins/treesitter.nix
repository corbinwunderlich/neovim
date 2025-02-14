{...}: {
  plugins.treesitter = {
    enable = true;

    settings = {
      folding = true;

      auto_install = true;
      sync_install = true;

      highlight.enable = true;
    };
  };
}

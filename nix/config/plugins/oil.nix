{...}: {
  plugins.oil = {
    enable = true;

    settings = {
      default_file_explorer = true;
      delete_to_trash = true;

      view_options = {
        show_hidden = true;
        natural_order = true;
      };

      win_options = {
        wrap = true;
      };

      float = {
        padding = 5;
        max_width = 80;
        max_height = 20;
        border = "rounded";
      };

      use_default_keymaps = true;
    };
  };

  keymaps = [
    {
      action = ":Oil --float<CR>";
      key = "<leader>pv";
    }
  ];
}

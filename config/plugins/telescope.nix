{...}: {
  # Needed to get rid of deprecation warning
  plugins.web-devicons.enable = true;

  dependencies.ripgrep.enable = true;
  dependencies.fzf.enable = true;

  plugins.telescope = {
    enable = true;

    extensions.ui-select.enable = true;
    extensions.media-files.enable = true;

    keymaps = {
      "<leader>pf" = {
        action = "find_files";
      };

      "<leader>ps" = {
        action = "live_grep";
      };

      "<leader>?" = {
        action = "keymaps";
      };
    };

    settings = {
      pickers = {
        find_files = {
          theme = "dropdown";
          prompt_prefix = " ❯ ";
          selection_caret = " ❯ ";
        };

        live_grep = {
          theme = "dropdown";
          prompt_prefix = " ❯ ";
          selection_caret = " ❯ ";
        };

        keymaps = {
          theme = "dropdown";
          prompt_prefix = " ❯ ";
          selection_caret = "❯ ";
        };
      };
    };
  };
}

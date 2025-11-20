{...}: {
  plugins.noice = {
    enable = true;

    settings = {
      lsp = {
        hover.enabled = false;
      };

      cmdline = {
        enable = true;

        format = {
          cmdline = {
            icon = "❯";
          };
          search_down = {
            icon = " 󰍝";
          };
          search_up = {
            icon = " 󰍠";
          };
        };
      };
    };
  };
}

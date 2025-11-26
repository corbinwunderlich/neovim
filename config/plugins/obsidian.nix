{...}: {
  plugins.obsidian = {
    enable = true;

    autoLoad = true;

    settings = {
      completion = {
        min_chars = 2;
        blink = true;
      };

      workspaces = [
        {
          name = "tenth-grade";
          path = "~/Documents/tenth-grade";
        }
      ];
    };
  };

  plugins.image = {
    enable = true;
  };

  plugins.render-markdown = {
    enable = true;

    settings = {
      render_modes = true;

      file_types = ["markdown" "Avante" "codecompanion"];

      completions.lsp.enabled = true;

      heading = {
        border = true;
        above = " ";
        below = " ";
        position = "inline";
        sign = false;
      };

      checkbox = {
        unchecked = {
          icon = " ";
        };

        checked = {
          icon = "󰡖 ";
        };
      };

      bullet = {
        icons = [""];
      };
    };
  };
}

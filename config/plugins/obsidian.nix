{...}: {
  plugins.obsidian = {
    enable = true;

    autoLoad = true;

    settings = {
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

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

      ui = {
        checkboxes = {
          " " = {
            char = "󰄱";
            hl_group = "ObsidianTodo";
          };
          "x" = {
            char = "";
            hl_group = "ObsidianDone";
          };
          "!" = {
            char = "";
            hl_group = "ObsidianImportant";
          };
        };
      };
    };
  };

  plugins.image = {
    enable = true;
  };

  plugins.render-markdown = {
    enable = true;

    settings = {
      render_modes = true;

      file_types = ["markdown" "Avante"];

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

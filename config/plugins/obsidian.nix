{...}: {
  plugins.obsidian = {
    enable = true;

    settings = {
      workspaces = [
        {
          name = "tenth-grade";
          path = "~/Documents/tenth-grade";
        }
      ];

      daily_notes = {
        folder = "dailies";
        date_format = "%Y.%m.%d";
      };

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

  plugins.render-markdown = {
    enable = true;

    settings = {
      render_modes = true;

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
        right_pad = 1;
      };
    };
  };
}

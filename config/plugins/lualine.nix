{...}: let
  colors = {
    blue = "#80a0ff";
    cyan = "#79dac8";
    black = "#080808";
    white = "#ffffff";
    yellow = "#FBC476";
    red = "#ff5189";
    violet = "#d183e8";
    grey = "#303030";
    green = "#5ed67a";
  };

  minimalTheme = {
    normal = {
      a = {
        fg = colors.violet;
        bg = "\#NONE";
      };
      b = {
        fg = colors.white;
        bg = "\#NONE";
      };
      c = {fg = colors.white;};
    };

    insert = {
      a = {
        fg = colors.green;
        bg = "\#NONE";
      };
    };

    visual = {
      a = {
        fg = colors.cyan;
        bg = "\#NONE";
      };
    };

    replace = {
      a = {
        fg = colors.red;
        bg = "\#NONE";
      };
    };

    inactive = {
      a = {
        fg = colors.white;
        bg = "\#NONE";
      };
      b = {
        fg = colors.white;
        bg = "\#NONE";
      };
      c = {fg = colors.white;};
    };
  };
in {
  plugins.lualine = {
    enable = true;

    settings = {
      options = {
        theme = minimalTheme;
        component_separators = "";
        section_separators = "";
      };
      sections = {
        lualine_a = ["mode"];
        lualine_b = ["branch"];
        lualine_c = [""];
        lualine_x = [""];
        lualine_y = ["vim.fn.wordcount().words" "encoding" "filetype"];
        lualine_z = [""];
      };
      inactive_sections = {
        lualine_a = ["filename"];
        lualine_b = [];
        lualine_c = [];
        lualine_x = [];
        lualine_y = [];
        lualine_z = ["location"];
      };
    };
  };
}

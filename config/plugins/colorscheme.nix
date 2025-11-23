{...}: let
  colorOverrides = ''
    local border = "#589ED7"

    highlights.TelescopePromptTitle = {
    	bg = colors.bg_light,
    }

    highlights.TelescopePromptBorder = {
    	fg = border,
    }

    highlights.TelescopeSelection = {
    	bg = colors.bg_light,
    }

    highlights.RenderMarkdownCode = {
    	highlights = colors.bg_light,
    }

    highlights.RenderMarkdownH1Bg = {
    	bg = colors.bg_light,
    }

    highlights.RenderMarkdownH2Bg = {
    	bg = colors.bg_light,
    }

    highlights.RenderMarkdownH3Bg = {
    	bg = colors.bg_light,
    }

    highlights.RenderMarkdownH4Bg = {
    	bg = colors.bg_light,
    }

    highlights.RenderMarkdownH5Bg = {
    	bg = colors.bg_light,
    }

    highlights.RenderMarkdownH6Bg = {
    	bg = colors.bg_light,
    }

    highlights.PmenuThumb = {
        bg = border,
    }

    highlights.PmenuSbar = {
        bg = border,
    }

    highlights.PmenuSel = {
        bg = colors.bg_light,
        fg = border,
    }
  '';
in {
  colorschemes = {
    tokyonight = {
      enable = true;

      settings = {
        transparent = true;

        on_highlights = "function(highlights, colors) ${colorOverrides} end";
      };
    };
  };

  plugins.transparent = {
    enable = true;

    settings.extra_groups = [
      "NormalFloat"
      "FloatTitle"
      "FloatBorder"
      "TelescopeNormal"
      "TelescopeBorder"
      "TelescopePromptBorder"
      "TelescopeSelection"
      "Pmenu"
      "Float"
      "BlinkCmpMenu"
      "BlinkCmpMenuBorder"
      "BlinkCmpSource"
      "BlinkCmpSourceBorder"
      "BlinkCmpDoc"
      "BlinkCmpDocBorder"
      "RenderMarkdownH1Bg"
      "RenderMarkdownH2Bg"
      "RenderMarkdownH3Bg"
      "RenderMarkdownH4Bg"
      "RenderMarkdownH5Bg"
      "RenderMarkdownH6Bg"
    ];
  };
}

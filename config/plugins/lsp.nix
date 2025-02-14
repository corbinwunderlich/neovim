{pkgs, ...}: {
  plugins.lsp = {
    enable = true;

    servers = {
      nixd = {
        enable = true;
        settings = {
          formatting.command = ["alejandra"];
        };
      };

      typos_lsp = {
        enable = true;
      };
    };

    keymaps = {
      lspBuf = {
        K = "hover";
        gD = "references";
        gd = "definition";
        gi = "implementation";
        gt = "type_definition";
        "<leader>rn" = "rename";
        "<leader>c" = "code_action";
      };
    };
  };

  plugins.lsp-format = {
    enable = true;

    lspServersToEnable = "all";
  };

  plugins.cmp = {
    enable = true;

    autoEnableSources = true;

    settings = {
      sources = [
        {name = "nvim_lsp";}
        {name = "luasnip";}
      ];

      window = {
        completion = {
          border = "rounded";
          winhighlight = "CursorLine:cmpCursorLine";
        };
      };
    };
  };
}

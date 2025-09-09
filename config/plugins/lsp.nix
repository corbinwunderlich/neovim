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

      arduino_language_server.enable = true;

      clangd.enable = true;

      html.enable = true;

      svelte.enable = true;
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

  plugins.typescript-tools = {
    enable = true;

    settings = {
      tsserver_format_options = {
        semicolons = "insert";
        indentSize = 4;
        baseIndentSize = 4;
        tabSize = 4;
      };
    };
  };

  plugins.lsp-format = {
    enable = true;

    lspServersToEnable = "all";
  };

  plugins.blink-cmp = {
    enable = true;

    settings = {
      completion = {
        menu = {border = "single";};
        documentation = {window = {border = "single";};};
      };

      signature = {window = {border = "single";};};
    };
  };
}

{
  pkgs,
  lib,
  ...
}: {
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

      sources = {
        providers.todo = {
          name = "todo-txt";
          module = "todo-blink";
        };

        default = [
          "lsp"
          "path"
          "snippets"
          "buffer"
          "todo"
        ];
      };

      fuzzy = {
        use_unsafe_no_lock = true;
      };
    };
  };

  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "todo-txt.nvim";
      src = pkgs.fetchFromGitHub {
        owner = "cche";
        repo = "todo-txt.nvim";
        rev = "main";
        hash = "sha256-qaqjGnYMYh6XEEuITeZB3Ia1f2olux6+JVVC47cPxrA=";
      };
    })
  ];

  extraConfigLuaPost = ''
        require("todo-txt").setup {
            todo_file = vim.fn.expand("~/Documents/todo.txt"),
            disable_default_mappings = true
        }

        vim.keymap.set("n", "<leader>tt", ":TodoList<CR>", { desc = "Todo List", noremap = true, silent = true })
    vim.keymap.set("n", "<leader>ta", ":TodoAdd<CR>", { desc = "Add Todo", noremap = true, silent = true })
    vim.keymap.set("n", "<leader>td", ":TodoDue<CR>", { desc = "Due Tasks", noremap = true, silent = true })
    vim.keymap.set("n", "<leader>tz", ":TodoArchive<CR>", { desc = "Archive Done Tasks", noremap = true, silent = true })
  '';
}

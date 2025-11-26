{...}: {
  plugins.blink-compat.enable = true;

  plugins.img-clip.enable = true;

  plugins.codecompanion = {
    enable = true;

    settings = {
      adapters.http.ollama = {
        __raw = ''
          function ()
            return require("codecompanion.adapters").extend("ollama", {
              env = {
                url = "https://ollama.wcopy.net",
                api_key = "OLLAMA_API_KEY",
              },
              parameters = {
                sync = true,
              },
              schema = {
                model = {
                  default = "qwen3-coder:30b",
                },
                num_ctx = {
                  default = 32768
                }
              },
              headers = {
                ["Authorization"] = "Bearer ''\${api_key}",
                ["Content-Type"] = "application/json",
              },
            })
          end
        '';
      };

      strategies = {
        chat.adapter = "ollama";
        cmd.adapter = "ollama";
        inline.adapter = "ollama";
      };

      display = {
        chat = {
          window = {
            layout = "float";
            border = "rounded";
          };

          show_settings = true;
        };
      };
    };
  };
}

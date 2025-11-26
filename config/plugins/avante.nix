{...}: {
  plugins.blink-compat.enable = true;

  plugins.avante = {
    enable = true;

    settings = {
      provider = "ollama";
      providers.ollama = {
        __inherited_from = "openai";
        endpoint = "https://ollama.wcopy.net/v1";
        model = "qwen3-coder:30b";
        api_key_name = "OLLAMA_API_KEY";
      };

      windows = {
        edit.border = "rounded";

        ask = {
          floating = true;
          border = "rounded";
        };
      };
    };
  };
}

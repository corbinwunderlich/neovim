{...}: {
  plugins.noice = {
    enable = true;

    settings = {
      cmdline = {
        enable = true;

        format = {
          cmdline = {
            icon = "❯";
          };
          search_down = {
            icon = " 󰍝";
          };
          search_up = {
            icon = " 󰍠";
          };
        };
      };
    };
  };
}

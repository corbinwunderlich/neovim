{...}: {
  plugins.indent-blankline = {
    enable = true;

    settings = {
      scope = {
        enabled = false;
      };
    };
  };

  plugins.mini = {
    enable = true;

    modules.indentscope = {
      draw = {
        delay = 0;
      };

      symbol = "▎";
    };
  };
}

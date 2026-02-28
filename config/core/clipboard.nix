{...}: {
  clipboard = {
    register = "unnamed";
  };

  keymaps = [
    {
      key = "<C-c>";
      mode = ["n" "v"];

      action = "\"+y";
    }
    {
      key = "<C-v>";
      mode = ["n" "i"];

      action = "\"+p";
    }
  ];
}

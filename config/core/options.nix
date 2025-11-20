{...}: {
  opts = {
    tabstop = 4;
    shiftwidth = 4;
    softtabstop = 4;
    expandtab = true;
    smartindent = true;

    nu = true;
    relativenumber = true;
    fillchars.eob = " ";

    wrap = true;
    linebreak = true;
    incsearch = true;
    scrolloff = 8;

    winborder = "rounded";
  };

  autoCmd = [
    {
      event = [
        "BufRead"
        "BufNewFile"
      ];

      pattern = ["*"];

      callback = {
        __raw = ''
          function()
            local filepath = vim.fn.expand("%:p:h")

            if filepath:match("^/mnt/siarnaq-home/") then
              vim.opt_local.fixeol = false
            end
          end
        '';
      };
    }
  ];
}

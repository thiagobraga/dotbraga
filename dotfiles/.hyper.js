module.exports = {
  config: {
    fontFamily: 'SauceCodePro Nerd Font',
    uiFontFamily: 'Helvetica Neue',
    fontSize: 10,
    lineHeight: 1.1,
    backgroundColor: '#000',
    borderColor: '#333',
    foregroundColor: '#fff',
    selectionColor: 'rgba(255,255,255,0.075)',
    bell: false,
    copyOnSelect: true,
    cursorBlink: true,
    cursorShape: 'BEAM',
    defaultSSHApp: true,
    padding: '20px 10px',
    shellArgs: ['--login'],
    showWindowControls: '',
    updateChannel: 'stable',
    termCSS: `
    `,

    css: `
    `,

    hypercwd: {
      initialWorkingDirectory: '~/www'
    },

    hyperTabs: {
      border: true,
      closeAlign: 'right',
      tabIconsColored: true
    },

    syncSettings: {
      quiet: false
    },
  },

  plugins: [
    'hyper-tabs-enhanced',
    'hypercwd',
    'nord-hyper',
    "hyper-search",
    "hyper-tab-icons",
    "hyperline",
    "hyperlinks",
    "hyperterm-paste",
    "hyperterm-tabs",
  ],

  keymaps: {
    'editor:copy': 'ctrl+c', // :( It still trigger Ctrl + C to kill app.
    'editor:paste': 'ctrl+v',
    'pane:close': 'ctrl+w',
    'pane:splitDown': 'ctrl+d',
    'pane:splitRight': 'ctrl+shift+d',
    'tab:new': 'ctrl+t',
    "pane:next": "ctrl+pageup",
    "pane:prev": "ctrl+pagedown",
  },
};

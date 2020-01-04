module.exports = {
  config: {
    fontFamily: 'Fira Code',
    fontSize: 12,
    fontWeight: 'normal',
    fontWeightBold: 'bold',
    backgroundColor: '#000',
    borderColor: '#333',
    foregroundColor: '#fff',
    selectionColor: 'rgba(255,255,255,0.075)',
    bell: false,
    copyOnSelect: false,
    cursorBlink: true,
    cursorShape: 'BEAM',
    defaultSSHApp: true,
    padding: '12px 14px',
    shellArgs: ['--login'],
    showWindowControls: '',
    updateChannel: 'stable',

    hypercwd: {
      initialWorkingDirectory: '~/projetos'
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
    'nord-hyper',
    'hypercwd',
    'hyper-tabs-enhanced',
  ],

  keymaps: {
    // 'editor:copy': 'ctrl+c',
    'editor:paste': 'ctrl+v',
    'pane:splitVertical': 'ctrl+shift+d',
    'pane:splitHorizontal': 'ctrl+d',
    'pane:close': 'ctrl+w',
    'tab:new': 'ctrl+t'
  },
};

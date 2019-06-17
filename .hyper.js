module.exports = {
  config: {
    updateChannel: 'stable',
    fontSize: 12,
    fontFamily: 'MesloLGLDZForPowerline-Regular',
    fontWeight: 'normal',
    fontWeightBold: 'bold',
    cursorColor: 'rgba(255,255,255,0.65)',
    cursorAccentColor: '#000',
    cursorShape: 'BEAM',
    cursorBlink: true,
    foregroundColor: '#fff',
    backgroundColor: '#000',
    selectionColor: 'rgba(255,255,255,0.3)',
    borderColor: '#333',
    css: '',
    termCSS: '',
    showHamburgerMenu: '',
    showWindowControls: '',
    padding: '12px 14px',
    shell: '',
    shellArgs: ['--login'],
    env: {},
    bell: false,
    copyOnSelect: false,
    defaultSSHApp: true,

    colors: {
      black: '#000000',
      red: '#c51e14',
      green: '#1dc121',
      yellow: '#c7c329',
      blue: '#0a2fc4',
      magenta: '#c839c5',
      cyan: '#20c5c6',
      white: '#c7c7c7',
      lightBlack: '#686868',
      lightRed: '#fd6f6b',
      lightGreen: '#67f86f',
      lightYellow: '#fffa72',
      lightBlue: '#6a76fb',
      lightMagenta: '#fd7cfc',
      lightCyan: '#68fdfe',
      lightWhite: '#ffffff',
    },

    MaterialTheme: {
      theme: '',
      backgroundOpacity: '0.75',
      accentColor: '#64FFDA',
      vibrancy: 'dark'
    },

    hypercwd: {
      initialWorkingDirectory: '/Projetos'
    }
  },

  plugins: [
    'hyper-material-theme',
    'hypercwd'
  ],
  localPlugins: [],
  keymaps: {},
};

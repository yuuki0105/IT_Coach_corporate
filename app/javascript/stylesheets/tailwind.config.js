module.exports = {
  purge: [],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      fontFamily: {
        sans: ['Noto Sans JP', 'sans-serif']
      },
      colors: {
        primary: '#6C6AD2',
        backgroundGray: '#EDEDED',
        blank: '#B4B3B3',
        borderGray:'#DFDFDF',
        subtext: '#858484',
        facebook: '#1877F2',
        twitter: '#1D9BF0',
      },
      fontSize: {
        '3.5xl': '2rem',
      },
      padding: {
        '30': '7.5rem'
      },
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
}
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
        primaryPale: '#F4F3FF',
        backgroundGray: '#EDEDED',
        blank: '#B4B3B3',
        borderGray:'#DFDFDF',
        subtext: '#858484',
        facebook: '#1877F2',
        twitter: '#1D9BF0',
        note: '#41C9B4',
      },
      fontSize: {
        '3.5xl': '2rem',
        '4.5xl': '2.5rem',
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
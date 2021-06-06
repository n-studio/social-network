module.exports = {
  purge: [],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      colors: {
        blue: {
          '700': '#4968ad',
          '800': '#4267b2',
          '900': '#32436c'
        },
        gray: {
          '400': '#898f9c',
        }
      },
    },
  },
  variants: {
    extend: {
      backgroundColor: ['active'],
    },
  },
  plugins: [],
}

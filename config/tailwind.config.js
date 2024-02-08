const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/application.html.erb',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/application.html.erb'
    /*{erb,haml,html,slim}'*/
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}

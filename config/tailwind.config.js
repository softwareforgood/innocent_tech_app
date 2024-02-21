/*NOTE: All Tailwind config listed below is from Innocent Tech Wireframe*/
/*Stylings may change*/
const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  /*content section is  to configure the paths to all of your HTML templates, 
  JS components, and any other files that contain Tailwind class names.*/
  content: [
    './public/application.html.erb',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*',
    './app/views/**/*.{erb,haml,html,slim}'
    /*{erb,haml,html,slim}'*/
  ],
  /*theme section is where you define anything related to the visual design of your site.*/
  theme: {
    extend: {
      /*To use assets from the pipeline*/
       /*backgroundImage*/
      /*backgroundImage: {} */
      
      /*borderWidth*/
      /*borderWidth: {} */

      /*colors*/
      colors: {
        /*you can name your own styling classes to use throughout the app*/

        /*primary color hex codes*/
        'it-gray': {
          50: '#0E0E0E',
          75: '#0E0E0E',
          100: '#0E0E0E',
          300: '#0E0E0E',
          500: '#0E0E0E',
          700: '#0E0E0E', 
          900: '#0E0E0E'
        },
        /*accent color hex codes*/
          'it-accent-colors': {
          'it-accent-purple': '#ED75D3',
          'it-accent-yellow': '#FFE03D',
          'it-accent-red': '#FF6961',
          'it-accent-green': '#5EDA72',
          'it-accent-blue': '#4493EF'
        }
      },
      typeScale : {
        'prose-xl': '1.25rem' /*20px*/
      }, 
      /*fontSize*/ 
      fontSize: {
        'xs': ['11.11px', '1.25rem'],
        'sm': ['13.33px', '1.25rem'],
        'base': ['16px', '1.25rem'],
        'large': ['19.2px', '1.25rem'],
        'xl': ['23.04px', '1.25rem'],
        '2xl': ['27.65px', '1.25rem']
      },
      /*Font family: American typewriter, oscine'*/
      fontFamily: {
        /*default Tailwind font family*/
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
        /*TO DO- Check if adding fontFamily syntax is correct*/
        //oscine: ['Oscine', ...defaultTheme.fontFamily.oscine],
        //americanTypewriter: ['American TypeWriter', ...defaultTheme.fontFamily.americanTypewriter]
      },

      /*flex*/
      /*flex: {},*/
      
      /*aspectRatio*/
      /*aspectRatio: {},*/

      /*lineHeight*/
      /*lineHeight: {},*/
    },
  },
  /*Default Tailwind plugins will help get a jumpstart on styling*/
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}

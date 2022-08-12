// import { Controller } from "@hotwired/stimulus"

// // Import TinyMCE
// import tinymce from 'tinymce/tinymce'

// // Import icons
// import 'tinymce/icons/default/icons'

// // Import theme
// import 'tinymce/themes/silver/theme';

// // Import skin
// import 'tinymce/skins/ui/oxide/skin.min.css';

// // Import plugins

// // import 'tinymce/plugins/advlist';
// // import 'tinymce/plugins/anchor';
// // import 'tinymce/plugins/autolink';
// import 'tinymce/plugins/autoresize';
// // import 'tinymce/plugins/autosave';
// // import 'tinymce/plugins/bbcode';
// // import 'tinymce/plugins/charmap';
// import 'tinymce/plugins/code';
// // import 'tinymce/plugins/codesample';
// // import 'tinymce/plugins/colorpicker';
// // import 'tinymce/plugins/contextmenu';
// // import 'tinymce/plugins/directionality';
// // import 'tinymce/plugins/emoticons';
// // import 'tinymce/plugins/fullpage';
// import 'tinymce/plugins/fullscreen';
// import 'tinymce/plugins/help';
// // import 'tinymce/plugins/hr';
// // import 'tinymce/plugins/image';
// // import 'tinymce/plugins/imagetools';
// // import 'tinymce/plugins/insertdatetime';
// // import 'tinymce/plugins/legacyoutput';
// import 'tinymce/plugins/link';
// import 'tinymce/plugins/lists';
// // import 'tinymce/plugins/media';
// // import 'tinymce/plugins/nonbreaking';
// // import 'tinymce/plugins/noneditable';
// // import 'tinymce/plugins/pagebreak';
// // import 'tinymce/plugins/paste';
// import 'tinymce/plugins/preview';
// // import 'tinymce/plugins/print';
// // import 'tinymce/plugins/quickbars';
// // import 'tinymce/plugins/save';
// // import 'tinymce/plugins/searchreplace';
// // import 'tinymce/plugins/spellchecker';
// // import 'tinymce/plugins/tabfocus';
// import 'tinymce/plugins/table';
// // import 'tinymce/plugins/template';
// // import 'tinymce/plugins/textcolor';
// // import 'tinymce/plugins/textpattern';
// // import 'tinymce/plugins/toc';
// // import 'tinymce/plugins/visualblocks';
// // import 'tinymce/plugins/visualchars';
// import 'tinymce/plugins/wordcount';

// export default class extends Controller {
//   static targets = ['input']

//   initialize () {
//     this.defaults = {
//       content_css: false,
//       skin: false,
//       toolbar: [
//         'styleselect | bold italic underline strikethrough superscript | blockquote numlist bullist link | alignleft aligncenter alignright | table',
//         'undo redo | fullscreen preview code help'
//               ],
//       mobile: {
//         toolbar: [
//           'styleselect | bold italic underline strikethrough superscript',
//           'blockquote numlist bullist link | alignleft aligncenter alignright | table',
//           'undo redo | fullscreen preview code help'
//         ]
//       },
//       plugins: 'link lists fullscreen help preview table code autoresize wordcount',
//       menubar: false,
//       style_formats: [
//         { title: 'Heading 1', format: 'h1' },
//         { title: 'Heading 2', format: 'h2' },
//         { title: 'Heading 3', format: 'h3' },
//         { title: 'Heading 4', format: 'h4' },
//         { title: 'Heading 5', format: 'h5' },
//         { title: 'Heading 6', format: 'h6' },
//         { title: 'Paragraph', format: 'p'}
//       ],
//       max_height: 700,
//       default_link_target: '_blank',
//       link_title: false,
//       autoresize_bottom_margin: 10,
//       link_context_toolbar: true,
//       relative_urls: false,
//       browser_spellcheck: true,
//       element_format: 'html',
//       invalid_elements: ['span'],
//       content_style: 'html { font-family: Roboto, sans-serif; line-height: 1.5; }'
//     }
//   }

//   connect () {
//     let config = Object.assign({ target: this.inputTarget }, this.defaults)
//     tinymce.init(config)
//   }

//   disconnect () {
//     tinymce.remove()
//   }
// }
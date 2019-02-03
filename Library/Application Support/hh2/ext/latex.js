module.exports = {
  patches: [
    {
      find: {
        match: /},s:{order:/
      },
      replace: {
        match: /},s:{order:/,
        replacement: (match, comps, props, decls) => {
          let text = `},tex:{order:i.default.defaultRules.codeBlock.order-1,match:function(source){return /^\`\`\`tex\\n([^]*?)\\n\`\`\`/i.exec(source);},parse:function(capture,_1,_2){return {content:capture[1]};},react:function(node,output){return __hh2_require('@hh2/latex_react').makeTexDiv(output(node.content));}},s:{order:`;
          return text;
        }
      }
    },
    {
      find: {
        match: /createRules:function\(e\){/
      },
      replace: {
        match: /createRules:function\(e\){return i\({},e,{s/,
        replacement: () => `createRules:function(e){return i({},e,{tex:i({},e.tex,{react:function(e,t,n){return __hh2_require('@hh2/latex_react').makeTexDiv(e.content);}}),s`
      }
    }
  ],
  styles: "@import 'https://cdn.jsdelivr.net/npm/katex@0.10.0/dist/katex.min.css';",
  webpackModules: {
    react: {
      run: function(exports, six, wrequire) {
	const R = require('react');
	const L = require('react-latex');
	six.makeTexDiv = function(cnt) {
	  return R.createElement(L,null,`$$${cnt}$$`);
	};
      }
    }
  },
  wpNeeds: [
    "magicrequire",
    "interceptor",
    "getId",
    "getManagedChannels=",
    "sendMessage("
  ],
  dependencies: ["webpackIntercept", "magicrequire"],
  loadAfter: ["webpackIntercept", "magicrequire"]
};

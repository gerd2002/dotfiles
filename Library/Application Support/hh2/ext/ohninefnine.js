// WARNING! This code is generated! Don't edit it!
let searchPath;
module.exports.onResolve = function() {
  hh.ohninefnineBootstrapPath = (function a(){var n=window.require,t=n("fs"),r=n("path");e=r.join(r.dirname(hh.configPath),"ohninefnine-chainloader");try{t.mkdirSync(e)}catch(a){if("EEXIST"!=a.code)throw a}try{t.mkdirSync(r.join(e,"@hh2"))}catch(a){if("EEXIST"!=a.code)throw a}try{t.mkdirSync(r.join(e,"node_modules"))}catch(a){if("EEXIST"!=a.code)throw a}try{t.existsSync(r.join(e,"package.json"))||t.writeFileSync(r.join(e,"package.json"),JSON.stringify({private:!0,dependencies:{}},null,2),"utf8")}catch(a){if("EEXIST"!=a.code)throw a}return hh.searchPaths.push(e),e})();
};
module.exports.loadBefore = ["@hh2/ohninefnine"];
module.exports.dependencies = ["@hh2/ohninefnine"];
function $(x) {
  return document.getElementById(x);
}

function $$(x) {
  // querySelectorAll for IE8
  return document.getElementsByClassName ? document.getElementsByClassName(x) : document.querySelectorAll("." + x);
}

function min(x,y) {
  return (x < y) ? x : y;
}

Array.prototype.removeEmpty = function () {
  for (var i = 0; i < this.length; ++i) {
    if (this[i].replace(/^\s*$/, "") === "") {
      this.splice(i--, 1);
    }
  }
  return this;
};

Array.prototype.removeDups = function () {
  var len = this.length, arr = [], obj = {}, i;
  for (i = 0; i < len; ++i) {
    obj[this[i]] = 0;
  }
  for (i in obj) {
    arr.push(i);
  }
  return arr;
};
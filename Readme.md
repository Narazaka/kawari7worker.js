Kawari7Worker - WebWorker SHIORI subsystem KAWARI7
==========================

Install
--------------------------
```
npm install kawari7worker.js
```

Usage
--------------------------
node.js
```javascript
var ShioriLoader = require("shioriloader");
var KawariWorker = require("kawari7worker.js");
```

browser
```javascript
<script src="browserfs.js"></script>
<script src="shioriloader.js"></script>
<script src="kawari7worker-webworker-all.js"></script>
```

then
```javascript
var shiori = new Kawari7Worker();
shiori.load(dirpath).then(...);

// or

ShioriLoader.shiori_detectors = [
  function(fs, dirpath, shiories) {
    return new Promise(function(resolve) { resolve(new shiories.kawari7(fs)) });
  },
];

ShioriLoader
  .detect_shiori(fs, dirpath)
  .then((shiori) => shiori.load(dirpath))
  .then(...);
```

License
--------------------------

This is released under [MIT License](http://narazaka.net/license/MIT?2016).

'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "79000e9992a9407f4c9e5bb03f564227",
"version.json": "7d06d93dbf2e3b7b1f31d09f2549c4ff",
"index.html": "588a7f8828b63d5017de78f53ad6448b",
"/": "588a7f8828b63d5017de78f53ad6448b",
"main.dart.js": "5e715453b9712e76850fffc89696f96e",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "58d9bc0dd793e838932ca1b194217c50",
".git/config": "bc27375b49c6dce83466c669acef30a4",
".git/objects/57/42dcd4b1cf9dc41503370dbc4f5ead619570b5": "412297314d6b6f335ed329a107fc620a",
".git/objects/9b/d3accc7e6a1485f4b1ddfbeeaae04e67e121d8": "784f8e1966649133f308f05f2d98214f",
".git/objects/58/844279982aeede1a867c3a595e13b0f4dfe11d": "f0f78ca0cebb6adbf0d336455d439a67",
".git/objects/9c/89ff07abfc4cbcbaa9b67e90454e2c50571e61": "af738ebfc1df548dd903b7ebedc24529",
".git/objects/d7/7cfefdbe249b8bf90ce8244ed8fc1732fe8f73": "9c0876641083076714600718b0dab097",
".git/objects/be/01179c254bc3a807b47a4a85661ea7b204eb1d": "87d59b808ba5f63122799b23d7e69924",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d8/bd18757967724c58deaeb24bf44681185f97a0": "0d22465c299df4f298399fda14031eea",
".git/objects/d8/0d8667079413af9e67257d19a6ec5cb3f3503f": "d6f1116021308bc520f4fd231247cf90",
".git/objects/e2/aea374cb9dc6f0e2d5ab6ba852ef34c375c84a": "54c8c775b44cf72a9b586c8e3503b6a1",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/c0/01ac4f871ff53641ef92ce717205e458f77d7a": "29c826f3d60b3f860f3d11847bfdd5ee",
".git/objects/ee/0e319c5539dbb17d9167d3b7194b5e1a963b42": "b8904b0dc33f998f23b01fa587059178",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/f5/72b90ef57ee79b82dd846c6871359a7cb10404": "e68f5265f0bb82d792ff536dcb99d803",
".git/objects/e4/731a14424b08b220c6c04da0005ea0012bed7d": "9163becde0efd1cbb1b62a6f5580191e",
".git/objects/c8/08fb85f7e1f0bf2055866aed144791a1409207": "92cdd8b3553e66b1f3185e40eb77684e",
".git/objects/pack/pack-721144a432ce6f39401dfe18485d6a5acd153075.pack": "d24f4e73b7445204afbbad729541a9a8",
".git/objects/pack/pack-721144a432ce6f39401dfe18485d6a5acd153075.idx": "1ba29ccdd531c360e441e1c1c932883d",
".git/objects/73/c63bcf89a317ff882ba74ecb132b01c374a66f": "6ae390f0843274091d1e2838d9399c51",
".git/objects/80/cb1d8631368dc85fa4e996572f59cdfc2e9e37": "47a223b0cd1af5929fd02bf9103ab835",
".git/objects/1a/d7683b343914430a62157ebf451b9b2aa95cac": "94fdc36a022769ae6a8c6c98e87b3452",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/75/a9076a5addac7c1d738becba725c4dfe155cfd": "0f16d49ddd664787487ff604e889fdfb",
".git/objects/2a/1c42fc5bc92178369e44ca836b83e4d76a33fe": "ddd051ab82ae02a002b9e0cd9ecefded",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/6b/9862a1351012dc0f337c9ee5067ed3dbfbb439": "85896cd5fba127825eb58df13dfac82b",
".git/objects/36/f34cd3f0dd01c8fdcbf6633c9391cab1f1fdd8": "318e8e0f3e1bac1df4176ae0000a7364",
".git/objects/5d/1baea4b94e51cb070a1c509c808970d8dc7b5a": "337fa5eea827631484db17487081f035",
".git/objects/65/6112406abbca37dad3606d94f9402c0332a834": "9a95e83b42fcbb814bcc9c635d6e2ba8",
".git/objects/53/18a6956a86af56edbf5d2c8fdd654bcc943e88": "a686c83ba0910f09872b90fd86a98a8f",
".git/objects/53/3d2508cc1abb665366c7c8368963561d8c24e0": "4592c949830452e9c2bb87f305940304",
".git/objects/3f/1578e2a180a45f5b7d247fc83d55f6f93a7a97": "b966ce26d5fe0700ca3d23f310b10371",
".git/objects/08/896fc68228c1714008c616a683dffeae0e8116": "2b0e7ab286f1b7c2260add3254d10591",
".git/objects/99/a3049701b975573c64470dcb49c2b1f36b2fe8": "89dea2045e313dfb16e5996291218157",
".git/objects/0a/855ea1365d67e73957d973d82e877c29dea84c": "b4b7becae2cd1e967d5d011348b274b4",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/d4/3faa39ed1e625498366795a053ece9e2865a85": "889231de02d942cd856fa527810ac4ea",
".git/objects/dd/cb4717560ecf91ef9f8941f9f346a19a361d76": "eb41610ebcdfa692ab60b6442997003d",
".git/objects/dc/11fdb45a686de35a7f8c24f3ac5f134761b8a9": "761c08dfe3c67fe7f31a98f6e2be3c9c",
".git/objects/d5/7b6dd25cce853356c520e527ad118ea3e9901b": "1236c91cd5c55ef63234fe10da5be947",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/a6/7c0140807cc32fb703b6aebb3b2e4dec61f837": "de587a4e3fcf0580cfdcc1fe8020400d",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/b9/6a5236065a6c0fb7193cb2bb2f538b2d7b4788": "4227e5e94459652d40710ef438055fe5",
".git/objects/ef/400c7ebc84878558d55ff3bcc9b11f8e15bd85": "10b8e61787fe779b72c4befd75f51ef4",
".git/objects/c3/c8622e00f3f85661b00161b2f65a26f5052199": "206b5006c5204f50cd1f5ba9c3af1ea4",
".git/objects/e6/f8886f576336eb9a2ecdc1ad4d6fb0a2d37e59": "c2ea144c756568addf65f8d6b8ef2a77",
".git/objects/fa/4d0b087a7aba91a9329a67a0c84c510dcc28b8": "23728946bc7a54c811a676beff67ea3e",
".git/objects/e9/94225c71c957162e2dcc06abe8295e482f93a2": "2eed33506ed70a5848a0b06f5b754f2c",
".git/objects/ce/a13fcfdce896eaa35936bfd0f38438ac404151": "01b3a6d7c091b8fff49f6c321d537e2e",
".git/objects/e0/7ac7b837115a3d31ed52874a73bd277791e6bf": "74ebcb23eb10724ed101c9ff99cfa39f",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/70/a234a3df0f8c93b4c4742536b997bf04980585": "d95736cd43d2676a49e58b0ee61c1fb9",
".git/objects/70/a3b3cfcb1bbcce1fa85a38a9332b6e6e371706": "43de2665fcf2b07e67725a1224a61a86",
".git/objects/84/2df5a711a0e7ef8b330c79ca3af1f17112ec43": "57400815dbb980f0382a87f98948d042",
".git/objects/4a/4eec0f257c48c0aec9953a53b4f5707b3f6451": "8cd6a2b1243b657022e6ae049a95a097",
".git/objects/4f/d8f6d6747c013be66c1058d9649e1aad35a4d0": "97c703653d5d09e12f501d47e365ca8b",
".git/objects/15/89fb4e5d87af98b43e504690dc1f8ef9032e85": "5d41caed2acfee3f34ee1a525d9f0e15",
".git/objects/12/fc9a0c341a670ec54edb369b6d1022246d9aea": "90aba78e198f405e60d3eb79b5bd5d17",
".git/objects/71/d4ad95620159fc7bc5414e5037724674a7164c": "a46dd1c0655b1cf8e0c30e09fdfa4e5f",
".git/objects/40/d7cd85c8b1c8db633194299091d2e471b6070f": "37ae30bce1714e6a13c292c4b0cf9690",
".git/objects/8b/d2885babfdf34c8cd7967af36e93be23b08731": "299ded3766292e3654bc289cac42eaaf",
".git/HEAD": "5ab7a4355e4c959b0c5c008f202f51ec",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "68ee067248a4f6e47c186f82467b3c43",
".git/logs/refs/heads/gh-pages": "18d725ac8acfc842b41d1c039b67e569",
".git/logs/refs/heads/main": "0df83391492142febbf79966ee4b473f",
".git/logs/refs/remotes/origin/gh-pages": "1259d61fc6b3a2c0d4fc53c0d0e02b93",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/refs/heads/gh-pages": "f3d4d8178f425c9966f224f3856bf264",
".git/refs/heads/main": "f3d4d8178f425c9966f224f3856bf264",
".git/refs/remotes/origin/gh-pages": "f3d4d8178f425c9966f224f3856bf264",
".git/index": "aa1fd1bf55079c0a80f81e9752c39f54",
".git/packed-refs": "a891e6bb26eb0d480aef486a7e8ea166",
".git/COMMIT_EDITMSG": "1c2766c0203ca8489f178b9955964c54",
".git/FETCH_HEAD": "63072e06bfde1e20004477bbb34ef023",
"assets/AssetManifest.json": "b4c16bc48c7a42af561c2c5f9c50a39d",
"assets/NOTICES": "0de441413dd26bcc0aa4719a607186e2",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "9cdb6d05f233e972ad3958a644731798",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "e54aec78292bd7151b997ebae6f5bafc",
"assets/fonts/MaterialIcons-Regular.otf": "65138fee846468ec0fae38ba77ffc5d3",
"assets/assets/images/hotdogman.png": "8d7960fb4e620e8c5c45802c55a35238",
"assets/assets/images/food4.png": "8461a1b212320283bbfeb8637b0700c1",
"assets/assets/images/food2.png": "f8185ad6f01347ad50935f0258acf609",
"assets/assets/images/food3.png": "530daa64773a668cfa17b167a23c8d8b",
"assets/assets/images/coffeeman.png": "1d38ee0dc28c61c8d3ba3dcceaf3bbf3",
"assets/assets/images/food1.png": "917d58e50714f1893dec16577507be3f",
"assets/assets/images/pizzaman.png": "2ca354bc55df63490884f52063e93b2c",
"assets/assets/images/hand.png": "c0484717ba6cb471b72415c21bdb8eba",
"assets/assets/images/logo.png": "2f223c99b2c4003193f57c9a23485d5b",
"assets/assets/images/burgerman.png": "3a881bf6f98b7f3db71e90bd586ffded",
"assets/assets/images/4.png": "1bf2d1be4b335f86d046e1cdccc8341d",
"assets/assets/images/5.png": "843cd48bf0fb24ad3e718eb4dc3e6c84",
"assets/assets/images/baconeggman.png": "075e5ee71024244510771b170c07056e",
"assets/assets/images/7.png": "ae7b7583597ec9b4b32490c7f1be0c3f",
"assets/assets/images/6.png": "ee04e174639cffe4e427afcdfb80359c",
"assets/assets/images/2.png": "8d75b94aa42fe00a36b47b54428b8583",
"assets/assets/images/3.png": "9647c909879816525c663670721ae352",
"assets/assets/images/1.png": "19614a53ce6c8e4e26f7734903db5baf",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/skwasm.js.symbols": "e72c79950c8a8483d826a7f0560573a1",
"canvaskit/canvaskit.js.symbols": "bdcd3835edf8586b6d6edfce8749fb77",
"canvaskit/skwasm.wasm": "39dd80367a4e71582d234948adc521c0",
"canvaskit/chromium/canvaskit.js.symbols": "b61b5f4673c9698029fa0a746a9ad581",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.wasm": "f504de372e31c8031018a9ec0a9ef5f0",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/canvaskit.wasm": "7a3f4ae7d65fc1de6a6e7ddd3224bc93"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}

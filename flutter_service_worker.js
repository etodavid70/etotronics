'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "46b73951093604d734aae668d12f9149",
".git/config": "686ac871d37a5c0cd3eedc8177b4bc1c",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "5ab7a4355e4c959b0c5c008f202f51ec",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "5029bfab85b1c39281aa9697379ea444",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "9f5c371eaf2b11fcb49d713f5f7e3064",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "2f51c9bba893d3017078016b0f5fd529",
".git/logs/refs/heads/gh-pages": "3461bbad5b42cd28f2227e54c6eb3485",
".git/logs/refs/remotes/origin/gh-pages": "80cbfc31eaa6e2035e8c839c208610a1",
".git/objects/02/c20ff9ca56a6ea667397bc9dc109180e322c42": "933199e04a6bae1281dcba8663cffa62",
".git/objects/05/a9058f513cce5faf1704e06e3c150688b0a01f": "e8d02f60cf87abd4c1de4b153dd696dc",
".git/objects/06/7b8b4b41a1d3c76618caa7b59faa3fff4e4493": "520e94dcc7ce2329c1c294d4e11bd35f",
".git/objects/08/27c17254fd3959af211aaf91a82d3b9a804c2f": "360dc8df65dabbf4e7f858711c46cc09",
".git/objects/0a/300c10f8ae07ed7596eb9d40ce40a0af2e90bb": "6abc6c2c9f390e123b4571b8026762ee",
".git/objects/0a/5df5dd37e4524680875114d76e42b92639fe67": "0ca2864125fd1a7092ce13a63f0ca6f4",
".git/objects/10/5af41f09b6b9c851672d511054b8556dcb3e5f": "fde40058b8c0f2c4a796b44a4f280864",
".git/objects/1c/10972eceaea5bc6ddf055d7e4caa75e01e6f8e": "0185c67dad999f49755704755e660c16",
".git/objects/1f/45b5bcaac804825befd9117111e700e8fcb782": "7a9d811fd6ce7c7455466153561fb479",
".git/objects/20/be382e4f882b759a46a4d1c1d3c042b119e6a9": "4262a298aad100ea1c67ca316af86f15",
".git/objects/27/a297abdda86a3cbc2d04f0036af1e62ae008c7": "51d74211c02d96c368704b99da4022d5",
".git/objects/2a/2effbd301b96c65697a65316b0b060747ee0d6": "f64892a28ea5c4146ed52fef09a90626",
".git/objects/2d/bd31073ae1c564fde20edf4766c8958dfb79e4": "07364d8810f0785523f9fd7971acbef4",
".git/objects/33/4c78932a15593f7e938fa3cb611d3ac5ea33da": "042a3f401fd3bf28ebf8bfd68ffcb20d",
".git/objects/36/40a6775fe70cfc40977abd46fcdb1122ac6359": "620ee588e3db6959d9bde7d27b6ef68a",
".git/objects/39/ab446a2502a146efedbbea719d942611233601": "a37cac3af5f1215ab156404f18c98ca9",
".git/objects/3a/8cda5335b4b2a108123194b84df133bac91b23": "1636ee51263ed072c69e4e3b8d14f339",
".git/objects/47/6184543e1bcbe0332c5e68e6d37b4fb5059cdc": "7b6410b7b4651a8d319db397cc6fd351",
".git/objects/48/bb5884ad7ef935fe72cc2d8b88d0a62f818e4f": "05d00af3ac05e3f8ef1cc1259eb2c908",
".git/objects/4f/40dabe4430b4d7288c6ae92d8fc3e17cf8e410": "7c1843130f2c3787540ded5445c7793a",
".git/objects/51/03e757c71f2abfd2269054a790f775ec61ffa4": "d437b77e41df8fcc0c0e99f143adc093",
".git/objects/55/d2c7caad4aa5ca7ef4808240de8b7aa8a8f50e": "d5ed566f372438c2e1bffa08f1d2122a",
".git/objects/56/66beaca1b89d8dc89d11a90a4914a1df027990": "b55c1ff8dce37e7083106a5d85b5cbd4",
".git/objects/58/6c68006dc339dd3eac2fd2206cb83e2f7b93cc": "4dde6cb587ab143f36e0826ff6573832",
".git/objects/5a/41db48c503533cab930e65e5b5837e25c8272e": "da9a7d262abfb8e981e6bf9256063d10",
".git/objects/5a/edee37f1d17c7e3aed1a06fd30fe9ed7e9abc1": "ee40cc3e11f8aafd3b55a8bad013f434",
".git/objects/5c/cd987870211a3046926a90d099182f178e5f5d": "0fa9091a3615bd004e9199c77e40f481",
".git/objects/5d/09583ab796c34d84fe6420fccfe11a1f4f3ac7": "c468af75929ac472b99a70326071bf37",
".git/objects/63/6931bcaa0ab4c3ff63c22d54be8c048340177b": "8cc9c6021cbd64a862e0e47758619fb7",
".git/objects/65/1d39d1d7facbc80670c2a1b80e4e1130aed486": "0c899b024774fb9717b2f8342fdc1aa0",
".git/objects/68/43fddc6aef172d5576ecce56160b1c73bc0f85": "2a91c358adf65703ab820ee54e7aff37",
".git/objects/6d/5f0fdc7ccbdf7d01fc607eb818f81a0165627e": "2b2403c52cb620129b4bbc62f12abd57",
".git/objects/6f/7661bc79baa113f478e9a717e0c4959a3f3d27": "985be3a6935e9d31febd5205a9e04c4e",
".git/objects/72/c6f21e8ba2790507cc4b8c9ec8361b35814af5": "a4dc4a5e5ace27906e9713bca8ec2303",
".git/objects/73/7f149c855c9ccd61a5e24ce64783eaf921c709": "1d813736c393435d016c1bfc46a6a3a6",
".git/objects/73/904f52d1fcbd2498197e7e5deba7f938ae2710": "2dc0815e1ab386e580c24cfac7923292",
".git/objects/77/6e5fc106cb6b5964c547ecd5b26f9853199c30": "66fd62f4ad039a6f6f55e41343c688a6",
".git/objects/7c/3463b788d022128d17b29072564326f1fd8819": "37fee507a59e935fc85169a822943ba2",
".git/objects/7f/9f54128340d066d43cf9ce7758fc10ee5db603": "57e2cbf8ca47426ac0fada12b18a558f",
".git/objects/82/039646eae58381941a128edf3dd254c98a2961": "ba71a4099c57c699fe2ac9b609735b8e",
".git/objects/83/a9f103d870d7d1c3b9878467bccf529ac231bc": "8309dfeac7527936ff23a503e20a1519",
".git/objects/84/485d40eed56d10bdc00eeab93c1d14bf0cb8cd": "ac688fd410a5780e8f750fd300ba5363",
".git/objects/85/63aed2175379d2e75ec05ec0373a302730b6ad": "997f96db42b2dde7c208b10d023a5a8e",
".git/objects/85/6a39233232244ba2497a38bdd13b2f0db12c82": "eef4643a9711cce94f555ae60fecd388",
".git/objects/85/c220617788401211ba8e46e238cbdd247f5233": "7b92f299320c87c11094733c7edc62e4",
".git/objects/88/52bd871e99473bd531155911944a4e31878b56": "077595cfc1fcda6ec41ec5b7d91e8c3e",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8c/59773bee8314a8ffb4431593d0fb49f52e34c6": "2eb993d30677573ffd0e58484cc6a514",
".git/objects/8e/31c11f97b5b12ab485ccf0e1e42c2829b435a5": "2d6fef0f17e81576ee31b2b42a7d56cd",
".git/objects/92/465f581e03a5448043c75a7864535795d4eedb": "836f5bd6db953164a41c06eba1da67e4",
".git/objects/92/62138f12acc0559400775287564f5e6b3810a7": "298fbc59da0a4c6a94f67bc56c716e7c",
".git/objects/95/9b7dccf4f3ec394c209fac10cfced77d6dacef": "884506f33e650df12428b3c8b70d2731",
".git/objects/97/8a4d89de1d1e20408919ec3f54f9bba275d66f": "dbaa9c6711faa6123b43ef2573bc1457",
".git/objects/99/91c9e8f519175c74d2610c2825456a52783a1a": "1d0d6ecb967f99bae3b9ac37255b224c",
".git/objects/99/c0d57d7c6554906a70d53484d09437880a1e69": "13f8dc1e5bbf9bbd77a01e129055c896",
".git/objects/9e/e1919dc230d3433cce79d137c37081c974034a": "7918dcf5b15c1ac607255918935ca48a",
".git/objects/a1/28eb1ee3bea028ebccc29c0c3694d0a4286d9a": "7214832447fcb832535c4addbb8f8f06",
".git/objects/a1/d61ecc3b49e776444429ad077baec5b4e8c6c7": "fb2b22a3accde44a42fcd24e30227eb0",
".git/objects/a7/3f4b23dde68ce5a05ce4c658ccd690c7f707ec": "ee275830276a88bac752feff80ed6470",
".git/objects/ab/35d577315e0c763e5d1e6610d41a8cd8d537e2": "3e5db4f8c600126c26b3920344d693de",
".git/objects/ad/ced61befd6b9d30829511317b07b72e66918a1": "37e7fcca73f0b6930673b256fac467ae",
".git/objects/ae/09cf78f5075d044f9479c1c5035788e107664c": "7b8d7f6d7693ba634d176ef1b8478890",
".git/objects/af/31ef4d98c006d9ada76f407195ad20570cc8e1": "a9d4d1360c77d67b4bb052383a3bdfd9",
".git/objects/b1/5ad935a6a00c2433c7fadad53602c1d0324365": "8f96f41fe1f2721c9e97d75caa004410",
".git/objects/b1/afd5429fbe3cc7a88b89f454006eb7b018849a": "e4c2e016668208ba57348269fcb46d7b",
".git/objects/b4/f3dafb21cb09898b02af344d42f76d8454f0ec": "1a356a5e842e34b8cc946a675c4f25e1",
".git/objects/b6/2d16a683e76a230faca55ae66d7d09c1a2e711": "40e3a57e5100f6c1435eb5c5c7bfb073",
".git/objects/b6/c61f0786c7505939b4446748f8e04c8055d724": "49a5eadf6ddd5782e9ea52e188312192",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b8/3f86c64ddf7d027bb75ee604abb85c36d7d4f7": "ad326a0005f150bf1ff41227812dd293",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/b9/3e39bd49dfaf9e225bb598cd9644f833badd9a": "666b0d595ebbcc37f0c7b61220c18864",
".git/objects/ba/5317db6066f0f7cfe94eec93dc654820ce848c": "9b7629bf1180798cf66df4142eb19a4e",
".git/objects/c3/041919c148dea3cccce15fad489bc7269353f4": "299f1f3aa60b0acac8cf962269d6b073",
".git/objects/c3/e81f822689e3b8c05262eec63e4769e0dea74c": "8c6432dca0ea3fdc0d215dcc05d00a66",
".git/objects/c3/fb130bfb7fa9d400362239bbf8db5eaed2ce1b": "af654be940700f253daa4a0d34fe17a3",
".git/objects/c6/06caa16378473a4bb9e8807b6f43e69acf30ad": "ed187e1b169337b5fbbce611844136c6",
".git/objects/c8/3af99da428c63c1f82efdcd11c8d5297bddb04": "144ef6d9a8ff9a753d6e3b9573d5242f",
".git/objects/ca/e9fe6de589973cbce21457354412496d35ce2b": "e806de3c59b3a7e486204589b46abb00",
".git/objects/ce/11f861301444f9448a1201aeee4e40e5d6e209": "8b2c81c091ac3213250e614bcbd277f9",
".git/objects/ce/1d5eef81b237523bb47b54f523d5dadaa16904": "622759b3777d074436ffc1a9f117c58a",
".git/objects/ce/623bbedf2b5fbbf2d8a0ea490970ad0660f011": "70f459bfb27bacb1a85568cb0c234f36",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d9/5b1d3499b3b3d3989fa2a461151ba2abd92a07": "a072a09ac2efe43c8d49b7356317e52e",
".git/objects/de/eea1277930dc98268e54c5296afc72222e3274": "ef19e4187f6ed174e9ba70c1d742c930",
".git/objects/eb/1425f9bfa47f3ee9cb2f23e441eaa6b7674cee": "d6b425fe136e2e1d06204bee76f3b7f5",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/ec/361605e9e785c47c62dd46a67f9c352731226b": "d1eafaea77b21719d7c450bcf18236d6",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/f3/3e0726c3581f96c51f862cf61120af36599a32": "afcaefd94c5f13d3da610e0defa27e50",
".git/objects/f5/25a72d09305174b19dee74890d1244296734fa": "67b6b232e90ccb09c2fbf09bb4ba3b65",
".git/objects/f6/e6c75d6f1151eeb165a90f04b4d99effa41e83": "95ea83d65d44e4c524c6d51286406ac8",
".git/objects/fa/ada413fa9eb7988d7407e600fa90901f215e86": "231a6d7cc82f4de16c6ccf0238223019",
".git/objects/fa/d04aea67e00b837df20f2828e1c2e95101bce7": "5a4838d6963dc5782ece93a6b42f408b",
".git/objects/fd/05cfbc927a4fedcbe4d6d4b62e2c1ed8918f26": "5675c69555d005a1a244cc8ba90a402c",
".git/refs/heads/gh-pages": "49283b19127a6c2d6468b085fb07fe00",
".git/refs/remotes/origin/gh-pages": "49283b19127a6c2d6468b085fb07fe00",
"assets/AssetManifest.bin": "f815d4cfe5d324992602f38e4ae65ab3",
"assets/AssetManifest.bin.json": "65e2d71284d8a77cf877dcb318ce8d20",
"assets/assets/images/apps.png": "e86d2277c6d85c2e13a4da676991db5c",
"assets/assets/images/cloud.png": "c0173e57445680f8dca89f4aa1d960ba",
"assets/assets/images/embedded.png": "ac64b145e397020da2f7491cf3e07918",
"assets/assets/images/flobooks.png": "0fc35bc785d28dae9a67d5aef9083e9e",
"assets/assets/images/logo.png": "f60c18b4898245df319302ba7344ff1a",
"assets/assets/images/mega.png": "2c3a3cb1c732eaa9595432e513fecd5d",
"assets/assets/images/polaris.png": "ab536152461b80892ff67e90fec4b7a8",
"assets/assets/images/sdk.png": "358c7a8ae3a4f97c66061a4e64dddf80",
"assets/assets/images/software.png": "6b53295e8375385a3bcfa60331dea3b0",
"assets/assets/images/system.png": "71186810571a01e8bb51bde6b5d41c13",
"assets/assets/images/techgeospartial.png": "cc9eaa641c91f593a3068e6244be721a",
"assets/assets/videos/earth.mp4": "abd1cbf4ddbde756efa82e5583aa2765",
"assets/FontManifest.json": "09ec83057649515eb2a1d6c62d65ed52",
"assets/fonts/MaterialIcons-Regular.otf": "afab4cadf85f50b9717a1b2fb94df4b6",
"assets/NOTICES": "44ef71c9de96849854acd26cf0b84e50",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/flutter_material_design_icons/assets/materialdesignicons-webfont.ttf": "e051a7a46f37198b988a13071d8160dc",
"assets/packages/font_awesome_flutter/lib/fonts/Font-Awesome-7-Brands-Regular-400.otf": "e4c8ce11518b811896f91c99db46fc0f",
"assets/packages/font_awesome_flutter/lib/fonts/Font-Awesome-7-Free-Regular-400.otf": "b2703f18eee8303425a5342dba6958db",
"assets/packages/font_awesome_flutter/lib/fonts/Font-Awesome-7-Free-Solid-900.otf": "5b8d20acec3e57711717f61417c1be44",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/shaders/stretch_effect.frag": "40d68efbbf360632f614c731219e95f0",
"canvaskit/canvaskit.js": "8331fe38e66b3a898c4f37648aaf7ee2",
"canvaskit/canvaskit.js.symbols": "a3c9f77715b642d0437d9c275caba91e",
"canvaskit/canvaskit.wasm": "9b6a7830bf26959b200594729d73538e",
"canvaskit/chromium/canvaskit.js": "a80c765aaa8af8645c9fb1aae53f9abf",
"canvaskit/chromium/canvaskit.js.symbols": "e2d09f0e434bc118bf67dae526737d07",
"canvaskit/chromium/canvaskit.wasm": "a726e3f75a84fcdf495a15817c63a35d",
"canvaskit/skwasm.js": "8060d46e9a4901ca9991edd3a26be4f0",
"canvaskit/skwasm.js.symbols": "3a4aadf4e8141f284bd524976b1d6bdc",
"canvaskit/skwasm.wasm": "7e5f3afdd3b0747a1fd4517cea239898",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"canvaskit/skwasm_heavy.js": "740d43a6b8240ef9e23eed8c48840da4",
"canvaskit/skwasm_heavy.js.symbols": "0755b4fb399918388d71b59ad390b055",
"canvaskit/skwasm_heavy.wasm": "b0be7910760d205ea4e011458df6ee01",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "24bc71911b75b5f8135c949e27a2984e",
"flutter_bootstrap.js": "ade7d69e8648c2fa34c8e87b8c861bde",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "450a54fae582af0ca3152708b8dd7997",
"/": "450a54fae582af0ca3152708b8dd7997",
"main.dart.js": "5d02edf966fe3152880c9c2179ec5819",
"manifest.json": "728e5ee7553e2a1c6a153d2acb3fc2e2",
"version.json": "3cfd599510578df64e22d686dc55acd7"};
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

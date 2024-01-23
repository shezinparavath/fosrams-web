'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".dart_tool/dartpad/web_plugin_registrant.dart": "7ed35bc85b7658d113371ffc24d07117",
".dart_tool/package_config.json": "4e3932bfa5ce6583eec7e96cf1fd8aaa",
".dart_tool/package_config_subset": "d8ad1584fd418ae9313f2fb8069e8628",
".dart_tool/version": "7c575311bdae58017ac4074ce3d5323f",
".git/COMMIT_EDITMSG": "afe5234881990b6bd3df4ab4b3beb3a8",
".git/config": "462ff4785f5fd539b3094bb14717f24c",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/FETCH_HEAD": "ac4dcd1be9d4574cae3f86233fbd8e72",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "82782d8414f88e546b1bb82979dbf3d8",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "1a8556d72b88d0e32f58af16e564cc49",
".git/logs/refs/heads/main": "717180c4c3d34bc9d335b0c28e1213e0",
".git/logs/refs/heads/master": "eb05ac39e76af66aa170dd1bc263419b",
".git/logs/refs/remotes/origin/main": "36f94826b3a7cbca921cf079bd230650",
".git/logs/refs/remotes/origin/master": "5fbf5fb8a9460a902479eec225cc40ac",
".git/objects/01/bcca7d1c23955f7aeda6a269b1b7f540802096": "635a6822e2a56f7f333d54c66b0234db",
".git/objects/02/533486a9e60b68e477ab0b4d9051558c540a49": "da87ab1bb4c5e8e89fe45a8f4c9e1b2c",
".git/objects/03/369ae7ee728aebb3cc9dfe19628ae998bce8eb": "4ce5ad00dbbaf32d33484a5b91e38bd7",
".git/objects/05/4f8a165a94eb5ab2aa2f44baf514f484e49560": "074be8c0abaa6dfde1b54921c4440e52",
".git/objects/07/a34f28cb339a9aa3c16f29a9cdacb2c91436e6": "81fbd42757f367298e7dbe71a997a99e",
".git/objects/0b/1aa76b487c8630a5533dc30b7555d4fa2e9825": "7136124a09143d5e110db7d96ae97938",
".git/objects/0d/999411e9183bb93885a0f6fbe543596931f111": "913aa2482079376b97917745c321f414",
".git/objects/0f/80ff0e1a69d392db0c6aae8f12edf3ffd4f0bb": "657997c45da7b90b9ebb33c4cc648659",
".git/objects/14/bc40fa385f1b9800df74b738b64ccb4e75b719": "75a34370520b57e3f69c40f797de5a7e",
".git/objects/1c/37a0da000b35864168dcf832fe13303e86e873": "931f2be30a86ae54fe0d4cd7cc2c6d96",
".git/objects/1e/26d621a6a0c4755e875429287a100a9eb5ab2e": "2ab973e512bca4f38a72fd15e3a2dcd6",
".git/objects/25/4ca7976b62a16bccca8c12cccab34d6698dcd7": "56eb65b9083a660c741c6b0b6deb4c75",
".git/objects/30/6dac5ed8d40c1a67b51105b2c459a386061bc3": "0a17491a92c8dee602194b7eabdb73a1",
".git/objects/33/aea9a2f381369d488a21ec8edc828b162cbc6e": "e75690a281354a0a00bd0ff63c82315d",
".git/objects/35/91af41948adc8001f3586d76b91181311953fc": "c91d33b29071dcff3b2b3385383761cb",
".git/objects/35/a354f79f9520398e1c68ffbee59c8864bcec5c": "9a8ec076214f7f54fe88c0550ba4388a",
".git/objects/39/eaf6497c220b4c89080667ac547c93a1781540": "cfcafd779e8ec4c0f9e7601ce6f6b343",
".git/objects/3a/69df4bbe8b01b73e3c3fa5c0c6354ede4001e8": "aa13392fe79c82a9926939b583ad49f8",
".git/objects/41/494df33fb84ecd4b5d70e7de910f9db8a37259": "549bec65c19d4b69a53b9ef399a79d58",
".git/objects/42/0c66c041cc54fa823dc9c9102cf127f39bb0fb": "12b4a6abe5ddcbb06a3b4c778341ed88",
".git/objects/46/1a5aecd4a004d8bca3ed0850661fcca76ced59": "757ea2c5c8b8d6c3806e31ec19eef366",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/49/697e0557d98e29535f74db1d16c46bc7bb5df9": "7e0e0ee5e2a096e9d78e0eb5e1fd4e8b",
".git/objects/4a/8ff92fb9045f6713f4613bdc0d0baaf1d23f08": "7ac9ddeb1c78a66f373289dff0d193fa",
".git/objects/4c/a2a7c226d2c3e26f0b9dde74214486d0baa896": "734657b1f27c72d07dd9e52a25c020c1",
".git/objects/4f/a0c41d1eee634838e839981949f524c1e9106a": "c7bcca400174037dec337ca7f191b0a7",
".git/objects/50/57f06efafd1910c7f51f017776444296308648": "36d061d47ca37a7860617893d5b14fba",
".git/objects/51/2d8fcc6afe94fa0f35be45fac31e79c0ef8d47": "f6dc04928566dc1bde53e189ae2e659e",
".git/objects/53/7807567919e88db2866b7825339c57e94c24d8": "970aec5149a3dbe9370a9dc982cdd022",
".git/objects/59/668c0e8a9060f7062c1a4e7c891c20352275ce": "a41ac1891091e5f98bbef7436856730d",
".git/objects/5c/0f7d37d211ec4f63a3d8d03d527c0e879895c6": "ff0235e3955229dab90f14f7bb6fa311",
".git/objects/61/954b9d048143817363dc4a112c0366cd8d925b": "25fb51b9d7b354104bfd9d2136987a59",
".git/objects/64/4d0aaf09836397f905d68622387df8c0e42a93": "b7f3b0a2f0a0a94325ae14fa3dfadf86",
".git/objects/6f/8dde7901fa6f212b2547914bb832ed92c878fb": "10900a1a14ade01998465df852658122",
".git/objects/71/be99ca675057122188b1272ef41e88f406666d": "2ea12c6ca8e751696c50464bb29fe544",
".git/objects/83/0e3d19e7f2ff19bbb4b955e3a38e3328837e12": "4412f19a8aebd49e1c2fb821b641e232",
".git/objects/85/da21143f622475c2b60397067de541a1fa0510": "0f5061aaf779e35eeb11bc1c2c4bb40e",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8b/cc382274ce7a934dec94d3f7821b91a9f5f18d": "752e76ac5e9b5eba5fd4079ebb47d669",
".git/objects/94/d33ec757c4e6c83dce656a0f3b117ba3c09539": "2836d018f9ff767933f11fed92352ee4",
".git/objects/95/0ce90a457e18eb8ec9f8cedede6119e090b684": "8bfcc54baf93ea589cb660f7e4b4eab6",
".git/objects/96/5f268e91b7f468ea4ded85a8f2abcddfe1f5a9": "6cde620475753acf951a3fbb6b42aca1",
".git/objects/9d/2e6d29e2b2b26b129ad26c64f2c233812bccf1": "d1f349d0051a38a0735880ae3c226e9b",
".git/objects/9e/91f36af3d4cd10c77b03c6532802c138941458": "bd5d09511e934a96852027e5bf780a97",
".git/objects/a3/c3b8e50abd39bdcd84c55a87068280c0787d78": "bf92116ec918f381c8f89991f4f8ae55",
".git/objects/a8/234e78324011301c932efde8dd789fba10495a": "5ad9ca983e505191e13f526cf3be6ade",
".git/objects/a9/55f728343a20443dddf34ba05d09c3ce3dd4ed": "78578b2fd16ee5d8fef397d72d2ffca5",
".git/objects/af/532b9c002a5e0026d4aaeec9e5d774c630fac4": "ffb9ee8f8ea8f1c7576dc7e90b8902db",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/bb/6d4e12a39fd9849db3f4b030aca1984247da13": "6983ca589d1cb1f4e016a1ed1bc3ec0c",
".git/objects/bb/ac29f5ef7a40bf14c0901bc1457724156bc0de": "1393f20f0610cabefe2d4f45865b0f54",
".git/objects/bd/5e3e000c8bee32470f019218ae2478606dda85": "974832d48b317ac973bd909d36e61217",
".git/objects/c3/1f2594e133ab580ce39406a007f47f98043ac3": "130ce384d8183f84d9bde6e075f07440",
".git/objects/ca/1eb96ecdfc3dbacb583f3da0f693fd5bc2ec66": "d4a7845805349e3ce8497b297d46faa6",
".git/objects/cd/7a8a0101fda517258f6cbe6e0999f05e8802ff": "e03efedb1a33e7c2c6bab8b2b20b1e78",
".git/objects/d0/e814a5ea007501e962080c0ca03c83d88714e2": "f4a988b26cb9c3f6ae91731a1006d131",
".git/objects/d3/efa7fd80d9d345a1ad0aaa2e690c38f65f4d4e": "610858a6464fa97567f7cce3b11d9508",
".git/objects/d5/b54bd4a898b373f82bb1fa52b9580e7a976e3e": "943e27e1d359e2bc22daf20c70287c19",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d7/2c11112c7cb4e2ce754bc41470f9b829a2d00a": "d7280a766a5d6033f187d874a92b5ad6",
".git/objects/df/7d2dcb89ab89da87467c0e1059b38c8d8f9296": "a44162ff357b024e4638ab18a9bb01c7",
".git/objects/e5/8b86a9f8045322266a0edabfd777a31934dd9e": "a55301ba6cb4d3168e02f1dbbbf219d3",
".git/objects/e6/b745f90f2a4d1ee873fc396496c110db8ff0f3": "2933b2b2ca80c66b96cf80cd73d4cd16",
".git/objects/e7/cae7a33234538f43ec4f89430cc5783804fdfd": "9c1c248dc095b61e6b36bd12271e4b84",
".git/objects/e8/156610d0cda3093871781d3184e558bce808d9": "0dac01d0aa61f3780df81c3ca216b54c",
".git/objects/e8/55dc987b0db3ccd24a8869a087233a0e124f27": "9b242467f4dfe05ce7d2727a68a1ea66",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/ef/591a6898a9dead0869f66e695fdda0aac79bad": "bc8b4d158b2f434efd7b4d8117135562",
".git/objects/f3/1579669bda097698c9939483e8cab5ddc6fde9": "06c0dcb37fe7cf6b391bfe6f189edbb7",
".git/objects/f3/7f364c53b47934849e7f78bc6d741032ea0113": "9fa0b557f32e0208b3c3dfc00c33dd73",
".git/objects/f9/ed2214457f91308e989cf260397920ba6467b7": "79bb1c9e8a19e497bd2d29f6e5c4f6df",
".git/objects/fc/de1bb3df8c330568f07ef326d43d8ae3562897": "6e5bf2450330342c243afc3723b9c27e",
".git/objects/pack/pack-2eee290a472f37f687e700dfccd6cf11030b80f5.idx": "88b5ec865cf2547810d37c86066d7314",
".git/objects/pack/pack-2eee290a472f37f687e700dfccd6cf11030b80f5.pack": "49ab8a9b61a9dc1d323de8c67ffda811",
".git/objects/pack/pack-2eee290a472f37f687e700dfccd6cf11030b80f5.rev": "d5f198d311d8d4dd0df8bb26cf75e887",
".git/ORIG_HEAD": "fa3df8257d2d331cd1e40edc48e3abfe",
".git/refs/heads/main": "c9a4bdd91c3ace37a88b0f57247d2a91",
".git/refs/heads/master": "82f4a61ef16f0d920d7926deca941cca",
".git/refs/remotes/origin/main": "c9a4bdd91c3ace37a88b0f57247d2a91",
".git/refs/remotes/origin/master": "82f4a61ef16f0d920d7926deca941cca",
"analysis_options.yaml": "9e65f4b9beebb674c0dc252f70a5c177",
"android/app/build.gradle": "945783b28b9e3a477c583f0de21724c1",
"android/app/src/debug/AndroidManifest.xml": "820c45a25b424dd5b7388330f7548d1f",
"android/app/src/main/AndroidManifest.xml": "ed1f92ccca5ccfad299e104d2166b758",
"android/app/src/main/java/io/flutter/plugins/GeneratedPluginRegistrant.java": "5b3b418ce50367c33bded3c0df06d47f",
"android/app/src/main/kotlin/com/example/fosrams_web/MainActivity.kt": "dee0a0357603ed4947106535f7e0359c",
"android/app/src/main/res/drawable/launch_background.xml": "12c379b886cbd7e72cfee6060a0947d4",
"android/app/src/main/res/drawable-v21/launch_background.xml": "bff4b9cd8e98754261159601bd94abd3",
"android/app/src/main/res/mipmap-hdpi/ic_launcher.png": "13e9c72ec37fac220397aa819fa1ef2d",
"android/app/src/main/res/mipmap-mdpi/ic_launcher.png": "6270344430679711b81476e29878caa7",
"android/app/src/main/res/mipmap-xhdpi/ic_launcher.png": "a0a8db5985280b3679d99a820ae2db79",
"android/app/src/main/res/mipmap-xxhdpi/ic_launcher.png": "afe1b655b9f32da22f9a4301bb8e6ba8",
"android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png": "57838d52c318faff743130c3fcfae0c6",
"android/app/src/main/res/values/styles.xml": "f8b8cfbf977690d117f4dade5d27a789",
"android/app/src/main/res/values-night/styles.xml": "c22fb29c307f2a6ae4317b3a5e577688",
"android/app/src/profile/AndroidManifest.xml": "820c45a25b424dd5b7388330f7548d1f",
"android/build.gradle": "a9d624e015cc7c68362ca7ca833ddd68",
"android/gradle/wrapper/gradle-wrapper.properties": "1868e63ebbc541e5bbb09fa921ef2349",
"android/gradle.properties": "4b01dcf11166d04a1ee03bc0bac87b2a",
"android/local.properties": "d51a962ba48aa4728cf5b00fc8a012f6",
"android/settings.gradle": "1f6c4d672779963c47bdc1e60bd1ab70",
"assets/AssetManifest.bin": "5adc8617cc8dd18093ba214beaae1af1",
"assets/AssetManifest.json": "b929355d6773983c735ae547855c06d5",
"assets/assets/icons/calendar.png": "01d18998f62090ea86b73bafcfa7adb6",
"assets/assets/icons/chronometer.png": "a491e73e8ad77a9fac6d9106ea4f7449",
"assets/assets/icons/dashboard.png": "429ea35554c7d033a696029345451195",
"assets/assets/icons/dashboard_outlined.png": "1de4b733dcce1e55dff61e8952af46fa",
"assets/assets/icons/home_(1).png": "f603eaf274fb09621394f06bb62a946e",
"assets/assets/icons/home_(2).png": "b24b4f5ae14ac8fcc8a818b663c17b31",
"assets/assets/icons/hourglass.png": "f1612351fa290fcfdb0d220efb0be9cd",
"assets/assets/icons/location.png": "112b8f4f715c57b84876bdfa0e1cc0d3",
"assets/assets/icons/master_data.png": "ee32c42351c4347ba1382c6e97828adf",
"assets/assets/icons/master_data_outlined.png": "82ea4f155d5a8fc62268e8469467e859",
"assets/assets/icons/notification.png": "508a9d5da8152c633a91caddca256245",
"assets/assets/icons/settings.png": "995feaa601de4b9e1ab00357897bb035",
"assets/assets/icons/timetable.png": "34f8361d7d5db8fca27715ff905d623d",
"assets/assets/icons/timetable_(1).png": "0f7c06b9c3465243ca7a8b3c1a1670b1",
"assets/assets/images/app_icon.png": "ecf1a384321d471ce903148dce012c6e",
"assets/assets/images/profile.png": "95f36ffd79f187b3eeb541191e3750ef",
"assets/assets/images/profile_default.png": "a039834922df96741319ec1ba9868000",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "17502863b52fbd25b8b6cb584dbb49b9",
"assets/icons/calendar.png": "01d18998f62090ea86b73bafcfa7adb6",
"assets/icons/chronometer.png": "a491e73e8ad77a9fac6d9106ea4f7449",
"assets/icons/dashboard.png": "429ea35554c7d033a696029345451195",
"assets/icons/dashboard_outlined.png": "1de4b733dcce1e55dff61e8952af46fa",
"assets/icons/home_(1).png": "f603eaf274fb09621394f06bb62a946e",
"assets/icons/home_(2).png": "b24b4f5ae14ac8fcc8a818b663c17b31",
"assets/icons/hourglass.png": "f1612351fa290fcfdb0d220efb0be9cd",
"assets/icons/location.png": "112b8f4f715c57b84876bdfa0e1cc0d3",
"assets/icons/master_data.png": "ee32c42351c4347ba1382c6e97828adf",
"assets/icons/master_data_outlined.png": "82ea4f155d5a8fc62268e8469467e859",
"assets/icons/timetable.png": "34f8361d7d5db8fca27715ff905d623d",
"assets/icons/timetable_(1).png": "0f7c06b9c3465243ca7a8b3c1a1670b1",
"assets/images/app_icon.png": "ecf1a384321d471ce903148dce012c6e",
"assets/images/profile.png": "95f36ffd79f187b3eeb541191e3750ef",
"assets/NOTICES": "307607c60c22dbd0f750d46321c90b61",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"canvaskit/canvaskit.js": "bbf39143dfd758d8d847453b120c8ebb",
"canvaskit/canvaskit.wasm": "42df12e09ecc0d5a4a34a69d7ee44314",
"canvaskit/chromium/canvaskit.js": "96ae916cd2d1b7320fff853ee22aebb0",
"canvaskit/chromium/canvaskit.wasm": "be0e3b33510f5b7b0cc76cc4d3e50048",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "1a074e8452fe5e0d02b112e22cdcf455",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "34b6aa7e64483bbbaf6e9cb563c89639",
"/": "56dc8d92c855972de69e5355c4616dda",
"ios/Flutter/AppFrameworkInfo.plist": "d82fc62dcd081e420f43e71a31460b73",
"ios/Flutter/Debug.xcconfig": "e2f44c1946b223a1ce15cefc6ba9ad67",
"ios/Flutter/flutter_export_environment.sh": "e911383092ac76d63528b321a165629e",
"ios/Flutter/Generated.xcconfig": "112a9353ca704fa8370628ec52e4b72b",
"ios/Flutter/Release.xcconfig": "e2f44c1946b223a1ce15cefc6ba9ad67",
"ios/Runner/AppDelegate.swift": "b431e1eaead2cfc3718b75ba2c5f45aa",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Contents.json": "31a08e429403e265cabfb31b3d65f049",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-1024x1024@1x.png": "c785f8932297af4acd5f5ccb7630f01c",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-20x20@1x.png": "a2f8558fb1d42514111fbbb19fb67314",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-20x20@2x.png": "2247a840b6ee72b8a069208af170e5b1",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-20x20@3x.png": "1b3b1538136316263c7092951e923e9d",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-29x29@1x.png": "be8887071dd7ec39cb754d236aa9584f",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-29x29@2x.png": "043119ef4faa026ff82bd03f241e5338",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-29x29@3x.png": "2b1452c4c1bda6177b4fbbb832df217f",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-40x40@1x.png": "2247a840b6ee72b8a069208af170e5b1",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-40x40@2x.png": "8245359312aea1b0d2412f79a07b0ca5",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-40x40@3x.png": "5b3c0902200ce596e9848f22e1f0fe0e",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-60x60@2x.png": "5b3c0902200ce596e9848f22e1f0fe0e",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-60x60@3x.png": "e419d22a37bc40ba185aca1acb6d4ac6",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-76x76@1x.png": "36c0d7a7132bdde18898ffdfcfcdc4d2",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-76x76@2x.png": "643842917530acf4c5159ae851b0baf2",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-83.5x83.5@2x.png": "665cb5e3c5729da6d639d26eff47a503",
"ios/Runner/Assets.xcassets/LaunchImage.imageset/Contents.json": "b9e927ac17345f2d5f052fe68a3487f9",
"ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage.png": "978c1bee49d7ad5fc1a4d81099b13e18",
"ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage@2x.png": "978c1bee49d7ad5fc1a4d81099b13e18",
"ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage@3x.png": "978c1bee49d7ad5fc1a4d81099b13e18",
"ios/Runner/Assets.xcassets/LaunchImage.imageset/README.md": "f7ee1b402881509d197f34963e569927",
"ios/Runner/Base.lproj/LaunchScreen.storyboard": "b428258a72232cdd2cc04136ec23e656",
"ios/Runner/Base.lproj/Main.storyboard": "2b4e6b099f6729340a5ecc272c06cff7",
"ios/Runner/GeneratedPluginRegistrant.h": "decb9041b5e91a07e66f4664e5dac408",
"ios/Runner/GeneratedPluginRegistrant.m": "f6079b630997f8fd4ae1ac639162419a",
"ios/Runner/Info.plist": "0bd812716559fcc297ba6c55eb74da07",
"ios/Runner/Runner-Bridging-Header.h": "7ad7b5cea096132de13ba526b2b9efbe",
"ios/Runner.xcodeproj/project.pbxproj": "b1b93cec9e1f6b5277c317dfdf69f462",
"ios/Runner.xcodeproj/project.xcworkspace/contents.xcworkspacedata": "77d69f353bbf342ad71a24f69ec331ff",
"ios/Runner.xcodeproj/project.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist": "7e8ed88ea03cf8357fe1c73ae979f345",
"ios/Runner.xcodeproj/project.xcworkspace/xcshareddata/WorkspaceSettings.xcsettings": "ecb41062214c654f65e47faa71e6b52e",
"ios/Runner.xcodeproj/xcshareddata/xcschemes/Runner.xcscheme": "b806e02365fdff1ad43ff7acc0e41c9f",
"ios/Runner.xcworkspace/contents.xcworkspacedata": "ac9a90958f80f9cc1d0d5301144fb629",
"ios/Runner.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist": "7e8ed88ea03cf8357fe1c73ae979f345",
"ios/Runner.xcworkspace/xcshareddata/WorkspaceSettings.xcsettings": "ecb41062214c654f65e47faa71e6b52e",
"ios/RunnerTests/RunnerTests.swift": "24e5d095048eb86c30423f4e04b6e57b",
"lib/constants/app_routes.dart": "c8443b679cb62cf8638b286e60344ed6",
"lib/constants/assets.dart": "796e86cf887401908fa53ae6de3e7979",
"lib/constants/colors.dart": "b9f94773dcfa9e484f31fafaec1b7381",
"lib/constants/decoration.dart": "0d8f67a10288a5c9ff82ac6ca2de1f61",
"lib/constants/functions.dart": "e707641f757939a3943fd89a7754596b",
"lib/constants/style.dart": "2d685c784e13f344a2b173f0983a8ad4",
"lib/controllers/date_controller.dart": "3040738be292d4a684d21df38f1ae58f",
"lib/controllers/template_controller.dart": "ca2d4b3c702bc0b2a273e43a5c5eb90e",
"lib/controllers/textfield_controller.dart": "700925899529915603e79bf350200bb9",
"lib/main.dart": "1f020c853da26082ff5404f2ba3574d5",
"lib/model/master_model/employee_table_model.dart": "e5a20578a4ae270990be1e81a7fe6ada",
"lib/model/master_model/user_table_model.dart": "99063dbceb047ce2c72622daa3200d79",
"lib/view/template/master_data/employee_master.dart": "8225e664e3bf4c308482b014e5cdcd92",
"lib/view/template/master_data/responsive/employee_master/employee_master_lap.dart": "f886c51df9fda6aca80e179b420d5ce7",
"lib/view/template/master_data/responsive/employee_master/employee_master_mobile.dart": "b1d4f9dffb7f01b7b1b5a2d6c01fef00",
"lib/view/template/master_data/responsive/user_master/user_master_lap.dart": "85f440ccfbc799ecab1abd616fa2c858",
"lib/view/template/master_data/responsive/user_master/user_master_mobile.dart": "018d907dcac7c72ed20ee51684388bed",
"lib/view/template/master_data/timesheet.dart": "b1cc197f8350df5977ee6e380dd3872e",
"lib/view/template/master_data/user_master.dart": "8c6e8db5f36f6be8f28362f933f26051",
"lib/view/template/responsive/template_lap.dart": "2a443ca81d6f654a0a239e71cf44f634",
"lib/view/template/responsive/template_mobile.dart": "9e89bd453dbcfbfa9c7233651846ddf9",
"lib/view/template/template.dart": "ffa0390b92406fcd0fbbf1c692728225",
"lib/view/user_authentication/login_page.dart": "e6a76c928717679a0aee079870b9e2af",
"lib/widgets/master_data_widgets/lap_widgets/table_employee.dart": "d67141a59c4c12363d446a4f09a780f4",
"lib/widgets/master_data_widgets/lap_widgets/table_user.dart": "1b1e50b9650549f6f2be06202425e81d",
"lib/widgets/master_data_widgets/mobile_widgets/table_user.dart": "d41d8cd98f00b204e9800998ecf8427e",
"lib/widgets/template_widgets/lap_widgets/drop_down_widget.dart": "c7015d05600ff9e3db66ca0adaf4a57e",
"lib/widgets/template_widgets/lap_widgets/template_cards.dart": "413889bd7f494f5cb76d1bf321fd873d",
"lib/widgets/template_widgets/lap_widgets/template_images.dart": "8a514410fc81857213db04d5ae450105",
"lib/widgets/template_widgets/phone_widgets/drawer.dart": "9710ed2503acc141543f4f2d2765181f",
"lib/widgets/template_widgets/side_bar_navigation.dart": "26c85c473889d02da6a1e6228e77d933",
"lib/widgets/time_sheet_widgets/date_picker.dart": "8eed5383a78b27dbb9d5ce7bf618d7b3",
"lib/widgets/time_sheet_widgets/grid_view.dart": "b558c54791e42f46872b48b5c8361905",
"lib/widgets/time_sheet_widgets/responsive/appbar/appbar.dart": "e281f8872edff309ed3e73a7075cb8d6",
"lib/widgets/time_sheet_widgets/responsive/appbar/appbar_mobile.dart": "b8307855d1fa3bf3b272dd7468c4069e",
"lib/widgets/time_sheet_widgets/responsive/timesheet_lap.dart": "097b590cff813da93b6a428622811c1b",
"lib/widgets/time_sheet_widgets/responsive/timesheet_mobile.dart": "3593e5fb5d32382de61088951b1448dd",
"lib/widgets/time_sheet_widgets/responsive/timesheet_tablet.dart": "340297636dd011fd62fcd77787d4e1f8",
"lib/widgets/user_authentication_widgets/loginpage/textfield_widget.dart": "ad30df3ace27b776460b99b2320a8871",
"linux/CMakeLists.txt": "d61621b9d35080087242f07a7f70a89d",
"linux/flutter/CMakeLists.txt": "2195470ce31675d31db5a37590d011f6",
"linux/flutter/generated_plugins.cmake": "e973b0a9c4bf1b7cba923da57b4fbf45",
"linux/flutter/generated_plugin_registrant.cc": "d07afe003d5837167bdd357d593f20a0",
"linux/flutter/generated_plugin_registrant.h": "d295462c9da9f7fef22dc86c34492318",
"linux/main.cc": "539395bcd63dba20afed0838d136189f",
"linux/my_application.cc": "48d3385f70bc624c16354defa3f169f0",
"linux/my_application.h": "f6b37d58752c8671078b6f660e33e8c1",
"macos/Flutter/ephemeral/Flutter-Generated.xcconfig": "a45cd191aa52e2a2c08f678ed54167c2",
"macos/Flutter/ephemeral/flutter_export_environment.sh": "f357a348eba3de680d30f119e56afb27",
"macos/Flutter/Flutter-Debug.xcconfig": "f6991d7432e1664af118cc9531127016",
"macos/Flutter/Flutter-Release.xcconfig": "f6991d7432e1664af118cc9531127016",
"macos/Flutter/GeneratedPluginRegistrant.swift": "c840bc53b61279c2fb631741134c2ed7",
"macos/Runner/AppDelegate.swift": "f35757566ef1832592cec47b89197f94",
"macos/Runner/Assets.xcassets/AppIcon.appiconset/app_icon_1024.png": "c9becc9105f8cabce934d20c7bfb6aac",
"macos/Runner/Assets.xcassets/AppIcon.appiconset/app_icon_128.png": "3ded30823804caaa5ccc944067c54a36",
"macos/Runner/Assets.xcassets/AppIcon.appiconset/app_icon_16.png": "8bf511604bc6ed0a6aeb380c5113fdcf",
"macos/Runner/Assets.xcassets/AppIcon.appiconset/app_icon_256.png": "dfe2c93d1536ae02f085cc63faa3430e",
"macos/Runner/Assets.xcassets/AppIcon.appiconset/app_icon_32.png": "8e0ae58e362a6636bdfccbc04da2c58c",
"macos/Runner/Assets.xcassets/AppIcon.appiconset/app_icon_512.png": "0ad44039155424738917502c69667699",
"macos/Runner/Assets.xcassets/AppIcon.appiconset/app_icon_64.png": "04e7b6ef05346c70b663ca1d97de3ad5",
"macos/Runner/Assets.xcassets/AppIcon.appiconset/Contents.json": "1d48e925145d4b573a3b5d7960a1c585",
"macos/Runner/Base.lproj/MainMenu.xib": "85bdf02ea39336686f2e0ff5f52137cc",
"macos/Runner/Configs/AppInfo.xcconfig": "562b8459b3de5146108182556b332607",
"macos/Runner/Configs/Debug.xcconfig": "783e2b0e2aa72d8bc215462bb8d1569d",
"macos/Runner/Configs/Release.xcconfig": "709485d8ea7b78479bf23eb64281287d",
"macos/Runner/Configs/Warnings.xcconfig": "bbde97fb62099b5b9879fb2ffeb1a0a0",
"macos/Runner/DebugProfile.entitlements": "4ad77e84621dc5735c16180a0934fcde",
"macos/Runner/Info.plist": "9ffcbec0a18fdad9d3d606656fd46f9a",
"macos/Runner/MainFlutterWindow.swift": "93c22dae2d93f3dc1402e121901f582b",
"macos/Runner/Release.entitlements": "fc4ad575c1efec3d097fb9d40a0f702f",
"macos/Runner.xcodeproj/project.pbxproj": "38c0d14ec1f98cb6c1b295732a5c2d5d",
"macos/Runner.xcodeproj/project.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist": "7e8ed88ea03cf8357fe1c73ae979f345",
"macos/Runner.xcodeproj/xcshareddata/xcschemes/Runner.xcscheme": "5e647b801ad5efc3131f9a1bda78c697",
"macos/Runner.xcworkspace/contents.xcworkspacedata": "ac9a90958f80f9cc1d0d5301144fb629",
"macos/Runner.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist": "7e8ed88ea03cf8357fe1c73ae979f345",
"macos/RunnerTests/RunnerTests.swift": "491b4028786d09d80b109a6d3d775ef6",
"main.dart.js": "8d79cd1a7ff477b0bf939d2fc55abdba",
"manifest.json": "9d7a309e641280285fc7bbaa94b74580",
"pubspec.lock": "adad261d35a33fbe6a5a688e9d963da4",
"pubspec.yaml": "116f8ef90861cac1204ce523a524138d",
"README.md": "1ccf23a7080d8538933fd7138231636e",
"test/widget_test.dart": "5d0c155a4060b49c9409652696ebd652",
"version.json": "0e9127661630c606ba24cce18cc5b04b",
"web/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"web/icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"web/icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"web/icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"web/icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"web/index.html": "56dc8d92c855972de69e5355c4616dda",
"web/manifest.json": "9d7a309e641280285fc7bbaa94b74580",
"windows/CMakeLists.txt": "7e8e87c9bcd5a9734a98520a3082b363",
"windows/flutter/CMakeLists.txt": "82c70875775d10a82c7e2c3e9453a26d",
"windows/flutter/generated_plugins.cmake": "620906318e8c8297f3bc95b445ce4c47",
"windows/flutter/generated_plugin_registrant.cc": "a8f91348d8d9090f22ec69d597c41e1f",
"windows/flutter/generated_plugin_registrant.h": "0ea33875f9f8e118f9c2ded03e2e2835",
"windows/runner/CMakeLists.txt": "028602ab9754bffe716659ada7590d29",
"windows/runner/flutter_window.cpp": "2f463f9b7da67a2d692a012f9ea85e0c",
"windows/runner/flutter_window.h": "7defcc89d4a26d56e801241d624d48fb",
"windows/runner/main.cpp": "435f5c44df250bc15f157f32375190f9",
"windows/runner/resource.h": "1ade5dd15e613479a15e8832ed276f2b",
"windows/runner/resources/app_icon.ico": "6ea04d80ca2a3fa92c7717c3c44ccc19",
"windows/runner/runner.exe.manifest": "cd3aafe81b2f278dffaf305373ee30b4",
"windows/runner/Runner.rc": "ce6e8f4ba511c3f4ce1c3bf19fe85e54",
"windows/runner/utils.cpp": "3d7ba99ef466af433ffd4ef72b7c5c35",
"windows/runner/utils.h": "fd81e143f5614eb6fd75efe539002853",
"windows/runner/win32_window.cpp": "571eb8234dbc2661be03aa5f2a4d2fca",
"windows/runner/win32_window.h": "7569387d58711ab975940f4df3b4bcda"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
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

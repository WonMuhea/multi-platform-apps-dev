; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [322 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [644 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 228
	i64 98382396393917666, ; 1: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 181
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 170
	i64 131669012237370309, ; 3: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 187
	i64 196720943101637631, ; 4: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 57
	i64 210515253464952879, ; 5: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 215
	i64 229794953483747371, ; 6: System.ValueTuple.dll => 0x330654aed93802b => 150
	i64 232391251801502327, ; 7: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 256
	i64 295915112840604065, ; 8: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 259
	i64 316157742385208084, ; 9: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 222
	i64 350667413455104241, ; 10: System.ServiceProcess.dll => 0x4ddd227954be8f1 => 131
	i64 422779754995088667, ; 11: System.IO.UnmanagedMemoryStream => 0x5de03f27ab57d1b => 55
	i64 435118502366263740, ; 12: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x609d9f8f8bdb9bc => 258
	i64 545109961164950392, ; 13: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 294
	i64 560278790331054453, ; 14: System.Reflection.Primitives => 0x7c6829760de3975 => 94
	i64 590337075967009532, ; 15: Microsoft.Maui.Maps.dll => 0x8314c715ec1a2fc => 189
	i64 634308326490598313, ; 16: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 241
	i64 649145001856603771, ; 17: System.Security.SecureString => 0x90239f09b62167b => 128
	i64 687654259221141486, ; 18: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 276
	i64 750875890346172408, ; 19: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 144
	i64 798450721097591769, ; 20: Xamarin.AndroidX.Collection.Ktx.dll => 0xb14aab351ad2bd9 => 216
	i64 799765834175365804, ; 21: System.ComponentModel.dll => 0xb1956c9f18442ac => 18
	i64 849051935479314978, ; 22: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 297
	i64 870603111519317375, ; 23: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 197
	i64 872800313462103108, ; 24: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 227
	i64 895210737996778430, ; 25: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0xc6c6d6c5569cbbe => 242
	i64 940822596282819491, ; 26: System.Transactions => 0xd0e792aa81923a3 => 149
	i64 960778385402502048, ; 27: System.Runtime.Handles.dll => 0xd555ed9e1ca1ba0 => 103
	i64 1010599046655515943, ; 28: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 94
	i64 1055774368762298424, ; 29: ar/Microsoft.Maui.Controls.resources => 0xea6dd31d50a0038 => 287
	i64 1120440138749646132, ; 30: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 271
	i64 1121665720830085036, ; 31: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 305
	i64 1268860745194512059, ; 32: System.Drawing.dll => 0x119be62002c19ebb => 35
	i64 1301485588176585670, ; 33: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 196
	i64 1301626418029409250, ; 34: System.Diagnostics.FileVersionInfo => 0x12104e54b4e833e2 => 27
	i64 1315114680217950157, ; 35: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 211
	i64 1369545283391376210, ; 36: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 249
	i64 1404195534211153682, ; 37: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 49
	i64 1425944114962822056, ; 38: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 114
	i64 1476839205573959279, ; 39: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 69
	i64 1486715745332614827, ; 40: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 183
	i64 1492954217099365037, ; 41: System.Net.HttpListener => 0x14b809f350210aad => 64
	i64 1513467482682125403, ; 42: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 169
	i64 1518315023656898250, ; 43: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 198
	i64 1537168428375924959, ; 44: System.Threading.Thread.dll => 0x15551e8a954ae0df => 144
	i64 1556147632182429976, ; 45: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 303
	i64 1576750169145655260, ; 46: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x15e1bdecc376bfdc => 270
	i64 1624659445732251991, ; 47: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 210
	i64 1628611045998245443, ; 48: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 245
	i64 1636321030536304333, ; 49: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 235
	i64 1643226597988041431, ; 50: pl/Microsoft.Maui.Controls.resources => 0x16cde9e27a8d02d7 => 307
	i64 1651782184287836205, ; 51: System.Globalization.Calendars => 0x16ec4f2524cb982d => 39
	i64 1659332977923810219, ; 52: System.Reflection.DispatchProxy => 0x1707228d493d63ab => 88
	i64 1682513316613008342, ; 53: System.Net.dll => 0x17597cf276952bd6 => 80
	i64 1735388228521408345, ; 54: System.Net.Mail.dll => 0x181556663c69b759 => 65
	i64 1743969030606105336, ; 55: System.Memory.dll => 0x1833d297e88f2af8 => 61
	i64 1767386781656293639, ; 56: System.Private.Uri.dll => 0x188704e9f5582107 => 85
	i64 1795316252682057001, ; 57: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 209
	i64 1825687700144851180, ; 58: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 105
	i64 1836611346387731153, ; 59: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 256
	i64 1854145951182283680, ; 60: System.Runtime.CompilerServices.VisualC => 0x19bb3feb3df2e3a0 => 101
	i64 1875417405349196092, ; 61: System.Drawing.Primitives => 0x1a06d2319b6c713c => 34
	i64 1875917498431009007, ; 62: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 206
	i64 1897575647115118287, ; 63: Xamarin.AndroidX.Security.SecurityCrypto => 0x1a558aff4cba86cf => 258
	i64 1920760634179481754, ; 64: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 185
	i64 1959996714666907089, ; 65: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 315
	i64 1972385128188460614, ; 66: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 118
	i64 1981742497975770890, ; 67: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 243
	i64 1983698669889758782, ; 68: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 289
	i64 2019660174692588140, ; 69: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 307
	i64 2040001226662520565, ; 70: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 141
	i64 2062890601515140263, ; 71: System.Threading.Tasks.Dataflow => 0x1ca0dc1289cd44a7 => 140
	i64 2064708342624596306, ; 72: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 283
	i64 2080945842184875448, ; 73: System.IO.MemoryMappedFiles => 0x1ce10137d8416db8 => 52
	i64 2102659300918482391, ; 74: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 34
	i64 2106033277907880740, ; 75: System.Threading.Tasks.Dataflow.dll => 0x1d3a221ba6d9cb24 => 140
	i64 2145898162032646099, ; 76: ko/Microsoft.Maui.Controls.resources => 0x1dc7c302481e97d3 => 303
	i64 2165310824878145998, ; 77: Xamarin.Android.Glide.GifDecoder => 0x1e0cbab9112b81ce => 203
	i64 2165725771938924357, ; 78: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 213
	i64 2200176636225660136, ; 79: Microsoft.Extensions.Logging.Debug.dll => 0x1e8898fe5d5824e8 => 179
	i64 2262844636196693701, ; 80: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 227
	i64 2287834202362508563, ; 81: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 8
	i64 2287887973817120656, ; 82: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 14
	i64 2302323944321350744, ; 83: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 311
	i64 2304837677853103545, ; 84: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 255
	i64 2315304989185124968, ; 85: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 50
	i64 2329709569556905518, ; 86: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 238
	i64 2335503487726329082, ; 87: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 135
	i64 2337758774805907496, ; 88: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 100
	i64 2405413894731521496, ; 89: da/Microsoft.Maui.Controls.resources => 0x2161bf315d42ddd8 => 290
	i64 2470498323731680442, ; 90: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 220
	i64 2479423007379663237, ; 91: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 265
	i64 2492380397191429704, ; 92: cs/Microsoft.Maui.Controls.resources => 0x2296b6c41bbdfe48 => 289
	i64 2497223385847772520, ; 93: System.Runtime => 0x22a7eb7046413568 => 115
	i64 2547086958574651984, ; 94: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 204
	i64 2592350477072141967, ; 95: System.Xml.dll => 0x23f9e10627330e8f => 162
	i64 2624866290265602282, ; 96: mscorlib.dll => 0x246d65fbde2db8ea => 165
	i64 2632269733008246987, ; 97: System.Net.NameResolution => 0x2487b36034f808cb => 66
	i64 2656907746661064104, ; 98: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 175
	i64 2706075432581334785, ; 99: System.Net.WebSockets => 0x258de944be6c0701 => 79
	i64 2783046991838674048, ; 100: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 100
	i64 2787234703088983483, ; 101: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 260
	i64 2815524396660695947, ; 102: System.Security.AccessControl => 0x2712c0857f68238b => 116
	i64 2923871038697555247, ; 103: Jsr305Binding => 0x2893ad37e69ec52f => 272
	i64 3017136373564924869, ; 104: System.Net.WebProxy => 0x29df058bd93f63c5 => 77
	i64 3017704767998173186, ; 105: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 271
	i64 3106852385031680087, ; 106: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 113
	i64 3107556380337382748, ; 107: pt/Microsoft.Maui.Controls.resources => 0x2b2042103982255c => 309
	i64 3110390492489056344, ; 108: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 120
	i64 3135773902340015556, ; 109: System.IO.FileSystem.DriveInfo.dll => 0x2b8481c008eac5c4 => 47
	i64 3202009568827554833, ; 110: th/Microsoft.Maui.Controls.resources => 0x2c6fd2bce55e3c11 => 314
	i64 3281594302220646930, ; 111: System.Security.Principal => 0x2d8a90a198ceba12 => 127
	i64 3289520064315143713, ; 112: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 236
	i64 3303437397778967116, ; 113: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 207
	i64 3311221304742556517, ; 114: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 81
	i64 3325875462027654285, ; 115: System.Runtime.Numerics => 0x2e27e21c8958b48d => 109
	i64 3328853167529574890, ; 116: System.Net.Sockets.dll => 0x2e327651a008c1ea => 74
	i64 3344514922410554693, ; 117: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 286
	i64 3411255996856937470, ; 118: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 277
	i64 3414639567687375782, ; 119: SkiaSharp.Views.Maui.Controls => 0x2f633c9863ffdba6 => 192
	i64 3429672777697402584, ; 120: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 187
	i64 3437845325506641314, ; 121: System.IO.MemoryMappedFiles.dll => 0x2fb5ae1beb8f7da2 => 52
	i64 3493805808809882663, ; 122: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 262
	i64 3494946837667399002, ; 123: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 173
	i64 3508450208084372758, ; 124: System.Net.Ping => 0x30b084e02d03ad16 => 68
	i64 3522470458906976663, ; 125: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 261
	i64 3531994851595924923, ; 126: System.Numerics => 0x31042a9aade235bb => 82
	i64 3551103847008531295, ; 127: System.Private.CoreLib.dll => 0x31480e226177735f => 171
	i64 3571415421602489686, ; 128: System.Runtime.dll => 0x319037675df7e556 => 115
	i64 3638003163729360188, ; 129: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 174
	i64 3647754201059316852, ; 130: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 155
	i64 3655542548057982301, ; 131: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 173
	i64 3659371656528649588, ; 132: Xamarin.Android.Glide.Annotations => 0x32c8b3222885dd74 => 201
	i64 3716579019761409177, ; 133: netstandard.dll => 0x3393f0ed5c8c5c99 => 166
	i64 3727469159507183293, ; 134: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 254
	i64 3772598417116884899, ; 135: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 228
	i64 3869221888984012293, ; 136: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 177
	i64 3869649043256705283, ; 137: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 31
	i64 3890352374528606784, ; 138: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 185
	i64 3919223565570527920, ; 139: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 121
	i64 3933965368022646939, ; 140: System.Net.Requests => 0x369840a8bfadc09b => 71
	i64 3966267475168208030, ; 141: System.Memory => 0x370b03412596249e => 61
	i64 4006972109285359177, ; 142: System.Xml.XmlDocument => 0x379b9fe74ed9fe49 => 160
	i64 4009997192427317104, ; 143: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 112
	i64 4073500526318903918, ; 144: System.Private.Xml.dll => 0x3887fb25779ae26e => 87
	i64 4073631083018132676, ; 145: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 182
	i64 4148881117810174540, ; 146: System.Runtime.InteropServices.JavaScript.dll => 0x3993c9651a66aa4c => 104
	i64 4154383907710350974, ; 147: System.ComponentModel => 0x39a7562737acb67e => 18
	i64 4167269041631776580, ; 148: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 145
	i64 4168469861834746866, ; 149: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 117
	i64 4187479170553454871, ; 150: System.Linq.Expressions => 0x3a1cea1e912fa117 => 57
	i64 4201423742386704971, ; 151: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 222
	i64 4205801962323029395, ; 152: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 17
	i64 4235503420553921860, ; 153: System.IO.IsolatedStorage.dll => 0x3ac787eb9b118544 => 51
	i64 4247996603072512073, ; 154: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 279
	i64 4282138915307457788, ; 155: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 91
	i64 4337444564132831293, ; 156: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 195
	i64 4356591372459378815, ; 157: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 317
	i64 4373617458794931033, ; 158: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 54
	i64 4397634830160618470, ; 159: System.Security.SecureString.dll => 0x3d0789940f9be3e6 => 128
	i64 4477672992252076438, ; 160: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 151
	i64 4484706122338676047, ; 161: System.Globalization.Extensions.dll => 0x3e3ce07510042d4f => 40
	i64 4533124835995628778, ; 162: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 91
	i64 4636684751163556186, ; 163: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 266
	i64 4672453897036726049, ; 164: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 49
	i64 4679594760078841447, ; 165: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 287
	i64 4716677666592453464, ; 166: System.Xml.XmlSerializer => 0x417501590542f358 => 161
	i64 4743821336939966868, ; 167: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 13
	i64 4759461199762736555, ; 168: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 240
	i64 4794310189461587505, ; 169: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 204
	i64 4795410492532947900, ; 170: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 261
	i64 4809057822547766521, ; 171: System.Drawing => 0x42bd349c3145ecf9 => 35
	i64 4814660307502931973, ; 172: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 66
	i64 4835744211636393215, ; 173: fi/Microsoft.Maui.Controls.resources => 0x431c03bd573d14ff => 294
	i64 4853321196694829351, ; 174: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 108
	i64 5055365687667823624, ; 175: Xamarin.AndroidX.Activity.Ktx.dll => 0x4628444ef7239408 => 205
	i64 5081566143765835342, ; 176: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 98
	i64 5099468265966638712, ; 177: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 98
	i64 5103417709280584325, ; 178: System.Collections.Specialized => 0x46d2fb5e161b6285 => 11
	i64 5182934613077526976, ; 179: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 11
	i64 5205316157927637098, ; 180: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 247
	i64 5244375036463807528, ; 181: System.Diagnostics.Contracts.dll => 0x48c7c34f4d59fc28 => 25
	i64 5262971552273843408, ; 182: System.Security.Principal.dll => 0x4909d4be0c44c4d0 => 127
	i64 5278787618751394462, ; 183: System.Net.WebClient.dll => 0x4942055efc68329e => 75
	i64 5280980186044710147, ; 184: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x4949cf7fd7123d03 => 239
	i64 5290786973231294105, ; 185: System.Runtime.Loader => 0x496ca6b869b72699 => 108
	i64 5376510917114486089, ; 186: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 265
	i64 5408338804355907810, ; 187: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 263
	i64 5423376490970181369, ; 188: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 105
	i64 5440320908473006344, ; 189: Microsoft.VisualBasic.Core => 0x4b7fe70acda9f908 => 2
	i64 5446034149219586269, ; 190: System.Diagnostics.Debug => 0x4b94333452e150dd => 26
	i64 5451019430259338467, ; 191: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 218
	i64 5457765010617926378, ; 192: System.Xml.Serialization => 0x4bbde05c557002ea => 156
	i64 5507995362134886206, ; 193: System.Core.dll => 0x4c705499688c873e => 21
	i64 5527431512186326818, ; 194: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 48
	i64 5570799893513421663, ; 195: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 42
	i64 5573260873512690141, ; 196: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 125
	i64 5573669443803475672, ; 197: Microsoft.Maui.Controls.Maps => 0x4d59a6d41d5aeed8 => 184
	i64 5574231584441077149, ; 198: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 208
	i64 5591791169662171124, ; 199: System.Linq.Parallel => 0x4d9a087135e137f4 => 58
	i64 5650097808083101034, ; 200: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 118
	i64 5692067934154308417, ; 201: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 268
	i64 5724799082821825042, ; 202: Xamarin.AndroidX.ExifInterface => 0x4f72926f3e13b212 => 231
	i64 5757522595884336624, ; 203: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 217
	i64 5783556987928984683, ; 204: Microsoft.VisualBasic => 0x504352701bbc3c6b => 3
	i64 5896680224035167651, ; 205: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 237
	i64 5939174725034091446, ; 206: pt-BR/Microsoft.Maui.Controls.resources => 0x526c2ff200a2a3b6 => 308
	i64 5959344983920014087, ; 207: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x52b3d8b05c8ef307 => 257
	i64 5979151488806146654, ; 208: System.Formats.Asn1 => 0x52fa3699a489d25e => 37
	i64 5984759512290286505, ; 209: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 123
	i64 6068057819846744445, ; 210: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 310
	i64 6102788177522843259, ; 211: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0x54b1758374b3de7b => 257
	i64 6183170893902868313, ; 212: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 195
	i64 6222399776351216807, ; 213: System.Text.Json.dll => 0x565a67a0ffe264a7 => 136
	i64 6251069312384999852, ; 214: System.Transactions.Local => 0x56c0426b870da1ac => 148
	i64 6278736998281604212, ; 215: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 84
	i64 6284145129771520194, ; 216: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 89
	i64 6319713645133255417, ; 217: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 241
	i64 6357457916754632952, ; 218: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 321
	i64 6401687960814735282, ; 219: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 238
	i64 6504860066809920875, ; 220: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 213
	i64 6548213210057960872, ; 221: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 224
	i64 6557084851308642443, ; 222: Xamarin.AndroidX.Window.dll => 0x5aff71ee6c58c08b => 269
	i64 6560151584539558821, ; 223: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 180
	i64 6589202984700901502, ; 224: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 274
	i64 6591971792923354531, ; 225: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x5b7b636b7e9765a3 => 239
	i64 6617685658146568858, ; 226: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 132
	i64 6671798237668743565, ; 227: SkiaSharp => 0x5c96fd260152998d => 190
	i64 6713440830605852118, ; 228: System.Reflection.TypeExtensions.dll => 0x5d2aeeddb8dd7dd6 => 95
	i64 6734140735192831707, ; 229: uk/Microsoft.Maui.Controls.resources => 0x5d747951d4a816db => 316
	i64 6739853162153639747, ; 230: Microsoft.VisualBasic.dll => 0x5d88c4bde075ff43 => 3
	i64 6772837112740759457, ; 231: System.Runtime.InteropServices.JavaScript => 0x5dfdf378527ec7a1 => 104
	i64 6777482997383978746, ; 232: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 309
	i64 6786606130239981554, ; 233: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 32
	i64 6798329586179154312, ; 234: System.Windows => 0x5e5884bd523ca188 => 153
	i64 6814185388980153342, ; 235: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 157
	i64 6876862101832370452, ; 236: System.Xml.Linq => 0x5f6f85a57d108914 => 154
	i64 6894844156784520562, ; 237: System.Numerics.Vectors => 0x5faf683aead1ad72 => 81
	i64 7011053663211085209, ; 238: Xamarin.AndroidX.Fragment.Ktx => 0x614c442918e5dd99 => 233
	i64 7060896174307865760, ; 239: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 142
	i64 7083547580668757502, ; 240: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 86
	i64 7101497697220435230, ; 241: System.Configuration => 0x628d9687c0141d1e => 19
	i64 7103753931438454322, ; 242: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 234
	i64 7112547816752919026, ; 243: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 50
	i64 7141281584637745974, ; 244: Xamarin.GooglePlayServices.Maps.dll => 0x631aedc3dd5f1b36 => 278
	i64 7192745174564810625, ; 245: Xamarin.Android.Glide.GifDecoder.dll => 0x63d1c3a0a1d72f81 => 203
	i64 7220009545223068405, ; 246: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 313
	i64 7270811800166795866, ; 247: System.Linq => 0x64e71ccf51a90a5a => 60
	i64 7299370801165188114, ; 248: System.IO.Pipes.AccessControl.dll => 0x654c9311e74f3c12 => 53
	i64 7314237870106916923, ; 249: SkiaSharp.Views.Maui.Core.dll => 0x65816497226eb83b => 193
	i64 7316205155833392065, ; 250: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 4
	i64 7338192458477945005, ; 251: System.Reflection => 0x65d67f295d0740ad => 96
	i64 7349431895026339542, ; 252: Xamarin.Android.Glide.DiskLruCache => 0x65fe6d5e9bf88ed6 => 202
	i64 7377312882064240630, ; 253: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 17
	i64 7439799228237803094, ; 254: it/Microsoft.Maui.Controls.resources => 0x673f79faf756ee56 => 301
	i64 7488575175965059935, ; 255: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 154
	i64 7489048572193775167, ; 256: System.ObjectModel => 0x67ee71ff6b419e3f => 83
	i64 7550337421098841266, ; 257: LocationTrackerApp => 0x68c82fe18eef74b2 => 0
	i64 7592577537120840276, ; 258: System.Diagnostics.Process => 0x695e410af5b2aa54 => 28
	i64 7637303409920963731, ; 259: System.IO.Compression.ZipFile.dll => 0x69fd26fcb637f493 => 44
	i64 7642002156153824904, ; 260: ro/Microsoft.Maui.Controls.resources => 0x6a0dd878d2516688 => 310
	i64 7654504624184590948, ; 261: System.Net.Http => 0x6a3a4366801b8264 => 63
	i64 7694700312542370399, ; 262: System.Net.Mail => 0x6ac9112a7e2cda5f => 65
	i64 7708790323521193081, ; 263: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 304
	i64 7714652370974252055, ; 264: System.Private.CoreLib => 0x6b0ff375198b9c17 => 171
	i64 7723873813026311384, ; 265: SkiaSharp.Views.Maui.Controls.dll => 0x6b30b64f63600cd8 => 192
	i64 7725404731275645577, ; 266: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x6b3626ac11ce9289 => 242
	i64 7735176074855944702, ; 267: Microsoft.CSharp => 0x6b58dda848e391fe => 1
	i64 7735352534559001595, ; 268: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 281
	i64 7791074099216502080, ; 269: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 46
	i64 7820441508502274321, ; 270: System.Data => 0x6c87ca1e14ff8111 => 24
	i64 7836164640616011524, ; 271: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 210
	i64 7927939710195668715, ; 272: SkiaSharp.Views.Android.dll => 0x6e05b32992ed16eb => 191
	i64 8025517457475554965, ; 273: WindowsBase => 0x6f605d9b4786ce95 => 164
	i64 8031450141206250471, ; 274: System.Runtime.Intrinsics.dll => 0x6f757159d9dc03e7 => 107
	i64 8064050204834738623, ; 275: System.Collections.dll => 0x6fe942efa61731bf => 12
	i64 8083354569033831015, ; 276: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 236
	i64 8085230611270010360, ; 277: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 62
	i64 8087206902342787202, ; 278: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 199
	i64 8103644804370223335, ; 279: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 23
	i64 8113615946733131500, ; 280: System.Reflection.Extensions => 0x70995ab73cf916ec => 92
	i64 8167236081217502503, ; 281: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 167
	i64 8185542183669246576, ; 282: System.Collections => 0x7198e33f4794aa70 => 12
	i64 8187640529827139739, ; 283: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 285
	i64 8246048515196606205, ; 284: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 188
	i64 8264926008854159966, ; 285: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 28
	i64 8290740647658429042, ; 286: System.Runtime.Extensions => 0x730ea0b15c929a72 => 102
	i64 8318905602908530212, ; 287: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 14
	i64 8368701292315763008, ; 288: System.Security.Cryptography => 0x7423997c6fd56140 => 125
	i64 8398329775253868912, ; 289: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 219
	i64 8400357532724379117, ; 290: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 251
	i64 8410671156615598628, ; 291: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 90
	i64 8426919725312979251, ; 292: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 240
	i64 8515752553183989521, ; 293: el/Microsoft.Maui.Controls.resources => 0x762e07d427a84f11 => 292
	i64 8518412311883997971, ; 294: System.Collections.Immutable => 0x76377add7c28e313 => 9
	i64 8557640666902467377, ; 295: tr/Microsoft.Maui.Controls.resources => 0x76c2d8d8a2289331 => 315
	i64 8563666267364444763, ; 296: System.Private.Uri => 0x76d841191140ca5b => 85
	i64 8573305974629105867, ; 297: sk/Microsoft.Maui.Controls.resources => 0x76fa805c508080cb => 312
	i64 8598790081731763592, ; 298: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 230
	i64 8601935802264776013, ; 299: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 263
	i64 8614108721271900878, ; 300: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 308
	i64 8623059219396073920, ; 301: System.Net.Quic.dll => 0x77ab42ac514299c0 => 70
	i64 8626175481042262068, ; 302: Java.Interop => 0x77b654e585b55834 => 167
	i64 8638972117149407195, ; 303: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 1
	i64 8639588376636138208, ; 304: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 250
	i64 8648495978913578441, ; 305: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 5
	i64 8684531736582871431, ; 306: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 43
	i64 8725526185868997716, ; 307: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 199
	i64 8853378295825400934, ; 308: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 282
	i64 8906941675023136603, ; 309: he/Microsoft.Maui.Controls.resources => 0x7b9bd0432ee0775b => 296
	i64 8941376889969657626, ; 310: System.Xml.XDocument => 0x7c1626e87187471a => 157
	i64 8951477988056063522, ; 311: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 253
	i64 8954753533646919997, ; 312: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 111
	i64 9138683372487561558, ; 313: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 120
	i64 9312692141327339315, ; 314: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 268
	i64 9324707631942237306, ; 315: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 209
	i64 9468215723722196442, ; 316: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 158
	i64 9554839972845591462, ; 317: System.ServiceModel.Web => 0x84999c54e32a1ba6 => 130
	i64 9575902398040817096, ; 318: Xamarin.Google.Crypto.Tink.Android.dll => 0x84e4707ee708bdc8 => 273
	i64 9584643793929893533, ; 319: System.IO.dll => 0x85037ebfbbd7f69d => 56
	i64 9659729154652888475, ; 320: System.Text.RegularExpressions => 0x860e407c9991dd9b => 137
	i64 9662334977499516867, ; 321: System.Numerics.dll => 0x8617827802b0cfc3 => 82
	i64 9667360217193089419, ; 322: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 29
	i64 9678050649315576968, ; 323: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 220
	i64 9702891218465930390, ; 324: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 10
	i64 9780093022148426479, ; 325: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x87b9dec9576efaef => 270
	i64 9808709177481450983, ; 326: Mono.Android.dll => 0x881f890734e555e7 => 170
	i64 9825649861376906464, ; 327: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 217
	i64 9834056768316610435, ; 328: System.Transactions.dll => 0x8879968718899783 => 149
	i64 9836529246295212050, ; 329: System.Reflection.Metadata => 0x88825f3bbc2ac012 => 93
	i64 9875200773399460291, ; 330: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 276
	i64 9884103019517044980, ; 331: hi/Microsoft.Maui.Controls.resources => 0x892b6353f9ade8f4 => 297
	i64 9907349773706910547, ; 332: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 230
	i64 9933555792566666578, ; 333: System.Linq.Queryable.dll => 0x89db145cf475c552 => 59
	i64 9956195530459977388, ; 334: Microsoft.Maui => 0x8a2b8315b36616ac => 186
	i64 9974604633896246661, ; 335: System.Xml.Serialization.dll => 0x8a6cea111a59dd85 => 156
	i64 9991543690424095600, ; 336: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 293
	i64 10017511394021241210, ; 337: Microsoft.Extensions.Logging.Debug => 0x8b055989ae10717a => 179
	i64 10038780035334861115, ; 338: System.Net.Http.dll => 0x8b50e941206af13b => 63
	i64 10051358222726253779, ; 339: System.Private.Xml => 0x8b7d990c97ccccd3 => 87
	i64 10078727084704864206, ; 340: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 78
	i64 10089571585547156312, ; 341: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 46
	i64 10092835686693276772, ; 342: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 183
	i64 10105485790837105934, ; 343: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 142
	i64 10226222362177979215, ; 344: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 283
	i64 10226489408795347955, ; 345: sv/Microsoft.Maui.Controls.resources => 0x8debc9ef5e8a8bf3 => 313
	i64 10229024438826829339, ; 346: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 224
	i64 10236703004850800690, ; 347: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 73
	i64 10245369515835430794, ; 348: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 90
	i64 10321854143672141184, ; 349: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 280
	i64 10360651442923773544, ; 350: System.Text.Encoding => 0x8fc86d98211c1e68 => 134
	i64 10364469296367737616, ; 351: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 89
	i64 10376576884623852283, ; 352: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 262
	i64 10406448008575299332, ; 353: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 286
	i64 10430153318873392755, ; 354: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 221
	i64 10546663366131771576, ; 355: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 111
	i64 10566960649245365243, ; 356: System.Globalization.dll => 0x92a562b96dcd13fb => 41
	i64 10595762989148858956, ; 357: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 158
	i64 10670374202010151210, ; 358: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 4
	i64 10714184849103829812, ; 359: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 102
	i64 10785150219063592792, ; 360: System.Net.Primitives => 0x95ac8cfb68830758 => 69
	i64 10822644899632537592, ; 361: System.Linq.Queryable => 0x9631c23204ca5ff8 => 59
	i64 10830817578243619689, ; 362: System.Formats.Tar => 0x964ecb340a447b69 => 38
	i64 10847732767863316357, ; 363: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 211
	i64 10899834349646441345, ; 364: System.Web => 0x9743fd975946eb81 => 152
	i64 10943875058216066601, ; 365: System.IO.UnmanagedMemoryStream.dll => 0x97e07461df39de29 => 55
	i64 10964653383833615866, ; 366: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 33
	i64 10984274332520666918, ; 367: zh-Hant/Microsoft.Maui.Controls.resources => 0x986ffb4ee955d726 => 320
	i64 11002576679268595294, ; 368: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 178
	i64 11009005086950030778, ; 369: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 186
	i64 11019817191295005410, ; 370: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 208
	i64 11023048688141570732, ; 371: System.Core => 0x98f9bc61168392ac => 21
	i64 11037814507248023548, ; 372: System.Xml => 0x992e31d0412bf7fc => 162
	i64 11071824625609515081, ; 373: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 274
	i64 11128133081269842136, ; 374: vi/Microsoft.Maui.Controls.resources => 0x9a6f1213fa5cb0d8 => 317
	i64 11136029745144976707, ; 375: Jsr305Binding.dll => 0x9a8b200d4f8cd543 => 272
	i64 11150130305267896488, ; 376: zh-Hans/Microsoft.Maui.Controls.resources => 0x9abd386fcccf90a8 => 319
	i64 11162124722117608902, ; 377: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 267
	i64 11188319605227840848, ; 378: System.Threading.Overlapped => 0x9b44e5671724e550 => 139
	i64 11226290749488709958, ; 379: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 180
	i64 11235648312900863002, ; 380: System.Reflection.DispatchProxy.dll => 0x9bed0a9c8fac441a => 88
	i64 11329751333533450475, ; 381: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 146
	i64 11340910727871153756, ; 382: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 223
	i64 11347436699239206956, ; 383: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 161
	i64 11392833485892708388, ; 384: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 252
	i64 11432101114902388181, ; 385: System.AppContext => 0x9ea6fb64e61a9dd5 => 6
	i64 11446671985764974897, ; 386: Mono.Android.Export => 0x9edabf8623efc131 => 168
	i64 11448276831755070604, ; 387: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 30
	i64 11485890710487134646, ; 388: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 106
	i64 11508496261504176197, ; 389: Xamarin.AndroidX.Fragment.Ktx.dll => 0x9fb664600dde1045 => 233
	i64 11529969570048099689, ; 390: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 267
	i64 11530571088791430846, ; 391: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 177
	i64 11580057168383206117, ; 392: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 206
	i64 11591352189662810718, ; 393: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 260
	i64 11597940890313164233, ; 394: netstandard => 0xa0f429ca8d1805c9 => 166
	i64 11672361001936329215, ; 395: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 234
	i64 11692977985522001935, ; 396: System.Threading.Overlapped.dll => 0xa245cd869980680f => 139
	i64 11705530742807338875, ; 397: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 296
	i64 11707554492040141440, ; 398: System.Linq.Parallel.dll => 0xa27996c7fe94da80 => 58
	i64 11739066727115742305, ; 399: SQLite-net.dll => 0xa2e98afdf8575c61 => 194
	i64 11743665907891708234, ; 400: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 143
	i64 11806260347154423189, ; 401: SQLite-net => 0xa3d8433bc5eb5d95 => 194
	i64 11888774080858266727, ; 402: hu/Microsoft.Maui.Controls.resources => 0xa4fd6909806d9c67 => 299
	i64 11991047634523762324, ; 403: System.Net => 0xa668c24ad493ae94 => 80
	i64 12040886584167504988, ; 404: System.Net.ServicePoint => 0xa719d28d8e121c5c => 73
	i64 12063623837170009990, ; 405: System.Security => 0xa76a99f6ce740786 => 129
	i64 12096697103934194533, ; 406: System.Diagnostics.Contracts => 0xa7e019eccb7e8365 => 25
	i64 12102847907131387746, ; 407: System.Buffers => 0xa7f5f40c43256f62 => 7
	i64 12123043025855404482, ; 408: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 92
	i64 12124060477258521817, ; 409: id/Microsoft.Maui.Controls.resources => 0xa84150c49e58dcd9 => 300
	i64 12137774235383566651, ; 410: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 264
	i64 12145679461940342714, ; 411: System.Text.Json => 0xa88e1f1ebcb62fba => 136
	i64 12191646537372739477, ; 412: Xamarin.Android.Glide.dll => 0xa9316dee7f392795 => 200
	i64 12201331334810686224, ; 413: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 112
	i64 12269460666702402136, ; 414: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 9
	i64 12279246230491828964, ; 415: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 198
	i64 12332222936682028543, ; 416: System.Runtime.Handles => 0xab24db6c07db5dff => 103
	i64 12375446203996702057, ; 417: System.Configuration.dll => 0xabbe6ac12e2e0569 => 19
	i64 12451044538927396471, ; 418: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 232
	i64 12466513435562512481, ; 419: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 246
	i64 12475113361194491050, ; 420: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 321
	i64 12487638416075308985, ; 421: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 226
	i64 12517810545449516888, ; 422: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 32
	i64 12533156002265635263, ; 423: ru/Microsoft.Maui.Controls.resources => 0xadeeb6fb059919bf => 311
	i64 12538491095302438457, ; 424: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 214
	i64 12550732019250633519, ; 425: System.IO.Compression => 0xae2d28465e8e1b2f => 45
	i64 12565535407622187564, ; 426: LocationTrackerApp.dll => 0xae61bfe0cfe9ea2c => 0
	i64 12681088699309157496, ; 427: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 301
	i64 12699999919562409296, ; 428: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 29
	i64 12700543734426720211, ; 429: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 215
	i64 12708238894395270091, ; 430: System.IO => 0xb05cbbf17d3ba3cb => 56
	i64 12708922737231849740, ; 431: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 133
	i64 12717050818822477433, ; 432: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 113
	i64 12753841065332862057, ; 433: Xamarin.AndroidX.Window => 0xb0febee04cf46c69 => 269
	i64 12823819093633476069, ; 434: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 314
	i64 12828192437253469131, ; 435: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 284
	i64 12835242264250840079, ; 436: System.IO.Pipes => 0xb21ff0d5d6c0740f => 54
	i64 12843321153144804894, ; 437: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 181
	i64 12843770487262409629, ; 438: System.AppContext.dll => 0xb23e3d357debf39d => 6
	i64 12859557719246324186, ; 439: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 76
	i64 12982280885948128408, ; 440: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 225
	i64 13068258254871114833, ; 441: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 110
	i64 13129914918964716986, ; 442: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 229
	i64 13173818576982874404, ; 443: System.Runtime.CompilerServices.VisualC.dll => 0xb6d2ce32a8819924 => 101
	i64 13221551921002590604, ; 444: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 288
	i64 13222659110913276082, ; 445: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 302
	i64 13239674268801700939, ; 446: ca/Microsoft.Maui.Controls.resources => 0xb7bcc599c5ce144b => 288
	i64 13343850469010654401, ; 447: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 169
	i64 13370592475155966277, ; 448: System.Runtime.Serialization => 0xb98de304062ea945 => 114
	i64 13401370062847626945, ; 449: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 264
	i64 13404347523447273790, ; 450: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 219
	i64 13431476299110033919, ; 451: System.Net.WebClient => 0xba663087f18829ff => 75
	i64 13454009404024712428, ; 452: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 275
	i64 13463706743370286408, ; 453: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 84
	i64 13465488254036897740, ; 454: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 281
	i64 13467053111158216594, ; 455: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 316
	i64 13491513212026656886, ; 456: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 212
	i64 13545416393490209236, ; 457: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 300
	i64 13572454107664307259, ; 458: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 254
	i64 13578472628727169633, ; 459: System.Xml.XPath => 0xbc706ce9fba5c261 => 159
	i64 13580399111273692417, ; 460: Microsoft.VisualBasic.Core.dll => 0xbc77450a277fbd01 => 2
	i64 13621154251410165619, ; 461: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 225
	i64 13647894001087880694, ; 462: System.Data.dll => 0xbd670f48cb071df6 => 24
	i64 13675589307506966157, ; 463: Xamarin.AndroidX.Activity.Ktx => 0xbdc97404d0153e8d => 205
	i64 13702626353344114072, ; 464: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 31
	i64 13710614125866346983, ; 465: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 116
	i64 13713329104121190199, ; 466: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 36
	i64 13717397318615465333, ; 467: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 16
	i64 13755568601956062840, ; 468: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 295
	i64 13768883594457632599, ; 469: System.IO.IsolatedStorage => 0xbf14e6adb159cf57 => 51
	i64 13814445057219246765, ; 470: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 298
	i64 13828521679616088467, ; 471: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 282
	i64 13881769479078963060, ; 472: System.Console.dll => 0xc0a5f3cade5c6774 => 20
	i64 13911222732217019342, ; 473: System.Security.Cryptography.OpenSsl.dll => 0xc10e975ec1226bce => 122
	i64 13928444506500929300, ; 474: System.Windows.dll => 0xc14bc67b8bba9714 => 153
	i64 13959074834287824816, ; 475: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 232
	i64 14075334701871371868, ; 476: System.ServiceModel.Web.dll => 0xc355a25647c5965c => 130
	i64 14100563506285742564, ; 477: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 290
	i64 14124974489674258913, ; 478: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 214
	i64 14125464355221830302, ; 479: System.Threading.dll => 0xc407bafdbc707a9e => 147
	i64 14178052285788134900, ; 480: Xamarin.Android.Glide.Annotations.dll => 0xc4c28f6f75511df4 => 201
	i64 14212104595480609394, ; 481: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 119
	i64 14220608275227875801, ; 482: System.Diagnostics.FileVersionInfo.dll => 0xc559bfe1def019d9 => 27
	i64 14226382999226559092, ; 483: System.ServiceProcess => 0xc56e43f6938e2a74 => 131
	i64 14232023429000439693, ; 484: System.Resources.Writer.dll => 0xc5824de7789ba78d => 99
	i64 14254574811015963973, ; 485: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 133
	i64 14261073672896646636, ; 486: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 252
	i64 14298246716367104064, ; 487: System.Web.dll => 0xc66d93a217f4e840 => 152
	i64 14327695147300244862, ; 488: System.Reflection.dll => 0xc6d632d338eb4d7e => 96
	i64 14327709162229390963, ; 489: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 124
	i64 14331727281556788554, ; 490: Xamarin.Android.Glide.DiskLruCache.dll => 0xc6e48607a2f7954a => 202
	i64 14346402571976470310, ; 491: System.Net.Ping.dll => 0xc718a920f3686f26 => 68
	i64 14461014870687870182, ; 492: System.Net.Requests.dll => 0xc8afd8683afdece6 => 71
	i64 14486659737292545672, ; 493: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 237
	i64 14495724990987328804, ; 494: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 255
	i64 14522721392235705434, ; 495: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 292
	i64 14551742072151931844, ; 496: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 135
	i64 14552901170081803662, ; 497: SkiaSharp.Views.Maui.Core => 0xc9f64a827617ad8e => 193
	i64 14561513370130550166, ; 498: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 123
	i64 14574160591280636898, ; 499: System.Net.Quic => 0xca41d1d72ec783e2 => 70
	i64 14622043554576106986, ; 500: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 110
	i64 14644440854989303794, ; 501: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 247
	i64 14669215534098758659, ; 502: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 175
	i64 14690985099581930927, ; 503: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 151
	i64 14792063746108907174, ; 504: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 275
	i64 14832630590065248058, ; 505: System.Security.Claims => 0xcdd816ef5d6e873a => 117
	i64 14852515768018889994, ; 506: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 223
	i64 14889905118082851278, ; 507: GoogleGson.dll => 0xcea391d0969961ce => 172
	i64 14892012299694389861, ; 508: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 320
	i64 14912225920358050525, ; 509: System.Security.Principal.Windows => 0xcef2de7759506add => 126
	i64 14935719434541007538, ; 510: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 132
	i64 14954917835170835695, ; 511: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 176
	i64 14984936317414011727, ; 512: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 76
	i64 14987728460634540364, ; 513: System.IO.Compression.dll => 0xcfff1ba06622494c => 45
	i64 14988210264188246988, ; 514: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 226
	i64 15015154896917945444, ; 515: System.Net.Security.dll => 0xd0608bd33642dc64 => 72
	i64 15024878362326791334, ; 516: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 62
	i64 15071021337266399595, ; 517: System.Resources.Reader.dll => 0xd127060e7a18a96b => 97
	i64 15076659072870671916, ; 518: System.ObjectModel.dll => 0xd13b0d8c1620662c => 83
	i64 15115185479366240210, ; 519: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 42
	i64 15133485256822086103, ; 520: System.Linq.dll => 0xd204f0a9127dd9d7 => 60
	i64 15150743910298169673, ; 521: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 253
	i64 15227001540531775957, ; 522: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 174
	i64 15234786388537674379, ; 523: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 36
	i64 15250465174479574862, ; 524: System.Globalization.Calendars.dll => 0xd3a489469852174e => 39
	i64 15272359115529052076, ; 525: Xamarin.AndroidX.Collection.Ktx => 0xd3f251b2fb4edfac => 216
	i64 15273147323526128252, ; 526: de/Microsoft.Maui.Controls.resources => 0xd3f51e91f4fba27c => 291
	i64 15279429628684179188, ; 527: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 285
	i64 15299439993936780255, ; 528: System.Xml.XPath.dll => 0xd452879d55019bdf => 159
	i64 15338463749992804988, ; 529: System.Resources.Reader => 0xd4dd2b839286f27c => 97
	i64 15370334346939861994, ; 530: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 221
	i64 15391712275433856905, ; 531: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 176
	i64 15443314347085689186, ; 532: nl/Microsoft.Maui.Controls.resources => 0xd651ac9394bc7162 => 306
	i64 15474781042002767710, ; 533: hr/Microsoft.Maui.Controls.resources => 0xd6c1775e69862f5e => 298
	i64 15478373401424648762, ; 534: es/Microsoft.Maui.Controls.resources => 0xd6ce3a99c4c55a3a => 293
	i64 15526743539506359484, ; 535: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 134
	i64 15527772828719725935, ; 536: System.Console => 0xd77dbb1e38cd3d6f => 20
	i64 15530465045505749832, ; 537: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 64
	i64 15541854775306130054, ; 538: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 124
	i64 15557562860424774966, ; 539: System.Net.Sockets => 0xd7e790fe7a6dc536 => 74
	i64 15582737692548360875, ; 540: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 245
	i64 15609085926864131306, ; 541: System.dll => 0xd89e9cf3334914ea => 163
	i64 15661133872274321916, ; 542: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 155
	i64 15664356999916475676, ; 543: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 291
	i64 15710114879900314733, ; 544: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 5
	i64 15743187114543869802, ; 545: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 299
	i64 15755368083429170162, ; 546: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 48
	i64 15777549416145007739, ; 547: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 259
	i64 15817206913877585035, ; 548: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 143
	i64 15847085070278954535, ; 549: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 138
	i64 15885744048853936810, ; 550: System.Resources.Writer => 0xdc75800bd0b6eaaa => 99
	i64 15928521404965645318, ; 551: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 182
	i64 15930129725311349754, ; 552: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 279
	i64 15934062614519587357, ; 553: System.Security.Cryptography.OpenSsl => 0xdd2129868f45a21d => 122
	i64 15937190497610202713, ; 554: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 119
	i64 15963349826457351533, ; 555: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 141
	i64 15971679995444160383, ; 556: System.Formats.Tar.dll => 0xdda6ce5592a9677f => 38
	i64 15995174293784908801, ; 557: nb/Microsoft.Maui.Controls.resources => 0xddfa46462d825401 => 305
	i64 16018552496348375205, ; 558: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 67
	i64 16054465462676478687, ; 559: System.Globalization.Extensions => 0xdecceb47319bdadf => 40
	i64 16154507427712707110, ; 560: System => 0xe03056ea4e39aa26 => 163
	i64 16182611612321266217, ; 561: Microsoft.Maui.Maps => 0xe0942f85b2853a29 => 189
	i64 16198848395322856833, ; 562: ms/Microsoft.Maui.Controls.resources => 0xe0cddeca55a01581 => 304
	i64 16219561732052121626, ; 563: System.Net.Security => 0xe1177575db7c781a => 72
	i64 16315482530584035869, ; 564: WindowsBase.dll => 0xe26c3ceb1e8d821d => 164
	i64 16321164108206115771, ; 565: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 178
	i64 16324796876805858114, ; 566: SkiaSharp.dll => 0xe28d5444586b6342 => 190
	i64 16337011941688632206, ; 567: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 126
	i64 16361933716545543812, ; 568: Xamarin.AndroidX.ExifInterface.dll => 0xe3114406a52f1e84 => 231
	i64 16423015068819898779, ; 569: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 284
	i64 16454459195343277943, ; 570: System.Net.NetworkInformation => 0xe459fb756d988f77 => 67
	i64 16491294355724214223, ; 571: zh-HK/Microsoft.Maui.Controls.resources => 0xe4dcd8d787589fcf => 318
	i64 16496768397145114574, ; 572: Mono.Android.Export.dll => 0xe4f04b741db987ce => 168
	i64 16589693266713801121, ; 573: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xe63a6e214f2a71a1 => 244
	i64 16621146507174665210, ; 574: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 218
	i64 16649148416072044166, ; 575: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 188
	i64 16677317093839702854, ; 576: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 251
	i64 16702652415771857902, ; 577: System.ValueTuple => 0xe7cbbde0b0e6d3ee => 150
	i64 16709499819875633724, ; 578: System.IO.Compression.ZipFile => 0xe7e4118e32240a3c => 44
	i64 16737304880976948124, ; 579: ja/Microsoft.Maui.Controls.resources => 0xe846da1c780aeb9c => 302
	i64 16737807731308835127, ; 580: System.Runtime.Intrinsics => 0xe848a3736f733137 => 107
	i64 16755018182064898362, ; 581: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 196
	i64 16758309481308491337, ; 582: System.IO.FileSystem.DriveInfo => 0xe89179af15740e49 => 47
	i64 16762783179241323229, ; 583: System.Reflection.TypeExtensions => 0xe8a15e7d0d927add => 95
	i64 16765015072123548030, ; 584: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 30
	i64 16822611501064131242, ; 585: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 23
	i64 16833383113903931215, ; 586: mscorlib => 0xe99c30c1484d7f4f => 165
	i64 16856067890322379635, ; 587: System.Data.Common.dll => 0xe9ecc87060889373 => 22
	i64 16890310621557459193, ; 588: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 137
	i64 16933958494752847024, ; 589: System.Net.WebProxy.dll => 0xeb018187f0f3b4b0 => 77
	i64 16977952268158210142, ; 590: System.IO.Pipes.AccessControl => 0xeb9dcda2851b905e => 53
	i64 16989020923549080504, ; 591: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xebc52084add25bb8 => 244
	i64 16998075588627545693, ; 592: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 249
	i64 17008137082415910100, ; 593: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 10
	i64 17024911836938395553, ; 594: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 207
	i64 17027804579603049667, ; 595: Microsoft.Maui.Controls.Maps.dll => 0xec4eea0c48026cc3 => 184
	i64 17031351772568316411, ; 596: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 248
	i64 17037200463775726619, ; 597: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 235
	i64 17062143951396181894, ; 598: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 16
	i64 17089008752050867324, ; 599: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 319
	i64 17118171214553292978, ; 600: System.Threading.Channels => 0xed8ff6060fc420b2 => 138
	i64 17187273293601214786, ; 601: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 13
	i64 17201328579425343169, ; 602: System.ComponentModel.EventBasedAsync => 0xeeb76534d96c16c1 => 15
	i64 17202182880784296190, ; 603: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 121
	i64 17230721278011714856, ; 604: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 86
	i64 17234219099804750107, ; 605: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 148
	i64 17260702271250283638, ; 606: System.Data.Common => 0xef8a5543bba6bc76 => 22
	i64 17333249706306540043, ; 607: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 33
	i64 17338386382517543202, ; 608: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 78
	i64 17360349973592121190, ; 609: Xamarin.Google.Crypto.Tink.Android => 0xf0ec5a52686b9f66 => 273
	i64 17438153253682247751, ; 610: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 312
	i64 17470386307322966175, ; 611: System.Threading.Timer => 0xf27347c8d0d5709f => 146
	i64 17482873938501421891, ; 612: fr/Microsoft.Maui.Controls.resources => 0xf29fa538054fcb43 => 295
	i64 17509662556995089465, ; 613: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 79
	i64 17522591619082469157, ; 614: GoogleGson => 0xf32cc03d27a5bf25 => 172
	i64 17590473451926037903, ; 615: Xamarin.Android.Glide => 0xf41dea67fcfda58f => 200
	i64 17627500474728259406, ; 616: System.Globalization => 0xf4a176498a351f4e => 41
	i64 17671790519499593115, ; 617: SkiaSharp.Views.Android => 0xf53ecfd92be3959b => 191
	i64 17685921127322830888, ; 618: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 26
	i64 17702523067201099846, ; 619: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 318
	i64 17704177640604968747, ; 620: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 246
	i64 17710060891934109755, ; 621: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 243
	i64 17712670374920797664, ; 622: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 106
	i64 17777860260071588075, ; 623: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 109
	i64 17838668724098252521, ; 624: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 7
	i64 17891337867145587222, ; 625: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 280
	i64 17928294245072900555, ; 626: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 43
	i64 17969331831154222830, ; 627: Xamarin.GooglePlayServices.Maps => 0xf95fe418471126ee => 278
	i64 17986907704309214542, ; 628: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 277
	i64 17992315986609351877, ; 629: System.Xml.XmlDocument.dll => 0xf9b18c0ffc6eacc5 => 160
	i64 18025913125965088385, ; 630: System.Threading => 0xfa28e87b91334681 => 147
	i64 18099568558057551825, ; 631: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 306
	i64 18116111925905154859, ; 632: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 212
	i64 18121036031235206392, ; 633: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 248
	i64 18146411883821974900, ; 634: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 37
	i64 18146811631844267958, ; 635: System.ComponentModel.EventBasedAsync.dll => 0xfbd66d08820117b6 => 15
	i64 18225059387460068507, ; 636: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 145
	i64 18245806341561545090, ; 637: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 8
	i64 18260797123374478311, ; 638: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 229
	i64 18305135509493619199, ; 639: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 250
	i64 18318849532986632368, ; 640: System.Security.dll => 0xfe39a097c37fa8b0 => 129
	i64 18370042311372477656, ; 641: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 197
	i64 18380184030268848184, ; 642: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 266
	i64 18439108438687598470 ; 643: System.Reflection.Metadata.dll => 0xffe4df6e2ee1c786 => 93
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [644 x i32] [
	i32 228, ; 0
	i32 181, ; 1
	i32 170, ; 2
	i32 187, ; 3
	i32 57, ; 4
	i32 215, ; 5
	i32 150, ; 6
	i32 256, ; 7
	i32 259, ; 8
	i32 222, ; 9
	i32 131, ; 10
	i32 55, ; 11
	i32 258, ; 12
	i32 294, ; 13
	i32 94, ; 14
	i32 189, ; 15
	i32 241, ; 16
	i32 128, ; 17
	i32 276, ; 18
	i32 144, ; 19
	i32 216, ; 20
	i32 18, ; 21
	i32 297, ; 22
	i32 197, ; 23
	i32 227, ; 24
	i32 242, ; 25
	i32 149, ; 26
	i32 103, ; 27
	i32 94, ; 28
	i32 287, ; 29
	i32 271, ; 30
	i32 305, ; 31
	i32 35, ; 32
	i32 196, ; 33
	i32 27, ; 34
	i32 211, ; 35
	i32 249, ; 36
	i32 49, ; 37
	i32 114, ; 38
	i32 69, ; 39
	i32 183, ; 40
	i32 64, ; 41
	i32 169, ; 42
	i32 198, ; 43
	i32 144, ; 44
	i32 303, ; 45
	i32 270, ; 46
	i32 210, ; 47
	i32 245, ; 48
	i32 235, ; 49
	i32 307, ; 50
	i32 39, ; 51
	i32 88, ; 52
	i32 80, ; 53
	i32 65, ; 54
	i32 61, ; 55
	i32 85, ; 56
	i32 209, ; 57
	i32 105, ; 58
	i32 256, ; 59
	i32 101, ; 60
	i32 34, ; 61
	i32 206, ; 62
	i32 258, ; 63
	i32 185, ; 64
	i32 315, ; 65
	i32 118, ; 66
	i32 243, ; 67
	i32 289, ; 68
	i32 307, ; 69
	i32 141, ; 70
	i32 140, ; 71
	i32 283, ; 72
	i32 52, ; 73
	i32 34, ; 74
	i32 140, ; 75
	i32 303, ; 76
	i32 203, ; 77
	i32 213, ; 78
	i32 179, ; 79
	i32 227, ; 80
	i32 8, ; 81
	i32 14, ; 82
	i32 311, ; 83
	i32 255, ; 84
	i32 50, ; 85
	i32 238, ; 86
	i32 135, ; 87
	i32 100, ; 88
	i32 290, ; 89
	i32 220, ; 90
	i32 265, ; 91
	i32 289, ; 92
	i32 115, ; 93
	i32 204, ; 94
	i32 162, ; 95
	i32 165, ; 96
	i32 66, ; 97
	i32 175, ; 98
	i32 79, ; 99
	i32 100, ; 100
	i32 260, ; 101
	i32 116, ; 102
	i32 272, ; 103
	i32 77, ; 104
	i32 271, ; 105
	i32 113, ; 106
	i32 309, ; 107
	i32 120, ; 108
	i32 47, ; 109
	i32 314, ; 110
	i32 127, ; 111
	i32 236, ; 112
	i32 207, ; 113
	i32 81, ; 114
	i32 109, ; 115
	i32 74, ; 116
	i32 286, ; 117
	i32 277, ; 118
	i32 192, ; 119
	i32 187, ; 120
	i32 52, ; 121
	i32 262, ; 122
	i32 173, ; 123
	i32 68, ; 124
	i32 261, ; 125
	i32 82, ; 126
	i32 171, ; 127
	i32 115, ; 128
	i32 174, ; 129
	i32 155, ; 130
	i32 173, ; 131
	i32 201, ; 132
	i32 166, ; 133
	i32 254, ; 134
	i32 228, ; 135
	i32 177, ; 136
	i32 31, ; 137
	i32 185, ; 138
	i32 121, ; 139
	i32 71, ; 140
	i32 61, ; 141
	i32 160, ; 142
	i32 112, ; 143
	i32 87, ; 144
	i32 182, ; 145
	i32 104, ; 146
	i32 18, ; 147
	i32 145, ; 148
	i32 117, ; 149
	i32 57, ; 150
	i32 222, ; 151
	i32 17, ; 152
	i32 51, ; 153
	i32 279, ; 154
	i32 91, ; 155
	i32 195, ; 156
	i32 317, ; 157
	i32 54, ; 158
	i32 128, ; 159
	i32 151, ; 160
	i32 40, ; 161
	i32 91, ; 162
	i32 266, ; 163
	i32 49, ; 164
	i32 287, ; 165
	i32 161, ; 166
	i32 13, ; 167
	i32 240, ; 168
	i32 204, ; 169
	i32 261, ; 170
	i32 35, ; 171
	i32 66, ; 172
	i32 294, ; 173
	i32 108, ; 174
	i32 205, ; 175
	i32 98, ; 176
	i32 98, ; 177
	i32 11, ; 178
	i32 11, ; 179
	i32 247, ; 180
	i32 25, ; 181
	i32 127, ; 182
	i32 75, ; 183
	i32 239, ; 184
	i32 108, ; 185
	i32 265, ; 186
	i32 263, ; 187
	i32 105, ; 188
	i32 2, ; 189
	i32 26, ; 190
	i32 218, ; 191
	i32 156, ; 192
	i32 21, ; 193
	i32 48, ; 194
	i32 42, ; 195
	i32 125, ; 196
	i32 184, ; 197
	i32 208, ; 198
	i32 58, ; 199
	i32 118, ; 200
	i32 268, ; 201
	i32 231, ; 202
	i32 217, ; 203
	i32 3, ; 204
	i32 237, ; 205
	i32 308, ; 206
	i32 257, ; 207
	i32 37, ; 208
	i32 123, ; 209
	i32 310, ; 210
	i32 257, ; 211
	i32 195, ; 212
	i32 136, ; 213
	i32 148, ; 214
	i32 84, ; 215
	i32 89, ; 216
	i32 241, ; 217
	i32 321, ; 218
	i32 238, ; 219
	i32 213, ; 220
	i32 224, ; 221
	i32 269, ; 222
	i32 180, ; 223
	i32 274, ; 224
	i32 239, ; 225
	i32 132, ; 226
	i32 190, ; 227
	i32 95, ; 228
	i32 316, ; 229
	i32 3, ; 230
	i32 104, ; 231
	i32 309, ; 232
	i32 32, ; 233
	i32 153, ; 234
	i32 157, ; 235
	i32 154, ; 236
	i32 81, ; 237
	i32 233, ; 238
	i32 142, ; 239
	i32 86, ; 240
	i32 19, ; 241
	i32 234, ; 242
	i32 50, ; 243
	i32 278, ; 244
	i32 203, ; 245
	i32 313, ; 246
	i32 60, ; 247
	i32 53, ; 248
	i32 193, ; 249
	i32 4, ; 250
	i32 96, ; 251
	i32 202, ; 252
	i32 17, ; 253
	i32 301, ; 254
	i32 154, ; 255
	i32 83, ; 256
	i32 0, ; 257
	i32 28, ; 258
	i32 44, ; 259
	i32 310, ; 260
	i32 63, ; 261
	i32 65, ; 262
	i32 304, ; 263
	i32 171, ; 264
	i32 192, ; 265
	i32 242, ; 266
	i32 1, ; 267
	i32 281, ; 268
	i32 46, ; 269
	i32 24, ; 270
	i32 210, ; 271
	i32 191, ; 272
	i32 164, ; 273
	i32 107, ; 274
	i32 12, ; 275
	i32 236, ; 276
	i32 62, ; 277
	i32 199, ; 278
	i32 23, ; 279
	i32 92, ; 280
	i32 167, ; 281
	i32 12, ; 282
	i32 285, ; 283
	i32 188, ; 284
	i32 28, ; 285
	i32 102, ; 286
	i32 14, ; 287
	i32 125, ; 288
	i32 219, ; 289
	i32 251, ; 290
	i32 90, ; 291
	i32 240, ; 292
	i32 292, ; 293
	i32 9, ; 294
	i32 315, ; 295
	i32 85, ; 296
	i32 312, ; 297
	i32 230, ; 298
	i32 263, ; 299
	i32 308, ; 300
	i32 70, ; 301
	i32 167, ; 302
	i32 1, ; 303
	i32 250, ; 304
	i32 5, ; 305
	i32 43, ; 306
	i32 199, ; 307
	i32 282, ; 308
	i32 296, ; 309
	i32 157, ; 310
	i32 253, ; 311
	i32 111, ; 312
	i32 120, ; 313
	i32 268, ; 314
	i32 209, ; 315
	i32 158, ; 316
	i32 130, ; 317
	i32 273, ; 318
	i32 56, ; 319
	i32 137, ; 320
	i32 82, ; 321
	i32 29, ; 322
	i32 220, ; 323
	i32 10, ; 324
	i32 270, ; 325
	i32 170, ; 326
	i32 217, ; 327
	i32 149, ; 328
	i32 93, ; 329
	i32 276, ; 330
	i32 297, ; 331
	i32 230, ; 332
	i32 59, ; 333
	i32 186, ; 334
	i32 156, ; 335
	i32 293, ; 336
	i32 179, ; 337
	i32 63, ; 338
	i32 87, ; 339
	i32 78, ; 340
	i32 46, ; 341
	i32 183, ; 342
	i32 142, ; 343
	i32 283, ; 344
	i32 313, ; 345
	i32 224, ; 346
	i32 73, ; 347
	i32 90, ; 348
	i32 280, ; 349
	i32 134, ; 350
	i32 89, ; 351
	i32 262, ; 352
	i32 286, ; 353
	i32 221, ; 354
	i32 111, ; 355
	i32 41, ; 356
	i32 158, ; 357
	i32 4, ; 358
	i32 102, ; 359
	i32 69, ; 360
	i32 59, ; 361
	i32 38, ; 362
	i32 211, ; 363
	i32 152, ; 364
	i32 55, ; 365
	i32 33, ; 366
	i32 320, ; 367
	i32 178, ; 368
	i32 186, ; 369
	i32 208, ; 370
	i32 21, ; 371
	i32 162, ; 372
	i32 274, ; 373
	i32 317, ; 374
	i32 272, ; 375
	i32 319, ; 376
	i32 267, ; 377
	i32 139, ; 378
	i32 180, ; 379
	i32 88, ; 380
	i32 146, ; 381
	i32 223, ; 382
	i32 161, ; 383
	i32 252, ; 384
	i32 6, ; 385
	i32 168, ; 386
	i32 30, ; 387
	i32 106, ; 388
	i32 233, ; 389
	i32 267, ; 390
	i32 177, ; 391
	i32 206, ; 392
	i32 260, ; 393
	i32 166, ; 394
	i32 234, ; 395
	i32 139, ; 396
	i32 296, ; 397
	i32 58, ; 398
	i32 194, ; 399
	i32 143, ; 400
	i32 194, ; 401
	i32 299, ; 402
	i32 80, ; 403
	i32 73, ; 404
	i32 129, ; 405
	i32 25, ; 406
	i32 7, ; 407
	i32 92, ; 408
	i32 300, ; 409
	i32 264, ; 410
	i32 136, ; 411
	i32 200, ; 412
	i32 112, ; 413
	i32 9, ; 414
	i32 198, ; 415
	i32 103, ; 416
	i32 19, ; 417
	i32 232, ; 418
	i32 246, ; 419
	i32 321, ; 420
	i32 226, ; 421
	i32 32, ; 422
	i32 311, ; 423
	i32 214, ; 424
	i32 45, ; 425
	i32 0, ; 426
	i32 301, ; 427
	i32 29, ; 428
	i32 215, ; 429
	i32 56, ; 430
	i32 133, ; 431
	i32 113, ; 432
	i32 269, ; 433
	i32 314, ; 434
	i32 284, ; 435
	i32 54, ; 436
	i32 181, ; 437
	i32 6, ; 438
	i32 76, ; 439
	i32 225, ; 440
	i32 110, ; 441
	i32 229, ; 442
	i32 101, ; 443
	i32 288, ; 444
	i32 302, ; 445
	i32 288, ; 446
	i32 169, ; 447
	i32 114, ; 448
	i32 264, ; 449
	i32 219, ; 450
	i32 75, ; 451
	i32 275, ; 452
	i32 84, ; 453
	i32 281, ; 454
	i32 316, ; 455
	i32 212, ; 456
	i32 300, ; 457
	i32 254, ; 458
	i32 159, ; 459
	i32 2, ; 460
	i32 225, ; 461
	i32 24, ; 462
	i32 205, ; 463
	i32 31, ; 464
	i32 116, ; 465
	i32 36, ; 466
	i32 16, ; 467
	i32 295, ; 468
	i32 51, ; 469
	i32 298, ; 470
	i32 282, ; 471
	i32 20, ; 472
	i32 122, ; 473
	i32 153, ; 474
	i32 232, ; 475
	i32 130, ; 476
	i32 290, ; 477
	i32 214, ; 478
	i32 147, ; 479
	i32 201, ; 480
	i32 119, ; 481
	i32 27, ; 482
	i32 131, ; 483
	i32 99, ; 484
	i32 133, ; 485
	i32 252, ; 486
	i32 152, ; 487
	i32 96, ; 488
	i32 124, ; 489
	i32 202, ; 490
	i32 68, ; 491
	i32 71, ; 492
	i32 237, ; 493
	i32 255, ; 494
	i32 292, ; 495
	i32 135, ; 496
	i32 193, ; 497
	i32 123, ; 498
	i32 70, ; 499
	i32 110, ; 500
	i32 247, ; 501
	i32 175, ; 502
	i32 151, ; 503
	i32 275, ; 504
	i32 117, ; 505
	i32 223, ; 506
	i32 172, ; 507
	i32 320, ; 508
	i32 126, ; 509
	i32 132, ; 510
	i32 176, ; 511
	i32 76, ; 512
	i32 45, ; 513
	i32 226, ; 514
	i32 72, ; 515
	i32 62, ; 516
	i32 97, ; 517
	i32 83, ; 518
	i32 42, ; 519
	i32 60, ; 520
	i32 253, ; 521
	i32 174, ; 522
	i32 36, ; 523
	i32 39, ; 524
	i32 216, ; 525
	i32 291, ; 526
	i32 285, ; 527
	i32 159, ; 528
	i32 97, ; 529
	i32 221, ; 530
	i32 176, ; 531
	i32 306, ; 532
	i32 298, ; 533
	i32 293, ; 534
	i32 134, ; 535
	i32 20, ; 536
	i32 64, ; 537
	i32 124, ; 538
	i32 74, ; 539
	i32 245, ; 540
	i32 163, ; 541
	i32 155, ; 542
	i32 291, ; 543
	i32 5, ; 544
	i32 299, ; 545
	i32 48, ; 546
	i32 259, ; 547
	i32 143, ; 548
	i32 138, ; 549
	i32 99, ; 550
	i32 182, ; 551
	i32 279, ; 552
	i32 122, ; 553
	i32 119, ; 554
	i32 141, ; 555
	i32 38, ; 556
	i32 305, ; 557
	i32 67, ; 558
	i32 40, ; 559
	i32 163, ; 560
	i32 189, ; 561
	i32 304, ; 562
	i32 72, ; 563
	i32 164, ; 564
	i32 178, ; 565
	i32 190, ; 566
	i32 126, ; 567
	i32 231, ; 568
	i32 284, ; 569
	i32 67, ; 570
	i32 318, ; 571
	i32 168, ; 572
	i32 244, ; 573
	i32 218, ; 574
	i32 188, ; 575
	i32 251, ; 576
	i32 150, ; 577
	i32 44, ; 578
	i32 302, ; 579
	i32 107, ; 580
	i32 196, ; 581
	i32 47, ; 582
	i32 95, ; 583
	i32 30, ; 584
	i32 23, ; 585
	i32 165, ; 586
	i32 22, ; 587
	i32 137, ; 588
	i32 77, ; 589
	i32 53, ; 590
	i32 244, ; 591
	i32 249, ; 592
	i32 10, ; 593
	i32 207, ; 594
	i32 184, ; 595
	i32 248, ; 596
	i32 235, ; 597
	i32 16, ; 598
	i32 319, ; 599
	i32 138, ; 600
	i32 13, ; 601
	i32 15, ; 602
	i32 121, ; 603
	i32 86, ; 604
	i32 148, ; 605
	i32 22, ; 606
	i32 33, ; 607
	i32 78, ; 608
	i32 273, ; 609
	i32 312, ; 610
	i32 146, ; 611
	i32 295, ; 612
	i32 79, ; 613
	i32 172, ; 614
	i32 200, ; 615
	i32 41, ; 616
	i32 191, ; 617
	i32 26, ; 618
	i32 318, ; 619
	i32 246, ; 620
	i32 243, ; 621
	i32 106, ; 622
	i32 109, ; 623
	i32 7, ; 624
	i32 280, ; 625
	i32 43, ; 626
	i32 278, ; 627
	i32 277, ; 628
	i32 160, ; 629
	i32 147, ; 630
	i32 306, ; 631
	i32 212, ; 632
	i32 248, ; 633
	i32 37, ; 634
	i32 15, ; 635
	i32 145, ; 636
	i32 8, ; 637
	i32 229, ; 638
	i32 250, ; 639
	i32 129, ; 640
	i32 197, ; 641
	i32 266, ; 642
	i32 93 ; 643
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ 82d8938cf80f6d5fa6c28529ddfbdb753d805ab4"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}

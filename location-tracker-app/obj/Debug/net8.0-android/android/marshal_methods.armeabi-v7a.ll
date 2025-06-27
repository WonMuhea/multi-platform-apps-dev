; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [325 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [644 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 67
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 66
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 107
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 241
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 275
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 47
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 79
	i32 42639949, ; 7: System.Threading.Thread => 0x28aa24d => 144
	i32 48181763, ; 8: LocationTrackerApp => 0x2df3203 => 0
	i32 53857724, ; 9: ca/Microsoft.Maui.Controls.resources => 0x335cdbc => 288
	i32 66541672, ; 10: System.Diagnostics.StackTrace => 0x3f75868 => 29
	i32 68219467, ; 11: System.Security.Cryptography.Primitives => 0x410f24b => 123
	i32 72070932, ; 12: Microsoft.Maui.Graphics.dll => 0x44bb714 => 188
	i32 82292897, ; 13: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 101
	i32 101534019, ; 14: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 259
	i32 113429830, ; 15: zh-HK/Microsoft.Maui.Controls.resources => 0x6c2cd46 => 318
	i32 117431740, ; 16: System.Runtime.InteropServices => 0x6ffddbc => 106
	i32 120558881, ; 17: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 259
	i32 122350210, ; 18: System.Threading.Channels.dll => 0x74aea82 => 138
	i32 134690465, ; 19: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 283
	i32 142721839, ; 20: System.Net.WebHeaderCollection => 0x881c32f => 76
	i32 149972175, ; 21: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 123
	i32 159306688, ; 22: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 23: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 215
	i32 176265551, ; 24: System.ServiceProcess => 0xa81994f => 131
	i32 182336117, ; 25: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 261
	i32 184328833, ; 26: System.ValueTuple.dll => 0xafca281 => 150
	i32 195452805, ; 27: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 317
	i32 199333315, ; 28: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 318
	i32 205061960, ; 29: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 30: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 213
	i32 220171995, ; 31: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 32: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 235
	i32 230752869, ; 33: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 34: System.Linq.Parallel => 0xdcb05c4 => 58
	i32 231814094, ; 35: System.Globalization => 0xdd133ce => 41
	i32 246610117, ; 36: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 90
	i32 261689757, ; 37: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 218
	i32 276479776, ; 38: System.Threading.Timer.dll => 0x107abf20 => 146
	i32 278686392, ; 39: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 237
	i32 280482487, ; 40: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 234
	i32 280992041, ; 41: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 289
	i32 291076382, ; 42: System.IO.Pipes.AccessControl.dll => 0x1159791e => 53
	i32 298918909, ; 43: System.Net.Ping.dll => 0x11d123fd => 68
	i32 318968648, ; 44: Xamarin.AndroidX.Activity.dll => 0x13031348 => 204
	i32 321597661, ; 45: System.Numerics => 0x132b30dd => 82
	i32 336156722, ; 46: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 302
	i32 342366114, ; 47: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 236
	i32 347068432, ; 48: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 197
	i32 356389973, ; 49: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 301
	i32 357576608, ; 50: cs/Microsoft.Maui.Controls.resources => 0x15502fa0 => 289
	i32 360082299, ; 51: System.ServiceModel.Web => 0x15766b7b => 130
	i32 367780167, ; 52: System.IO.Pipes => 0x15ebe147 => 54
	i32 374914964, ; 53: System.Transactions.Local => 0x1658bf94 => 148
	i32 375677976, ; 54: System.Net.ServicePoint.dll => 0x16646418 => 73
	i32 379916513, ; 55: System.Threading.Thread.dll => 0x16a510e1 => 144
	i32 385762202, ; 56: System.Memory.dll => 0x16fe439a => 61
	i32 392610295, ; 57: System.Threading.ThreadPool.dll => 0x1766c1f7 => 145
	i32 395744057, ; 58: _Microsoft.Android.Resource.Designer => 0x17969339 => 321
	i32 403441872, ; 59: WindowsBase => 0x180c08d0 => 164
	i32 435591531, ; 60: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 313
	i32 441335492, ; 61: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 219
	i32 442565967, ; 62: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 63: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 232
	i32 451504562, ; 64: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 124
	i32 456227837, ; 65: System.Web.HttpUtility.dll => 0x1b317bfd => 151
	i32 459347974, ; 66: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 112
	i32 465846621, ; 67: mscorlib => 0x1bc4415d => 165
	i32 469710990, ; 68: System.dll => 0x1bff388e => 163
	i32 476646585, ; 69: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 234
	i32 486930444, ; 70: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 247
	i32 498788369, ; 71: System.ObjectModel => 0x1dbae811 => 83
	i32 500358224, ; 72: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 300
	i32 503918385, ; 73: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 294
	i32 513247710, ; 74: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 181
	i32 525008092, ; 75: SkiaSharp.dll => 0x1f4afcdc => 190
	i32 526420162, ; 76: System.Transactions.dll => 0x1f6088c2 => 149
	i32 527168573, ; 77: hi/Microsoft.Maui.Controls.resources => 0x1f6bf43d => 297
	i32 527452488, ; 78: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 283
	i32 530272170, ; 79: System.Linq.Queryable => 0x1f9b4faa => 59
	i32 539058512, ; 80: Microsoft.Extensions.Logging => 0x20216150 => 177
	i32 540030774, ; 81: System.IO.FileSystem.dll => 0x20303736 => 50
	i32 545304856, ; 82: System.Runtime.Extensions => 0x2080b118 => 102
	i32 546455878, ; 83: System.Runtime.Serialization.Xml => 0x20924146 => 113
	i32 549171840, ; 84: System.Globalization.Calendars => 0x20bbb280 => 39
	i32 557405415, ; 85: Jsr305Binding => 0x213954e7 => 272
	i32 569601784, ; 86: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 270
	i32 577335427, ; 87: System.Security.Cryptography.Cng => 0x22697083 => 119
	i32 592146354, ; 88: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 308
	i32 601371474, ; 89: System.IO.IsolatedStorage.dll => 0x23d83352 => 51
	i32 605376203, ; 90: System.IO.Compression.FileSystem => 0x24154ecb => 43
	i32 613668793, ; 91: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 118
	i32 627609679, ; 92: Xamarin.AndroidX.CustomView => 0x2568904f => 224
	i32 639843206, ; 93: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 230
	i32 643868501, ; 94: System.Net => 0x2660a755 => 80
	i32 662205335, ; 95: System.Text.Encodings.Web.dll => 0x27787397 => 135
	i32 663517072, ; 96: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 266
	i32 666292255, ; 97: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 211
	i32 672442732, ; 98: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 99: System.Net.Security => 0x28bdabca => 72
	i32 688181140, ; 100: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 288
	i32 690569205, ; 101: System.Xml.Linq.dll => 0x29293ff5 => 154
	i32 691348768, ; 102: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 285
	i32 693804605, ; 103: System.Windows => 0x295a9e3d => 153
	i32 699345723, ; 104: System.Reflection.Emit => 0x29af2b3b => 91
	i32 700284507, ; 105: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 280
	i32 700358131, ; 106: System.IO.Compression.ZipFile => 0x29be9df3 => 44
	i32 706645707, ; 107: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 303
	i32 709557578, ; 108: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 291
	i32 720511267, ; 109: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 284
	i32 722857257, ; 110: System.Runtime.Loader.dll => 0x2b15ed29 => 108
	i32 735137430, ; 111: System.Security.SecureString.dll => 0x2bd14e96 => 128
	i32 748832960, ; 112: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 195
	i32 752232764, ; 113: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 114: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 201
	i32 759454413, ; 115: System.Net.Requests => 0x2d445acd => 71
	i32 762598435, ; 116: System.IO.Pipes.dll => 0x2d745423 => 54
	i32 775507847, ; 117: System.IO.Compression => 0x2e394f87 => 45
	i32 789151979, ; 118: Microsoft.Extensions.Options => 0x2f0980eb => 180
	i32 790371945, ; 119: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 225
	i32 804715423, ; 120: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 121: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 239
	i32 823281589, ; 122: System.Private.Uri.dll => 0x311247b5 => 85
	i32 830298997, ; 123: System.IO.Compression.Brotli => 0x317d5b75 => 42
	i32 832635846, ; 124: System.Xml.XPath.dll => 0x31a103c6 => 159
	i32 834051424, ; 125: System.Net.Quic => 0x31b69d60 => 70
	i32 843511501, ; 126: Xamarin.AndroidX.Print => 0x3246f6cd => 252
	i32 870878177, ; 127: ar/Microsoft.Maui.Controls.resources => 0x33e88be1 => 287
	i32 873119928, ; 128: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 129: System.Globalization.dll => 0x34505120 => 41
	i32 878954865, ; 130: System.Net.Http.Json => 0x3463c971 => 62
	i32 904024072, ; 131: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 908888060, ; 132: Microsoft.Maui.Maps => 0x362c87fc => 189
	i32 911108515, ; 133: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 52
	i32 926902833, ; 134: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 315
	i32 928116545, ; 135: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 275
	i32 952186615, ; 136: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 104
	i32 956575887, ; 137: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 284
	i32 966729478, ; 138: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 273
	i32 967690846, ; 139: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 236
	i32 975236339, ; 140: System.Diagnostics.Tracing => 0x3a20ecf3 => 33
	i32 975874589, ; 141: System.Xml.XDocument => 0x3a2aaa1d => 157
	i32 986514023, ; 142: System.Private.DataContractSerialization.dll => 0x3acd0267 => 84
	i32 987214855, ; 143: System.Diagnostics.Tools => 0x3ad7b407 => 31
	i32 992768348, ; 144: System.Collections.dll => 0x3b2c715c => 12
	i32 993161700, ; 145: zh-Hans/Microsoft.Maui.Controls.resources => 0x3b3271e4 => 319
	i32 994442037, ; 146: System.IO.FileSystem => 0x3b45fb35 => 50
	i32 994547685, ; 147: es/Microsoft.Maui.Controls.resources => 0x3b4797e5 => 293
	i32 1001831731, ; 148: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 55
	i32 1012816738, ; 149: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 256
	i32 1019214401, ; 150: System.Drawing => 0x3cbffa41 => 35
	i32 1028951442, ; 151: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 176
	i32 1029334545, ; 152: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 290
	i32 1031528504, ; 153: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 274
	i32 1035644815, ; 154: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 209
	i32 1036536393, ; 155: System.Drawing.Primitives.dll => 0x3dc84a49 => 34
	i32 1044663988, ; 156: System.Linq.Expressions.dll => 0x3e444eb4 => 57
	i32 1052210849, ; 157: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 243
	i32 1067306892, ; 158: GoogleGson => 0x3f9dcf8c => 172
	i32 1082857460, ; 159: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 160: Xamarin.Kotlin.StdLib => 0x409e66d8 => 281
	i32 1098259244, ; 161: System => 0x41761b2c => 163
	i32 1121599056, ; 162: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 242
	i32 1127624469, ; 163: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 179
	i32 1149092582, ; 164: Xamarin.AndroidX.Window => 0x447dc2e6 => 269
	i32 1170634674, ; 165: System.Web.dll => 0x45c677b2 => 152
	i32 1175144683, ; 166: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 265
	i32 1178241025, ; 167: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 250
	i32 1178797549, ; 168: fi/Microsoft.Maui.Controls.resources => 0x464305ed => 294
	i32 1203215381, ; 169: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 307
	i32 1204270330, ; 170: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 211
	i32 1208641965, ; 171: System.Diagnostics.Process => 0x480a69ad => 28
	i32 1219128291, ; 172: System.IO.IsolatedStorage => 0x48aa6be3 => 51
	i32 1225632347, ; 173: LocationTrackerApp.dll => 0x490daa5b => 0
	i32 1234928153, ; 174: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 305
	i32 1243150071, ; 175: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 270
	i32 1253011324, ; 176: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1264511973, ; 177: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 260
	i32 1267360935, ; 178: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 264
	i32 1273260888, ; 179: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 216
	i32 1275534314, ; 180: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 285
	i32 1278448581, ; 181: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 208
	i32 1292207520, ; 182: SQLitePCLRaw.core.dll => 0x4d0585a0 => 196
	i32 1293217323, ; 183: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 227
	i32 1309188875, ; 184: System.Private.DataContractSerialization => 0x4e08a30b => 84
	i32 1322716291, ; 185: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 269
	i32 1324164729, ; 186: System.Linq => 0x4eed2679 => 60
	i32 1335329327, ; 187: System.Runtime.Serialization.Json.dll => 0x4f97822f => 111
	i32 1364015309, ; 188: System.IO => 0x514d38cd => 56
	i32 1376866003, ; 189: Xamarin.AndroidX.SavedState => 0x52114ed3 => 256
	i32 1379779777, ; 190: System.Resources.ResourceManager => 0x523dc4c1 => 98
	i32 1402170036, ; 191: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 192: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 220
	i32 1408764838, ; 193: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 110
	i32 1411638395, ; 194: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 100
	i32 1422545099, ; 195: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 101
	i32 1434145427, ; 196: System.Runtime.Handles => 0x557b5293 => 103
	i32 1435222561, ; 197: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 273
	i32 1439761251, ; 198: System.Net.Quic.dll => 0x55d10363 => 70
	i32 1452070440, ; 199: System.Formats.Asn1.dll => 0x568cd628 => 37
	i32 1453312822, ; 200: System.Diagnostics.Tools.dll => 0x569fcb36 => 31
	i32 1457743152, ; 201: System.Runtime.Extensions.dll => 0x56e36530 => 102
	i32 1458022317, ; 202: System.Net.Security.dll => 0x56e7a7ad => 72
	i32 1461234159, ; 203: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 204: System.Security.Cryptography.OpenSsl => 0x57201017 => 122
	i32 1462112819, ; 205: System.IO.Compression.dll => 0x57261233 => 45
	i32 1469204771, ; 206: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 210
	i32 1470490898, ; 207: Microsoft.Extensions.Primitives => 0x57a5e912 => 181
	i32 1479771757, ; 208: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 209: System.IO.Compression.Brotli.dll => 0x583e844f => 42
	i32 1487239319, ; 210: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 211: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 257
	i32 1493001747, ; 212: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 297
	i32 1514721132, ; 213: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 292
	i32 1536373174, ; 214: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 30
	i32 1543031311, ; 215: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 137
	i32 1543355203, ; 216: System.Reflection.Emit.dll => 0x5bfdbb43 => 91
	i32 1550322496, ; 217: System.Reflection.Extensions.dll => 0x5c680b40 => 92
	i32 1551623176, ; 218: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 312
	i32 1554762148, ; 219: fr/Microsoft.Maui.Controls.resources => 0x5cabc9a4 => 295
	i32 1565862583, ; 220: System.IO.FileSystem.Primitives => 0x5d552ab7 => 48
	i32 1566207040, ; 221: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 140
	i32 1573704789, ; 222: System.Runtime.Serialization.Json => 0x5dccd455 => 111
	i32 1580037396, ; 223: System.Threading.Overlapped => 0x5e2d7514 => 139
	i32 1580413037, ; 224: sv/Microsoft.Maui.Controls.resources => 0x5e33306d => 313
	i32 1582372066, ; 225: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 226
	i32 1591080825, ; 226: zh-Hant/Microsoft.Maui.Controls.resources => 0x5ed5f779 => 320
	i32 1592978981, ; 227: System.Runtime.Serialization.dll => 0x5ef2ee25 => 114
	i32 1597949149, ; 228: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 274
	i32 1601112923, ; 229: System.Xml.Serialization => 0x5f6f0b5b => 156
	i32 1604827217, ; 230: System.Net.WebClient => 0x5fa7b851 => 75
	i32 1618516317, ; 231: System.Net.WebSockets.Client.dll => 0x6078995d => 78
	i32 1622152042, ; 232: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 246
	i32 1622358360, ; 233: System.Dynamic.Runtime => 0x60b33958 => 36
	i32 1623212457, ; 234: SkiaSharp.Views.Maui.Controls => 0x60c041a9 => 192
	i32 1624863272, ; 235: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 268
	i32 1635184631, ; 236: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 230
	i32 1636350590, ; 237: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 223
	i32 1639515021, ; 238: System.Net.Http.dll => 0x61b9038d => 63
	i32 1639986890, ; 239: System.Text.RegularExpressions => 0x61c036ca => 137
	i32 1641389582, ; 240: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 241: System.Runtime => 0x62c6282e => 115
	i32 1658241508, ; 242: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 262
	i32 1658251792, ; 243: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 271
	i32 1670060433, ; 244: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 218
	i32 1675553242, ; 245: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 47
	i32 1677501392, ; 246: System.Net.Primitives.dll => 0x63fca3d0 => 69
	i32 1678508291, ; 247: System.Net.WebSockets => 0x640c0103 => 79
	i32 1679769178, ; 248: System.Security.Cryptography => 0x641f3e5a => 125
	i32 1691477237, ; 249: System.Reflection.Metadata => 0x64d1e4f5 => 93
	i32 1696967625, ; 250: System.Security.Cryptography.Csp => 0x6525abc9 => 120
	i32 1698840827, ; 251: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 282
	i32 1701541528, ; 252: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1711441057, ; 253: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 197
	i32 1720223769, ; 254: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 239
	i32 1726116996, ; 255: System.Reflection.dll => 0x66e27484 => 96
	i32 1728033016, ; 256: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 27
	i32 1729485958, ; 257: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 214
	i32 1736233607, ; 258: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 310
	i32 1744735666, ; 259: System.Transactions.Local.dll => 0x67fe8db2 => 148
	i32 1746316138, ; 260: Mono.Android.Export => 0x6816ab6a => 168
	i32 1750313021, ; 261: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 262: System.Resources.Reader.dll => 0x68cc9d1e => 97
	i32 1763938596, ; 263: System.Diagnostics.TraceSource.dll => 0x69239124 => 32
	i32 1765942094, ; 264: System.Reflection.Extensions => 0x6942234e => 92
	i32 1766324549, ; 265: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 261
	i32 1770582343, ; 266: Microsoft.Extensions.Logging.dll => 0x6988f147 => 177
	i32 1776026572, ; 267: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 268: System.Globalization.Extensions.dll => 0x69ec0683 => 40
	i32 1780572499, ; 269: Mono.Android.Runtime.dll => 0x6a216153 => 169
	i32 1788241197, ; 270: Xamarin.AndroidX.Fragment => 0x6a96652d => 232
	i32 1808609942, ; 271: Xamarin.AndroidX.Loader => 0x6bcd3296 => 246
	i32 1809966115, ; 272: nb/Microsoft.Maui.Controls.resources => 0x6be1e423 => 305
	i32 1813058853, ; 273: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 281
	i32 1813201214, ; 274: Xamarin.Google.Android.Material => 0x6c13413e => 271
	i32 1818569960, ; 275: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 251
	i32 1818787751, ; 276: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1821794637, ; 277: hu/Microsoft.Maui.Controls.resources => 0x6c96614d => 299
	i32 1824175904, ; 278: System.Text.Encoding.Extensions => 0x6cbab720 => 133
	i32 1824722060, ; 279: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 110
	i32 1828688058, ; 280: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 178
	i32 1842015223, ; 281: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 316
	i32 1847515442, ; 282: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 201
	i32 1858542181, ; 283: System.Linq.Expressions => 0x6ec71a65 => 57
	i32 1870277092, ; 284: System.Reflection.Primitives => 0x6f7a29e4 => 94
	i32 1879696579, ; 285: System.Formats.Tar.dll => 0x7009e4c3 => 38
	i32 1885316902, ; 286: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 212
	i32 1888955245, ; 287: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 288: System.Reflection.Metadata.dll => 0x70a66bdd => 93
	i32 1898237753, ; 289: System.Reflection.DispatchProxy => 0x7124cf39 => 88
	i32 1900610850, ; 290: System.Resources.ResourceManager.dll => 0x71490522 => 98
	i32 1908813208, ; 291: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 277
	i32 1910275211, ; 292: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 293: System.Private.Xml.Linq => 0x739bd4a8 => 86
	i32 1956758971, ; 294: System.Resources.Writer => 0x74a1c5bb => 99
	i32 1960264639, ; 295: ja/Microsoft.Maui.Controls.resources => 0x74d743bf => 302
	i32 1961813231, ; 296: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 258
	i32 1968388702, ; 297: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 173
	i32 1983156543, ; 298: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 282
	i32 1985761444, ; 299: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 203
	i32 2011961780, ; 300: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2014344398, ; 301: hr/Microsoft.Maui.Controls.resources => 0x781074ce => 298
	i32 2019465201, ; 302: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 243
	i32 2025202353, ; 303: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 287
	i32 2031763787, ; 304: Xamarin.Android.Glide => 0x791a414b => 200
	i32 2043674646, ; 305: it/Microsoft.Maui.Controls.resources => 0x79d00016 => 301
	i32 2045470958, ; 306: System.Private.Xml => 0x79eb68ee => 87
	i32 2055257422, ; 307: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 238
	i32 2060060697, ; 308: System.Windows.dll => 0x7aca0819 => 153
	i32 2070888862, ; 309: System.Diagnostics.TraceSource => 0x7b6f419e => 32
	i32 2079903147, ; 310: System.Runtime.dll => 0x7bf8cdab => 115
	i32 2090596640, ; 311: System.Numerics.Vectors => 0x7c9bf920 => 81
	i32 2103459038, ; 312: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 198
	i32 2127167465, ; 313: System.Console => 0x7ec9ffe9 => 20
	i32 2129483829, ; 314: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 276
	i32 2142473426, ; 315: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 316: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 161
	i32 2146852085, ; 317: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2150663486, ; 318: ko/Microsoft.Maui.Controls.resources => 0x8030853e => 303
	i32 2159891885, ; 319: Microsoft.Maui => 0x80bd55ad => 186
	i32 2165051842, ; 320: ro/Microsoft.Maui.Controls.resources => 0x810c11c2 => 310
	i32 2181898931, ; 321: Microsoft.Extensions.Options.dll => 0x820d22b3 => 180
	i32 2192057212, ; 322: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 178
	i32 2193016926, ; 323: System.ObjectModel.dll => 0x82b6c85e => 83
	i32 2201107256, ; 324: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 286
	i32 2201231467, ; 325: System.Net.Http => 0x8334206b => 63
	i32 2217644978, ; 326: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 265
	i32 2222056684, ; 327: System.Threading.Tasks.Parallel => 0x8471e4ec => 142
	i32 2244775296, ; 328: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 247
	i32 2252106437, ; 329: System.Xml.Serialization.dll => 0x863c6ac5 => 156
	i32 2256313426, ; 330: System.Globalization.Extensions => 0x867c9c52 => 40
	i32 2265110946, ; 331: System.Security.AccessControl.dll => 0x8702d9a2 => 116
	i32 2266799131, ; 332: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 174
	i32 2267999099, ; 333: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 202
	i32 2270573516, ; 334: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 295
	i32 2279755925, ; 335: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 254
	i32 2289298199, ; 336: th/Microsoft.Maui.Controls.resources => 0x8873eb17 => 314
	i32 2293034957, ; 337: System.ServiceModel.Web.dll => 0x88acefcd => 130
	i32 2295906218, ; 338: System.Net.Sockets => 0x88d8bfaa => 74
	i32 2298471582, ; 339: System.Net.Mail => 0x88ffe49e => 65
	i32 2303073227, ; 340: Microsoft.Maui.Controls.Maps.dll => 0x89461bcb => 184
	i32 2305521784, ; 341: System.Private.CoreLib.dll => 0x896b7878 => 171
	i32 2315684594, ; 342: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 206
	i32 2320631194, ; 343: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 142
	i32 2340441535, ; 344: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 105
	i32 2344264397, ; 345: System.ValueTuple => 0x8bbaa2cd => 150
	i32 2353062107, ; 346: System.Net.Primitives => 0x8c40e0db => 69
	i32 2364201794, ; 347: SkiaSharp.Views.Maui.Core => 0x8ceadb42 => 193
	i32 2368005991, ; 348: System.Xml.ReaderWriter.dll => 0x8d24e767 => 155
	i32 2369760409, ; 349: tr/Microsoft.Maui.Controls.resources => 0x8d3fac99 => 315
	i32 2371007202, ; 350: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 173
	i32 2378619854, ; 351: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 120
	i32 2383496789, ; 352: System.Security.Principal.Windows.dll => 0x8e114655 => 126
	i32 2401565422, ; 353: System.Web.HttpUtility => 0x8f24faee => 151
	i32 2403452196, ; 354: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 229
	i32 2421380589, ; 355: System.Threading.Tasks.Dataflow => 0x905355ed => 140
	i32 2421992093, ; 356: nl/Microsoft.Maui.Controls.resources => 0x905caa9d => 306
	i32 2423080555, ; 357: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 216
	i32 2435356389, ; 358: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 359: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 360: System.Text.Encoding.dll => 0x924edee6 => 134
	i32 2458678730, ; 361: System.Net.Sockets.dll => 0x928c75ca => 74
	i32 2459001652, ; 362: System.Linq.Parallel.dll => 0x92916334 => 58
	i32 2465273461, ; 363: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 195
	i32 2465532216, ; 364: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 219
	i32 2471841756, ; 365: netstandard.dll => 0x93554fdc => 166
	i32 2475788418, ; 366: Java.Interop.dll => 0x93918882 => 167
	i32 2480646305, ; 367: Microsoft.Maui.Controls => 0x93dba8a1 => 183
	i32 2483903535, ; 368: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 369: System.Net.ServicePoint => 0x94147f61 => 73
	i32 2490993605, ; 370: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 371: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 372: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 241
	i32 2520433370, ; 373: sk/Microsoft.Maui.Controls.resources => 0x963ac2da => 312
	i32 2522472828, ; 374: Xamarin.Android.Glide.dll => 0x9659e17c => 200
	i32 2538310050, ; 375: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 90
	i32 2562349572, ; 376: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 377: System.Text.Encodings.Web => 0x9930ee42 => 135
	i32 2581783588, ; 378: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 242
	i32 2581819634, ; 379: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 264
	i32 2585220780, ; 380: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 133
	i32 2585805581, ; 381: System.Net.Ping => 0x9a20430d => 68
	i32 2589602615, ; 382: System.Threading.ThreadPool => 0x9a5a3337 => 145
	i32 2605712449, ; 383: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 286
	i32 2615233544, ; 384: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 233
	i32 2616218305, ; 385: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 179
	i32 2617129537, ; 386: System.Private.Xml.dll => 0x9bfe3a41 => 87
	i32 2618712057, ; 387: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 95
	i32 2620871830, ; 388: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 223
	i32 2624644809, ; 389: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 228
	i32 2625339995, ; 390: SkiaSharp.Views.Maui.Core.dll => 0x9c7b825b => 193
	i32 2627185994, ; 391: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 30
	i32 2629843544, ; 392: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 44
	i32 2633051222, ; 393: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 237
	i32 2663391936, ; 394: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 202
	i32 2663698177, ; 395: System.Runtime.Loader => 0x9ec4cf01 => 108
	i32 2664396074, ; 396: System.Xml.XDocument.dll => 0x9ecf752a => 157
	i32 2665622720, ; 397: System.Drawing.Primitives => 0x9ee22cc0 => 34
	i32 2676780864, ; 398: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 399: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 113
	i32 2693849962, ; 400: System.IO.dll => 0xa090e36a => 56
	i32 2701096212, ; 401: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 262
	i32 2715334215, ; 402: System.Threading.Tasks.dll => 0xa1d8b647 => 143
	i32 2717744543, ; 403: System.Security.Claims => 0xa1fd7d9f => 117
	i32 2719963679, ; 404: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 119
	i32 2724373263, ; 405: System.Runtime.Numerics.dll => 0xa262a30f => 109
	i32 2732626843, ; 406: Xamarin.AndroidX.Activity => 0xa2e0939b => 204
	i32 2735172069, ; 407: System.Threading.Channels => 0xa30769e5 => 138
	i32 2737747696, ; 408: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 210
	i32 2740948882, ; 409: System.IO.Pipes.AccessControl => 0xa35f8f92 => 53
	i32 2748088231, ; 410: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 104
	i32 2758225723, ; 411: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 185
	i32 2764765095, ; 412: Microsoft.Maui.dll => 0xa4caf7a7 => 186
	i32 2765824710, ; 413: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 132
	i32 2770495804, ; 414: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 280
	i32 2778768386, ; 415: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 267
	i32 2779977773, ; 416: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 255
	i32 2788224221, ; 417: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 233
	i32 2795602088, ; 418: SkiaSharp.Views.Android.dll => 0xa6a180a8 => 191
	i32 2801831435, ; 419: Microsoft.Maui.Graphics => 0xa7008e0b => 188
	i32 2802068195, ; 420: uk/Microsoft.Maui.Controls.resources => 0xa7042ae3 => 316
	i32 2803228030, ; 421: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 158
	i32 2806116107, ; 422: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 293
	i32 2810250172, ; 423: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 220
	i32 2819470561, ; 424: System.Xml.dll => 0xa80db4e1 => 162
	i32 2821205001, ; 425: System.ServiceProcess.dll => 0xa8282c09 => 131
	i32 2821294376, ; 426: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 255
	i32 2824502124, ; 427: System.Xml.XmlDocument => 0xa85a7b6c => 160
	i32 2831556043, ; 428: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 306
	i32 2838993487, ; 429: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 244
	i32 2847418871, ; 430: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 276
	i32 2849599387, ; 431: System.Threading.Overlapped.dll => 0xa9d96f9b => 139
	i32 2853208004, ; 432: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 267
	i32 2855708567, ; 433: Xamarin.AndroidX.Transition => 0xaa36a797 => 263
	i32 2857259519, ; 434: el/Microsoft.Maui.Controls.resources => 0xaa4e51ff => 292
	i32 2861098320, ; 435: Mono.Android.Export.dll => 0xaa88e550 => 168
	i32 2861189240, ; 436: Microsoft.Maui.Essentials => 0xaa8a4878 => 187
	i32 2870099610, ; 437: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 205
	i32 2875164099, ; 438: Jsr305Binding.dll => 0xab5f85c3 => 272
	i32 2875220617, ; 439: System.Globalization.Calendars.dll => 0xab606289 => 39
	i32 2883495834, ; 440: ru/Microsoft.Maui.Controls.resources => 0xabdea79a => 311
	i32 2884993177, ; 441: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 231
	i32 2887636118, ; 442: System.Net.dll => 0xac1dd496 => 80
	i32 2899753641, ; 443: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 55
	i32 2900621748, ; 444: System.Dynamic.Runtime.dll => 0xace3f9b4 => 36
	i32 2901442782, ; 445: System.Reflection => 0xacf080de => 96
	i32 2905242038, ; 446: mscorlib.dll => 0xad2a79b6 => 165
	i32 2909740682, ; 447: System.Private.CoreLib => 0xad6f1e8a => 171
	i32 2912489636, ; 448: SkiaSharp.Views.Android => 0xad9910a4 => 191
	i32 2916838712, ; 449: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 268
	i32 2919462931, ; 450: System.Numerics.Vectors.dll => 0xae037813 => 81
	i32 2921128767, ; 451: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 207
	i32 2936416060, ; 452: System.Resources.Reader => 0xaf06273c => 97
	i32 2940926066, ; 453: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 29
	i32 2942453041, ; 454: System.Xml.XPath.XDocument => 0xaf624531 => 158
	i32 2959614098, ; 455: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 456: System.Security.Principal.Windows => 0xb0ed41f3 => 126
	i32 2972252294, ; 457: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 118
	i32 2978675010, ; 458: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 227
	i32 2987532451, ; 459: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 258
	i32 2996846495, ; 460: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 240
	i32 3016983068, ; 461: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 260
	i32 3017076677, ; 462: Xamarin.GooglePlayServices.Maps => 0xb3d4efc5 => 278
	i32 3023353419, ; 463: WindowsBase.dll => 0xb434b64b => 164
	i32 3024354802, ; 464: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 235
	i32 3038032645, ; 465: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 321
	i32 3056245963, ; 466: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 257
	i32 3057625584, ; 467: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 248
	i32 3058099980, ; 468: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 279
	i32 3059408633, ; 469: Mono.Android.Runtime => 0xb65adef9 => 169
	i32 3059793426, ; 470: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 471: System.Threading.Tasks => 0xb755818f => 143
	i32 3077302341, ; 472: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 299
	i32 3090735792, ; 473: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 124
	i32 3099732863, ; 474: System.Security.Claims.dll => 0xb8c22b7f => 117
	i32 3103600923, ; 475: System.Formats.Asn1 => 0xb8fd311b => 37
	i32 3111772706, ; 476: System.Runtime.Serialization => 0xb979e222 => 114
	i32 3121463068, ; 477: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 46
	i32 3124832203, ; 478: System.Threading.Tasks.Extensions => 0xba4127cb => 141
	i32 3132293585, ; 479: System.Security.AccessControl => 0xbab301d1 => 116
	i32 3147165239, ; 480: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 33
	i32 3148237826, ; 481: GoogleGson.dll => 0xbba64c02 => 172
	i32 3159123045, ; 482: System.Reflection.Primitives.dll => 0xbc4c6465 => 94
	i32 3160747431, ; 483: System.IO.MemoryMappedFiles => 0xbc652da7 => 52
	i32 3178803400, ; 484: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 249
	i32 3192346100, ; 485: System.Security.SecureString => 0xbe4755f4 => 128
	i32 3193515020, ; 486: System.Web => 0xbe592c0c => 152
	i32 3204380047, ; 487: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 488: System.Xml.XmlDocument.dll => 0xbf506931 => 160
	i32 3211777861, ; 489: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 226
	i32 3220365878, ; 490: System.Threading => 0xbff2e236 => 147
	i32 3226221578, ; 491: System.Runtime.Handles.dll => 0xc04c3c0a => 103
	i32 3230466174, ; 492: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 277
	i32 3251039220, ; 493: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 88
	i32 3258312781, ; 494: Xamarin.AndroidX.CardView => 0xc235e84d => 214
	i32 3265493905, ; 495: System.Linq.Queryable.dll => 0xc2a37b91 => 59
	i32 3265893370, ; 496: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 141
	i32 3277815716, ; 497: System.Resources.Writer.dll => 0xc35f7fa4 => 99
	i32 3279906254, ; 498: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 499: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3286872994, ; 500: SQLite-net.dll => 0xc3e9b3a2 => 194
	i32 3290767353, ; 501: System.Security.Cryptography.Encoding => 0xc4251ff9 => 121
	i32 3299363146, ; 502: System.Text.Encoding => 0xc4a8494a => 134
	i32 3303498502, ; 503: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 27
	i32 3316684772, ; 504: System.Net.Requests.dll => 0xc5b097e4 => 71
	i32 3317135071, ; 505: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 224
	i32 3317144872, ; 506: System.Data => 0xc5b79d28 => 24
	i32 3340387945, ; 507: SkiaSharp => 0xc71a4669 => 190
	i32 3340431453, ; 508: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 212
	i32 3345895724, ; 509: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 253
	i32 3346324047, ; 510: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 250
	i32 3358260929, ; 511: System.Text.Json => 0xc82afec1 => 136
	i32 3360279109, ; 512: SQLitePCLRaw.core => 0xc849ca45 => 196
	i32 3362336904, ; 513: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 205
	i32 3362522851, ; 514: Xamarin.AndroidX.Core => 0xc86c06e3 => 221
	i32 3366347497, ; 515: Java.Interop => 0xc8a662e9 => 167
	i32 3374999561, ; 516: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 254
	i32 3395150330, ; 517: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 100
	i32 3403906625, ; 518: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 122
	i32 3405233483, ; 519: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 225
	i32 3428513518, ; 520: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 175
	i32 3429136800, ; 521: System.Xml => 0xcc6479a0 => 162
	i32 3430777524, ; 522: netstandard => 0xcc7d82b4 => 166
	i32 3441283291, ; 523: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 228
	i32 3445260447, ; 524: System.Formats.Tar => 0xcd5a809f => 38
	i32 3452344032, ; 525: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 182
	i32 3463511458, ; 526: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 298
	i32 3471940407, ; 527: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3473156932, ; 528: SkiaSharp.Views.Maui.Controls.dll => 0xcf042b44 => 192
	i32 3476120550, ; 529: Mono.Android => 0xcf3163e6 => 170
	i32 3479583265, ; 530: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 311
	i32 3485117614, ; 531: System.Text.Json.dll => 0xcfbaacae => 136
	i32 3486566296, ; 532: System.Transactions => 0xcfd0c798 => 149
	i32 3493954962, ; 533: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 217
	i32 3500773090, ; 534: Microsoft.Maui.Controls.Maps => 0xd0a98ee2 => 184
	i32 3509114376, ; 535: System.Xml.Linq => 0xd128d608 => 154
	i32 3515174580, ; 536: System.Security.dll => 0xd1854eb4 => 129
	i32 3530912306, ; 537: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 538: System.Net.HttpListener => 0xd2ff69f1 => 64
	i32 3542658132, ; 539: vi/Microsoft.Maui.Controls.resources => 0xd328ac54 => 317
	i32 3560100363, ; 540: System.Threading.Timer => 0xd432d20b => 146
	i32 3570554715, ; 541: System.IO.FileSystem.AccessControl => 0xd4d2575b => 46
	i32 3596930546, ; 542: de/Microsoft.Maui.Controls.resources => 0xd664cdf2 => 291
	i32 3597029428, ; 543: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 203
	i32 3598340787, ; 544: System.Net.WebSockets.Client => 0xd67a52b3 => 78
	i32 3608519521, ; 545: System.Linq.dll => 0xd715a361 => 60
	i32 3623444314, ; 546: da/Microsoft.Maui.Controls.resources => 0xd7f95f5a => 290
	i32 3624195450, ; 547: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 105
	i32 3627220390, ; 548: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 252
	i32 3633644679, ; 549: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 207
	i32 3638274909, ; 550: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 48
	i32 3641597786, ; 551: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 238
	i32 3643854240, ; 552: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 249
	i32 3645089577, ; 553: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3647796983, ; 554: pt-BR/Microsoft.Maui.Controls.resources => 0xd96cf6f7 => 308
	i32 3657292374, ; 555: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 174
	i32 3660523487, ; 556: System.Net.NetworkInformation => 0xda2f27df => 67
	i32 3662115805, ; 557: he/Microsoft.Maui.Controls.resources => 0xda4773dd => 296
	i32 3672681054, ; 558: Mono.Android.dll => 0xdae8aa5e => 170
	i32 3682565725, ; 559: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 213
	i32 3684561358, ; 560: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 217
	i32 3686075795, ; 561: ms/Microsoft.Maui.Controls.resources => 0xdbb50d93 => 304
	i32 3697841164, ; 562: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 320
	i32 3700866549, ; 563: System.Net.WebProxy.dll => 0xdc96bdf5 => 77
	i32 3706696989, ; 564: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 222
	i32 3716563718, ; 565: System.Runtime.Intrinsics => 0xdd864306 => 107
	i32 3718780102, ; 566: Xamarin.AndroidX.Annotation => 0xdda814c6 => 206
	i32 3724971120, ; 567: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 248
	i32 3732100267, ; 568: System.Net.NameResolution => 0xde7354ab => 66
	i32 3737834244, ; 569: System.Net.Http.Json.dll => 0xdecad304 => 62
	i32 3748608112, ; 570: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 199
	i32 3751444290, ; 571: System.Xml.XPath => 0xdf9a7f42 => 159
	i32 3754567612, ; 572: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 198
	i32 3786282454, ; 573: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 215
	i32 3792276235, ; 574: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 575: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 182
	i32 3802395368, ; 576: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 577: System.Net.WebProxy => 0xe3a54a09 => 77
	i32 3823082795, ; 578: System.Security.Cryptography.dll => 0xe3df9d2b => 125
	i32 3829621856, ; 579: System.Numerics.dll => 0xe4436460 => 82
	i32 3841636137, ; 580: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 176
	i32 3844307129, ; 581: System.Net.Mail.dll => 0xe52378b9 => 65
	i32 3849253459, ; 582: System.Runtime.InteropServices.dll => 0xe56ef253 => 106
	i32 3870376305, ; 583: System.Net.HttpListener.dll => 0xe6b14171 => 64
	i32 3873536506, ; 584: System.Security.Principal => 0xe6e179fa => 127
	i32 3875112723, ; 585: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 121
	i32 3876362041, ; 586: SQLite-net => 0xe70c9739 => 194
	i32 3885497537, ; 587: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 76
	i32 3885922214, ; 588: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 263
	i32 3888767677, ; 589: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 253
	i32 3889960447, ; 590: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 319
	i32 3896106733, ; 591: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 592: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 221
	i32 3901907137, ; 593: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 594: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 43
	i32 3921031405, ; 595: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 266
	i32 3928044579, ; 596: System.Xml.ReaderWriter => 0xea213423 => 155
	i32 3930554604, ; 597: System.Security.Principal.dll => 0xea4780ec => 127
	i32 3931092270, ; 598: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 251
	i32 3945713374, ; 599: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 600: System.Text.Encoding.CodePages => 0xebac8bfe => 132
	i32 3955647286, ; 601: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 209
	i32 3959773229, ; 602: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 240
	i32 3970018735, ; 603: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 279
	i32 3980434154, ; 604: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 314
	i32 3987592930, ; 605: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 296
	i32 4003436829, ; 606: System.Diagnostics.Process.dll => 0xee9f991d => 28
	i32 4015948917, ; 607: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 208
	i32 4025784931, ; 608: System.Memory => 0xeff49a63 => 61
	i32 4046471985, ; 609: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 185
	i32 4054681211, ; 610: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 89
	i32 4068434129, ; 611: System.Private.Xml.Linq.dll => 0xf27f60d1 => 86
	i32 4070331268, ; 612: id/Microsoft.Maui.Controls.resources => 0xf29c5384 => 300
	i32 4073602200, ; 613: System.Threading.dll => 0xf2ce3c98 => 147
	i32 4094352644, ; 614: Microsoft.Maui.Essentials.dll => 0xf40add04 => 187
	i32 4099507663, ; 615: System.Drawing.dll => 0xf45985cf => 35
	i32 4100113165, ; 616: System.Private.Uri => 0xf462c30d => 85
	i32 4101593132, ; 617: Xamarin.AndroidX.Emoji2 => 0xf479582c => 229
	i32 4102112229, ; 618: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 309
	i32 4119206479, ; 619: pl/Microsoft.Maui.Controls.resources => 0xf5861a4f => 307
	i32 4125707920, ; 620: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 304
	i32 4126470640, ; 621: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 175
	i32 4127667938, ; 622: System.IO.FileSystem.Watcher => 0xf60736e2 => 49
	i32 4130442656, ; 623: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 624: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 89
	i32 4151237749, ; 625: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 626: System.Xml.XmlSerializer => 0xf7e95c85 => 161
	i32 4161255271, ; 627: System.Reflection.TypeExtensions => 0xf807b767 => 95
	i32 4164802419, ; 628: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 49
	i32 4181436372, ; 629: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 112
	i32 4182413190, ; 630: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 245
	i32 4185676441, ; 631: System.Security => 0xf97c5a99 => 129
	i32 4190991637, ; 632: Microsoft.Maui.Maps.dll => 0xf9cd7515 => 189
	i32 4196529839, ; 633: System.Net.WebClient.dll => 0xfa21f6af => 75
	i32 4213026141, ; 634: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 199
	i32 4234116406, ; 635: pt/Microsoft.Maui.Controls.resources => 0xfc5f7d36 => 309
	i32 4256097574, ; 636: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 222
	i32 4258378803, ; 637: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 244
	i32 4260525087, ; 638: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 639: Microsoft.Maui.Controls.dll => 0xfea12dee => 183
	i32 4274976490, ; 640: System.Runtime.Numerics => 0xfecef6ea => 109
	i32 4278134329, ; 641: Xamarin.GooglePlayServices.Maps.dll => 0xfeff2639 => 278
	i32 4292120959, ; 642: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 245
	i32 4294763496 ; 643: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 231
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [644 x i32] [
	i32 67, ; 0
	i32 66, ; 1
	i32 107, ; 2
	i32 241, ; 3
	i32 275, ; 4
	i32 47, ; 5
	i32 79, ; 6
	i32 144, ; 7
	i32 0, ; 8
	i32 288, ; 9
	i32 29, ; 10
	i32 123, ; 11
	i32 188, ; 12
	i32 101, ; 13
	i32 259, ; 14
	i32 318, ; 15
	i32 106, ; 16
	i32 259, ; 17
	i32 138, ; 18
	i32 283, ; 19
	i32 76, ; 20
	i32 123, ; 21
	i32 13, ; 22
	i32 215, ; 23
	i32 131, ; 24
	i32 261, ; 25
	i32 150, ; 26
	i32 317, ; 27
	i32 318, ; 28
	i32 18, ; 29
	i32 213, ; 30
	i32 26, ; 31
	i32 235, ; 32
	i32 1, ; 33
	i32 58, ; 34
	i32 41, ; 35
	i32 90, ; 36
	i32 218, ; 37
	i32 146, ; 38
	i32 237, ; 39
	i32 234, ; 40
	i32 289, ; 41
	i32 53, ; 42
	i32 68, ; 43
	i32 204, ; 44
	i32 82, ; 45
	i32 302, ; 46
	i32 236, ; 47
	i32 197, ; 48
	i32 301, ; 49
	i32 289, ; 50
	i32 130, ; 51
	i32 54, ; 52
	i32 148, ; 53
	i32 73, ; 54
	i32 144, ; 55
	i32 61, ; 56
	i32 145, ; 57
	i32 321, ; 58
	i32 164, ; 59
	i32 313, ; 60
	i32 219, ; 61
	i32 12, ; 62
	i32 232, ; 63
	i32 124, ; 64
	i32 151, ; 65
	i32 112, ; 66
	i32 165, ; 67
	i32 163, ; 68
	i32 234, ; 69
	i32 247, ; 70
	i32 83, ; 71
	i32 300, ; 72
	i32 294, ; 73
	i32 181, ; 74
	i32 190, ; 75
	i32 149, ; 76
	i32 297, ; 77
	i32 283, ; 78
	i32 59, ; 79
	i32 177, ; 80
	i32 50, ; 81
	i32 102, ; 82
	i32 113, ; 83
	i32 39, ; 84
	i32 272, ; 85
	i32 270, ; 86
	i32 119, ; 87
	i32 308, ; 88
	i32 51, ; 89
	i32 43, ; 90
	i32 118, ; 91
	i32 224, ; 92
	i32 230, ; 93
	i32 80, ; 94
	i32 135, ; 95
	i32 266, ; 96
	i32 211, ; 97
	i32 8, ; 98
	i32 72, ; 99
	i32 288, ; 100
	i32 154, ; 101
	i32 285, ; 102
	i32 153, ; 103
	i32 91, ; 104
	i32 280, ; 105
	i32 44, ; 106
	i32 303, ; 107
	i32 291, ; 108
	i32 284, ; 109
	i32 108, ; 110
	i32 128, ; 111
	i32 195, ; 112
	i32 25, ; 113
	i32 201, ; 114
	i32 71, ; 115
	i32 54, ; 116
	i32 45, ; 117
	i32 180, ; 118
	i32 225, ; 119
	i32 22, ; 120
	i32 239, ; 121
	i32 85, ; 122
	i32 42, ; 123
	i32 159, ; 124
	i32 70, ; 125
	i32 252, ; 126
	i32 287, ; 127
	i32 3, ; 128
	i32 41, ; 129
	i32 62, ; 130
	i32 16, ; 131
	i32 189, ; 132
	i32 52, ; 133
	i32 315, ; 134
	i32 275, ; 135
	i32 104, ; 136
	i32 284, ; 137
	i32 273, ; 138
	i32 236, ; 139
	i32 33, ; 140
	i32 157, ; 141
	i32 84, ; 142
	i32 31, ; 143
	i32 12, ; 144
	i32 319, ; 145
	i32 50, ; 146
	i32 293, ; 147
	i32 55, ; 148
	i32 256, ; 149
	i32 35, ; 150
	i32 176, ; 151
	i32 290, ; 152
	i32 274, ; 153
	i32 209, ; 154
	i32 34, ; 155
	i32 57, ; 156
	i32 243, ; 157
	i32 172, ; 158
	i32 17, ; 159
	i32 281, ; 160
	i32 163, ; 161
	i32 242, ; 162
	i32 179, ; 163
	i32 269, ; 164
	i32 152, ; 165
	i32 265, ; 166
	i32 250, ; 167
	i32 294, ; 168
	i32 307, ; 169
	i32 211, ; 170
	i32 28, ; 171
	i32 51, ; 172
	i32 0, ; 173
	i32 305, ; 174
	i32 270, ; 175
	i32 5, ; 176
	i32 260, ; 177
	i32 264, ; 178
	i32 216, ; 179
	i32 285, ; 180
	i32 208, ; 181
	i32 196, ; 182
	i32 227, ; 183
	i32 84, ; 184
	i32 269, ; 185
	i32 60, ; 186
	i32 111, ; 187
	i32 56, ; 188
	i32 256, ; 189
	i32 98, ; 190
	i32 19, ; 191
	i32 220, ; 192
	i32 110, ; 193
	i32 100, ; 194
	i32 101, ; 195
	i32 103, ; 196
	i32 273, ; 197
	i32 70, ; 198
	i32 37, ; 199
	i32 31, ; 200
	i32 102, ; 201
	i32 72, ; 202
	i32 9, ; 203
	i32 122, ; 204
	i32 45, ; 205
	i32 210, ; 206
	i32 181, ; 207
	i32 9, ; 208
	i32 42, ; 209
	i32 4, ; 210
	i32 257, ; 211
	i32 297, ; 212
	i32 292, ; 213
	i32 30, ; 214
	i32 137, ; 215
	i32 91, ; 216
	i32 92, ; 217
	i32 312, ; 218
	i32 295, ; 219
	i32 48, ; 220
	i32 140, ; 221
	i32 111, ; 222
	i32 139, ; 223
	i32 313, ; 224
	i32 226, ; 225
	i32 320, ; 226
	i32 114, ; 227
	i32 274, ; 228
	i32 156, ; 229
	i32 75, ; 230
	i32 78, ; 231
	i32 246, ; 232
	i32 36, ; 233
	i32 192, ; 234
	i32 268, ; 235
	i32 230, ; 236
	i32 223, ; 237
	i32 63, ; 238
	i32 137, ; 239
	i32 15, ; 240
	i32 115, ; 241
	i32 262, ; 242
	i32 271, ; 243
	i32 218, ; 244
	i32 47, ; 245
	i32 69, ; 246
	i32 79, ; 247
	i32 125, ; 248
	i32 93, ; 249
	i32 120, ; 250
	i32 282, ; 251
	i32 26, ; 252
	i32 197, ; 253
	i32 239, ; 254
	i32 96, ; 255
	i32 27, ; 256
	i32 214, ; 257
	i32 310, ; 258
	i32 148, ; 259
	i32 168, ; 260
	i32 4, ; 261
	i32 97, ; 262
	i32 32, ; 263
	i32 92, ; 264
	i32 261, ; 265
	i32 177, ; 266
	i32 21, ; 267
	i32 40, ; 268
	i32 169, ; 269
	i32 232, ; 270
	i32 246, ; 271
	i32 305, ; 272
	i32 281, ; 273
	i32 271, ; 274
	i32 251, ; 275
	i32 2, ; 276
	i32 299, ; 277
	i32 133, ; 278
	i32 110, ; 279
	i32 178, ; 280
	i32 316, ; 281
	i32 201, ; 282
	i32 57, ; 283
	i32 94, ; 284
	i32 38, ; 285
	i32 212, ; 286
	i32 25, ; 287
	i32 93, ; 288
	i32 88, ; 289
	i32 98, ; 290
	i32 277, ; 291
	i32 10, ; 292
	i32 86, ; 293
	i32 99, ; 294
	i32 302, ; 295
	i32 258, ; 296
	i32 173, ; 297
	i32 282, ; 298
	i32 203, ; 299
	i32 7, ; 300
	i32 298, ; 301
	i32 243, ; 302
	i32 287, ; 303
	i32 200, ; 304
	i32 301, ; 305
	i32 87, ; 306
	i32 238, ; 307
	i32 153, ; 308
	i32 32, ; 309
	i32 115, ; 310
	i32 81, ; 311
	i32 198, ; 312
	i32 20, ; 313
	i32 276, ; 314
	i32 11, ; 315
	i32 161, ; 316
	i32 3, ; 317
	i32 303, ; 318
	i32 186, ; 319
	i32 310, ; 320
	i32 180, ; 321
	i32 178, ; 322
	i32 83, ; 323
	i32 286, ; 324
	i32 63, ; 325
	i32 265, ; 326
	i32 142, ; 327
	i32 247, ; 328
	i32 156, ; 329
	i32 40, ; 330
	i32 116, ; 331
	i32 174, ; 332
	i32 202, ; 333
	i32 295, ; 334
	i32 254, ; 335
	i32 314, ; 336
	i32 130, ; 337
	i32 74, ; 338
	i32 65, ; 339
	i32 184, ; 340
	i32 171, ; 341
	i32 206, ; 342
	i32 142, ; 343
	i32 105, ; 344
	i32 150, ; 345
	i32 69, ; 346
	i32 193, ; 347
	i32 155, ; 348
	i32 315, ; 349
	i32 173, ; 350
	i32 120, ; 351
	i32 126, ; 352
	i32 151, ; 353
	i32 229, ; 354
	i32 140, ; 355
	i32 306, ; 356
	i32 216, ; 357
	i32 20, ; 358
	i32 14, ; 359
	i32 134, ; 360
	i32 74, ; 361
	i32 58, ; 362
	i32 195, ; 363
	i32 219, ; 364
	i32 166, ; 365
	i32 167, ; 366
	i32 183, ; 367
	i32 15, ; 368
	i32 73, ; 369
	i32 6, ; 370
	i32 23, ; 371
	i32 241, ; 372
	i32 312, ; 373
	i32 200, ; 374
	i32 90, ; 375
	i32 1, ; 376
	i32 135, ; 377
	i32 242, ; 378
	i32 264, ; 379
	i32 133, ; 380
	i32 68, ; 381
	i32 145, ; 382
	i32 286, ; 383
	i32 233, ; 384
	i32 179, ; 385
	i32 87, ; 386
	i32 95, ; 387
	i32 223, ; 388
	i32 228, ; 389
	i32 193, ; 390
	i32 30, ; 391
	i32 44, ; 392
	i32 237, ; 393
	i32 202, ; 394
	i32 108, ; 395
	i32 157, ; 396
	i32 34, ; 397
	i32 22, ; 398
	i32 113, ; 399
	i32 56, ; 400
	i32 262, ; 401
	i32 143, ; 402
	i32 117, ; 403
	i32 119, ; 404
	i32 109, ; 405
	i32 204, ; 406
	i32 138, ; 407
	i32 210, ; 408
	i32 53, ; 409
	i32 104, ; 410
	i32 185, ; 411
	i32 186, ; 412
	i32 132, ; 413
	i32 280, ; 414
	i32 267, ; 415
	i32 255, ; 416
	i32 233, ; 417
	i32 191, ; 418
	i32 188, ; 419
	i32 316, ; 420
	i32 158, ; 421
	i32 293, ; 422
	i32 220, ; 423
	i32 162, ; 424
	i32 131, ; 425
	i32 255, ; 426
	i32 160, ; 427
	i32 306, ; 428
	i32 244, ; 429
	i32 276, ; 430
	i32 139, ; 431
	i32 267, ; 432
	i32 263, ; 433
	i32 292, ; 434
	i32 168, ; 435
	i32 187, ; 436
	i32 205, ; 437
	i32 272, ; 438
	i32 39, ; 439
	i32 311, ; 440
	i32 231, ; 441
	i32 80, ; 442
	i32 55, ; 443
	i32 36, ; 444
	i32 96, ; 445
	i32 165, ; 446
	i32 171, ; 447
	i32 191, ; 448
	i32 268, ; 449
	i32 81, ; 450
	i32 207, ; 451
	i32 97, ; 452
	i32 29, ; 453
	i32 158, ; 454
	i32 18, ; 455
	i32 126, ; 456
	i32 118, ; 457
	i32 227, ; 458
	i32 258, ; 459
	i32 240, ; 460
	i32 260, ; 461
	i32 278, ; 462
	i32 164, ; 463
	i32 235, ; 464
	i32 321, ; 465
	i32 257, ; 466
	i32 248, ; 467
	i32 279, ; 468
	i32 169, ; 469
	i32 16, ; 470
	i32 143, ; 471
	i32 299, ; 472
	i32 124, ; 473
	i32 117, ; 474
	i32 37, ; 475
	i32 114, ; 476
	i32 46, ; 477
	i32 141, ; 478
	i32 116, ; 479
	i32 33, ; 480
	i32 172, ; 481
	i32 94, ; 482
	i32 52, ; 483
	i32 249, ; 484
	i32 128, ; 485
	i32 152, ; 486
	i32 24, ; 487
	i32 160, ; 488
	i32 226, ; 489
	i32 147, ; 490
	i32 103, ; 491
	i32 277, ; 492
	i32 88, ; 493
	i32 214, ; 494
	i32 59, ; 495
	i32 141, ; 496
	i32 99, ; 497
	i32 5, ; 498
	i32 13, ; 499
	i32 194, ; 500
	i32 121, ; 501
	i32 134, ; 502
	i32 27, ; 503
	i32 71, ; 504
	i32 224, ; 505
	i32 24, ; 506
	i32 190, ; 507
	i32 212, ; 508
	i32 253, ; 509
	i32 250, ; 510
	i32 136, ; 511
	i32 196, ; 512
	i32 205, ; 513
	i32 221, ; 514
	i32 167, ; 515
	i32 254, ; 516
	i32 100, ; 517
	i32 122, ; 518
	i32 225, ; 519
	i32 175, ; 520
	i32 162, ; 521
	i32 166, ; 522
	i32 228, ; 523
	i32 38, ; 524
	i32 182, ; 525
	i32 298, ; 526
	i32 17, ; 527
	i32 192, ; 528
	i32 170, ; 529
	i32 311, ; 530
	i32 136, ; 531
	i32 149, ; 532
	i32 217, ; 533
	i32 184, ; 534
	i32 154, ; 535
	i32 129, ; 536
	i32 19, ; 537
	i32 64, ; 538
	i32 317, ; 539
	i32 146, ; 540
	i32 46, ; 541
	i32 291, ; 542
	i32 203, ; 543
	i32 78, ; 544
	i32 60, ; 545
	i32 290, ; 546
	i32 105, ; 547
	i32 252, ; 548
	i32 207, ; 549
	i32 48, ; 550
	i32 238, ; 551
	i32 249, ; 552
	i32 14, ; 553
	i32 308, ; 554
	i32 174, ; 555
	i32 67, ; 556
	i32 296, ; 557
	i32 170, ; 558
	i32 213, ; 559
	i32 217, ; 560
	i32 304, ; 561
	i32 320, ; 562
	i32 77, ; 563
	i32 222, ; 564
	i32 107, ; 565
	i32 206, ; 566
	i32 248, ; 567
	i32 66, ; 568
	i32 62, ; 569
	i32 199, ; 570
	i32 159, ; 571
	i32 198, ; 572
	i32 215, ; 573
	i32 10, ; 574
	i32 182, ; 575
	i32 11, ; 576
	i32 77, ; 577
	i32 125, ; 578
	i32 82, ; 579
	i32 176, ; 580
	i32 65, ; 581
	i32 106, ; 582
	i32 64, ; 583
	i32 127, ; 584
	i32 121, ; 585
	i32 194, ; 586
	i32 76, ; 587
	i32 263, ; 588
	i32 253, ; 589
	i32 319, ; 590
	i32 8, ; 591
	i32 221, ; 592
	i32 2, ; 593
	i32 43, ; 594
	i32 266, ; 595
	i32 155, ; 596
	i32 127, ; 597
	i32 251, ; 598
	i32 23, ; 599
	i32 132, ; 600
	i32 209, ; 601
	i32 240, ; 602
	i32 279, ; 603
	i32 314, ; 604
	i32 296, ; 605
	i32 28, ; 606
	i32 208, ; 607
	i32 61, ; 608
	i32 185, ; 609
	i32 89, ; 610
	i32 86, ; 611
	i32 300, ; 612
	i32 147, ; 613
	i32 187, ; 614
	i32 35, ; 615
	i32 85, ; 616
	i32 229, ; 617
	i32 309, ; 618
	i32 307, ; 619
	i32 304, ; 620
	i32 175, ; 621
	i32 49, ; 622
	i32 6, ; 623
	i32 89, ; 624
	i32 21, ; 625
	i32 161, ; 626
	i32 95, ; 627
	i32 49, ; 628
	i32 112, ; 629
	i32 245, ; 630
	i32 129, ; 631
	i32 189, ; 632
	i32 75, ; 633
	i32 199, ; 634
	i32 309, ; 635
	i32 222, ; 636
	i32 244, ; 637
	i32 7, ; 638
	i32 183, ; 639
	i32 109, ; 640
	i32 278, ; 641
	i32 245, ; 642
	i32 231 ; 643
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

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
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ 82d8938cf80f6d5fa6c28529ddfbdb753d805ab4"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}

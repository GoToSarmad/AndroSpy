	.file	"typemaps.x86_64.s"

/* map_module_count: START */
	.section	.rodata.map_module_count,"a",@progbits
	.type	map_module_count, @object
	.p2align	2
	.global	map_module_count
map_module_count:
	.size	map_module_count, 4
	.long	4
/* map_module_count: END */

/* java_type_count: START */
	.section	.rodata.java_type_count,"a",@progbits
	.type	java_type_count, @object
	.p2align	2
	.global	java_type_count
java_type_count:
	.size	java_type_count, 4
	.long	272
/* java_type_count: END */

/* java_name_width: START */
	.section	.rodata.java_name_width,"a",@progbits
	.type	java_name_width, @object
	.p2align	2
	.global	java_name_width
java_name_width:
	.size	java_name_width, 4
	.long	75
/* java_name_width: END */

	.include	"typemaps.shared.inc"
	.include	"typemaps.x86_64-managed.inc"

/* Managed to Java map: START */
	.section	.data.rel.map_modules,"aw",@progbits
	.type	map_modules, @object
	.p2align	4
	.global	map_modules
map_modules:
	/* module_uuid: e1adaf20-2ac6-4841-8ea5-7f9998a4f82e */
	.byte	0x20, 0xaf, 0xad, 0xe1, 0xc6, 0x2a, 0x41, 0x48, 0x8e, 0xa5, 0x7f, 0x99, 0x98, 0xa4, 0xf8, 0x2e
	/* entry_count */
	.long	7
	/* duplicate_count */
	.long	0
	/* map */
	.quad	module0_managed_to_java
	/* duplicate_map */
	.quad	0
	/* assembly_name: ServicesDemo3 */
	.quad	.L.map_aname.0
	/* image */
	.quad	0
	/* java_name_width */
	.long	0
	/* java_map */
	.zero	4
	.quad	0

	/* module_uuid: 0c00ec39-a1f7-4824-822d-0f606d0f5f3b */
	.byte	0x39, 0xec, 0x00, 0x0c, 0xf7, 0xa1, 0x24, 0x48, 0x82, 0x2d, 0x0f, 0x60, 0x6d, 0x0f, 0x5f, 0x3b
	/* entry_count */
	.long	3
	/* duplicate_count */
	.long	0
	/* map */
	.quad	module1_managed_to_java
	/* duplicate_map */
	.quad	0
	/* assembly_name: Xamarin.Essentials */
	.quad	.L.map_aname.1
	/* image */
	.quad	0
	/* java_name_width */
	.long	0
	/* java_map */
	.zero	4
	.quad	0

	/* module_uuid: 427e2841-d931-4910-9f9f-b787675bef04 */
	.byte	0x41, 0x28, 0x7e, 0x42, 0x31, 0xd9, 0x10, 0x49, 0x9f, 0x9f, 0xb7, 0x87, 0x67, 0x5b, 0xef, 0x04
	/* entry_count */
	.long	255
	/* duplicate_count */
	.long	38
	/* map */
	.quad	module2_managed_to_java
	/* duplicate_map */
	.quad	module2_managed_to_java_duplicates
	/* assembly_name: Mono.Android */
	.quad	.L.map_aname.2
	/* image */
	.quad	0
	/* java_name_width */
	.long	0
	/* java_map */
	.zero	4
	.quad	0

	/* module_uuid: 9638b850-ca68-4523-910a-c147018b9c4d */
	.byte	0x50, 0xb8, 0x38, 0x96, 0x68, 0xca, 0x23, 0x45, 0x91, 0x0a, 0xc1, 0x47, 0x01, 0x8b, 0x9c, 0x4d
	/* entry_count */
	.long	7
	/* duplicate_count */
	.long	1
	/* map */
	.quad	module3_managed_to_java
	/* duplicate_map */
	.quad	module3_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.Compat */
	.quad	.L.map_aname.3
	/* image */
	.quad	0
	/* java_name_width */
	.long	0
	/* java_map */
	.zero	4
	.quad	0

	.size	map_modules, 288
/* Managed to Java map: END */

/* Java to managed map: START */
	.section	.rodata.map_java,"a",@progbits
	.type	map_java, @object
	.p2align	4
	.global	map_java
map_java:
	/* #0 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554477
	/* java_name */
	.ascii	"android/accessibilityservice/AccessibilityService"
	.zero	26

	/* #1 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554480
	/* java_name */
	.ascii	"android/accessibilityservice/AccessibilityServiceInfo"
	.zero	22

	/* #2 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554647
	/* java_name */
	.ascii	"android/app/Activity"
	.zero	55

	/* #3 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554648
	/* java_name */
	.ascii	"android/app/ActivityManager"
	.zero	48

	/* #4 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554649
	/* java_name */
	.ascii	"android/app/ActivityManager$AppTask"
	.zero	40

	/* #5 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554650
	/* java_name */
	.ascii	"android/app/Application"
	.zero	52

	/* #6 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554652
	/* java_name */
	.ascii	"android/app/Application$ActivityLifecycleCallbacks"
	.zero	25

	/* #7 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554661
	/* java_name */
	.ascii	"android/app/KeyguardManager"
	.zero	48

	/* #8 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554655
	/* java_name */
	.ascii	"android/app/Notification"
	.zero	51

	/* #9 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554656
	/* java_name */
	.ascii	"android/app/Notification$Builder"
	.zero	43

	/* #10 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554662
	/* java_name */
	.ascii	"android/app/NotificationChannel"
	.zero	44

	/* #11 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554657
	/* java_name */
	.ascii	"android/app/NotificationManager"
	.zero	44

	/* #12 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554665
	/* java_name */
	.ascii	"android/app/PendingIntent"
	.zero	50

	/* #13 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554667
	/* java_name */
	.ascii	"android/app/Service"
	.zero	56

	/* #14 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554671
	/* java_name */
	.ascii	"android/app/WallpaperManager"
	.zero	47

	/* #15 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554673
	/* java_name */
	.ascii	"android/app/admin/DeviceAdminReceiver"
	.zero	38

	/* #16 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554672
	/* java_name */
	.ascii	"android/app/admin/DevicePolicyManager"
	.zero	38

	/* #17 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554679
	/* java_name */
	.ascii	"android/content/AsyncTaskLoader"
	.zero	44

	/* #18 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554681
	/* java_name */
	.ascii	"android/content/BroadcastReceiver"
	.zero	42

	/* #19 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554684
	/* java_name */
	.ascii	"android/content/ClipData"
	.zero	51

	/* #20 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554685
	/* java_name */
	.ascii	"android/content/ClipData$Item"
	.zero	46

	/* #21 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554683
	/* java_name */
	.ascii	"android/content/ClipboardManager"
	.zero	43

	/* #22 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554696
	/* java_name */
	.ascii	"android/content/ComponentCallbacks"
	.zero	41

	/* #23 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554698
	/* java_name */
	.ascii	"android/content/ComponentCallbacks2"
	.zero	40

	/* #24 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554686
	/* java_name */
	.ascii	"android/content/ComponentName"
	.zero	46

	/* #25 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554687
	/* java_name */
	.ascii	"android/content/ContentProviderOperation"
	.zero	35

	/* #26 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554688
	/* java_name */
	.ascii	"android/content/ContentProviderOperation$Builder"
	.zero	27

	/* #27 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554689
	/* java_name */
	.ascii	"android/content/ContentProviderResult"
	.zero	38

	/* #28 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554690
	/* java_name */
	.ascii	"android/content/ContentResolver"
	.zero	44

	/* #29 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554675
	/* java_name */
	.ascii	"android/content/Context"
	.zero	52

	/* #30 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554693
	/* java_name */
	.ascii	"android/content/ContextWrapper"
	.zero	45

	/* #31 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554676
	/* java_name */
	.ascii	"android/content/CursorLoader"
	.zero	47

	/* #32 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554677
	/* java_name */
	.ascii	"android/content/Intent"
	.zero	53

	/* #33 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554699
	/* java_name */
	.ascii	"android/content/IntentFilter"
	.zero	47

	/* #34 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554700
	/* java_name */
	.ascii	"android/content/IntentSender"
	.zero	47

	/* #35 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554707
	/* java_name */
	.ascii	"android/content/Loader"
	.zero	53

	/* #36 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554706
	/* java_name */
	.ascii	"android/content/SharedPreferences"
	.zero	42

	/* #37 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554702
	/* java_name */
	.ascii	"android/content/SharedPreferences$Editor"
	.zero	35

	/* #38 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554704
	/* java_name */
	.ascii	"android/content/SharedPreferences$OnSharedPreferenceChangeListener"
	.zero	9

	/* #39 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554709
	/* java_name */
	.ascii	"android/content/pm/ApplicationInfo"
	.zero	41

	/* #40 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554712
	/* java_name */
	.ascii	"android/content/pm/FeatureInfo"
	.zero	45

	/* #41 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554713
	/* java_name */
	.ascii	"android/content/pm/PackageInfo"
	.zero	45

	/* #42 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554715
	/* java_name */
	.ascii	"android/content/pm/PackageItemInfo"
	.zero	41

	/* #43 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554716
	/* java_name */
	.ascii	"android/content/pm/PackageManager"
	.zero	42

	/* #44 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554719
	/* java_name */
	.ascii	"android/content/res/ColorStateList"
	.zero	41

	/* #45 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554720
	/* java_name */
	.ascii	"android/content/res/Configuration"
	.zero	42

	/* #46 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554721
	/* java_name */
	.ascii	"android/content/res/Resources"
	.zero	46

	/* #47 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554469
	/* java_name */
	.ascii	"android/database/CharArrayBuffer"
	.zero	43

	/* #48 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554470
	/* java_name */
	.ascii	"android/database/ContentObserver"
	.zero	43

	/* #49 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554476
	/* java_name */
	.ascii	"android/database/Cursor"
	.zero	52

	/* #50 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554472
	/* java_name */
	.ascii	"android/database/DataSetObserver"
	.zero	43

	/* #51 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554631
	/* java_name */
	.ascii	"android/graphics/Bitmap"
	.zero	52

	/* #52 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554632
	/* java_name */
	.ascii	"android/graphics/Bitmap$CompressFormat"
	.zero	37

	/* #53 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554633
	/* java_name */
	.ascii	"android/graphics/BitmapFactory"
	.zero	45

	/* #54 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554635
	/* java_name */
	.ascii	"android/graphics/Matrix"
	.zero	52

	/* #55 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554636
	/* java_name */
	.ascii	"android/graphics/Point"
	.zero	53

	/* #56 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554637
	/* java_name */
	.ascii	"android/graphics/Rect"
	.zero	54

	/* #57 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554638
	/* java_name */
	.ascii	"android/graphics/RectF"
	.zero	53

	/* #58 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554639
	/* java_name */
	.ascii	"android/graphics/SurfaceTexture"
	.zero	44

	/* #59 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554643
	/* java_name */
	.ascii	"android/graphics/drawable/BitmapDrawable"
	.zero	35

	/* #60 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554640
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable"
	.zero	41

	/* #61 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554642
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable$Callback"
	.zero	32

	/* #62 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554616
	/* java_name */
	.ascii	"android/hardware/Camera"
	.zero	52

	/* #63 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554617
	/* java_name */
	.ascii	"android/hardware/Camera$CameraInfo"
	.zero	41

	/* #64 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554618
	/* java_name */
	.ascii	"android/hardware/Camera$Parameters"
	.zero	41

	/* #65 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554620
	/* java_name */
	.ascii	"android/hardware/Camera$PictureCallback"
	.zero	36

	/* #66 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554622
	/* java_name */
	.ascii	"android/hardware/Camera$ShutterCallback"
	.zero	36

	/* #67 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554623
	/* java_name */
	.ascii	"android/hardware/Camera$Size"
	.zero	47

	/* #68 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554625
	/* java_name */
	.ascii	"android/hardware/camera2/CameraCharacteristics"
	.zero	29

	/* #69 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554626
	/* java_name */
	.ascii	"android/hardware/camera2/CameraCharacteristics$Key"
	.zero	25

	/* #70 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554627
	/* java_name */
	.ascii	"android/hardware/camera2/CameraManager"
	.zero	37

	/* #71 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554628
	/* java_name */
	.ascii	"android/hardware/camera2/CameraMetadata"
	.zero	36

	/* #72 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554607
	/* java_name */
	.ascii	"android/location/Address"
	.zero	51

	/* #73 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554609
	/* java_name */
	.ascii	"android/location/Criteria"
	.zero	50

	/* #74 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554610
	/* java_name */
	.ascii	"android/location/Geocoder"
	.zero	50

	/* #75 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554614
	/* java_name */
	.ascii	"android/location/Location"
	.zero	50

	/* #76 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554613
	/* java_name */
	.ascii	"android/location/LocationListener"
	.zero	42

	/* #77 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554605
	/* java_name */
	.ascii	"android/location/LocationManager"
	.zero	43

	/* #78 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554590
	/* java_name */
	.ascii	"android/media/AudioManager"
	.zero	49

	/* #79 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554591
	/* java_name */
	.ascii	"android/media/AudioRecord"
	.zero	50

	/* #80 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554592
	/* java_name */
	.ascii	"android/media/MediaPlayer"
	.zero	50

	/* #81 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554597
	/* java_name */
	.ascii	"android/media/VolumeAutomation"
	.zero	45

	/* #82 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554603
	/* java_name */
	.ascii	"android/media/VolumeShaper"
	.zero	49

	/* #83 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554604
	/* java_name */
	.ascii	"android/media/VolumeShaper$Configuration"
	.zero	35

	/* #84 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554588
	/* java_name */
	.ascii	"android/net/Uri"
	.zero	60

	/* #85 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554566
	/* java_name */
	.ascii	"android/os/BaseBundle"
	.zero	54

	/* #86 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554567
	/* java_name */
	.ascii	"android/os/Build"
	.zero	59

	/* #87 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554568
	/* java_name */
	.ascii	"android/os/Build$VERSION"
	.zero	51

	/* #88 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554570
	/* java_name */
	.ascii	"android/os/Bundle"
	.zero	58

	/* #89 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554571
	/* java_name */
	.ascii	"android/os/Environment"
	.zero	53

	/* #90 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554562
	/* java_name */
	.ascii	"android/os/Handler"
	.zero	57

	/* #91 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554575
	/* java_name */
	.ascii	"android/os/IBinder"
	.zero	57

	/* #92 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554573
	/* java_name */
	.ascii	"android/os/IBinder$DeathRecipient"
	.zero	42

	/* #93 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554577
	/* java_name */
	.ascii	"android/os/IInterface"
	.zero	54

	/* #94 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554580
	/* java_name */
	.ascii	"android/os/Looper"
	.zero	58

	/* #95 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554581
	/* java_name */
	.ascii	"android/os/Parcel"
	.zero	58

	/* #96 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554579
	/* java_name */
	.ascii	"android/os/Parcelable"
	.zero	54

	/* #97 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554563
	/* java_name */
	.ascii	"android/os/PowerManager"
	.zero	52

	/* #98 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554564
	/* java_name */
	.ascii	"android/os/PowerManager$WakeLock"
	.zero	43

	/* #99 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554583
	/* java_name */
	.ascii	"android/os/Process"
	.zero	57

	/* #100 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554565
	/* java_name */
	.ascii	"android/os/Vibrator"
	.zero	56

	/* #101 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554561
	/* java_name */
	.ascii	"android/preference/PreferenceManager"
	.zero	39

	/* #102 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554453
	/* java_name */
	.ascii	"android/provider/CallLog"
	.zero	51

	/* #103 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554454
	/* java_name */
	.ascii	"android/provider/CallLog$Calls"
	.zero	45

	/* #104 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554455
	/* java_name */
	.ascii	"android/provider/ContactsContract"
	.zero	42

	/* #105 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554456
	/* java_name */
	.ascii	"android/provider/ContactsContract$CommonDataKinds"
	.zero	26

	/* #106 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554457
	/* java_name */
	.ascii	"android/provider/ContactsContract$CommonDataKinds$Phone"
	.zero	20

	/* #107 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554458
	/* java_name */
	.ascii	"android/provider/ContactsContract$Contacts"
	.zero	33

	/* #108 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554459
	/* java_name */
	.ascii	"android/provider/ContactsContract$Data"
	.zero	37

	/* #109 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554460
	/* java_name */
	.ascii	"android/provider/ContactsContract$PhoneLookup"
	.zero	30

	/* #110 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554461
	/* java_name */
	.ascii	"android/provider/ContactsContract$RawContacts"
	.zero	30

	/* #111 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554462
	/* java_name */
	.ascii	"android/provider/Settings"
	.zero	50

	/* #112 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554463
	/* java_name */
	.ascii	"android/provider/Settings$NameValueTable"
	.zero	35

	/* #113 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554464
	/* java_name */
	.ascii	"android/provider/Settings$Secure"
	.zero	43

	/* #114 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554465
	/* java_name */
	.ascii	"android/provider/Telephony"
	.zero	49

	/* #115 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554466
	/* java_name */
	.ascii	"android/provider/Telephony$Sms"
	.zero	45

	/* #116 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554467
	/* java_name */
	.ascii	"android/provider/Telephony$Sms$Inbox"
	.zero	39

	/* #117 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554468
	/* java_name */
	.ascii	"android/provider/Telephony$Sms$Sent"
	.zero	40

	/* #118 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554767
	/* java_name */
	.ascii	"android/runtime/JavaProxyThrowable"
	.zero	41

	/* #119 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554448
	/* java_name */
	.ascii	"android/speech/tts/TextToSpeech"
	.zero	44

	/* #120 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554450
	/* java_name */
	.ascii	"android/speech/tts/TextToSpeech$OnInitListener"
	.zero	29

	/* #121 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554452
	/* java_name */
	.ascii	"android/speech/tts/TextToSpeech$OnUtteranceCompletedListener"
	.zero	15

	/* #122 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554435
	/* java_name */
	.ascii	"android/support/v13/view/DragAndDropPermissionsCompat"
	.zero	22

	/* #123 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554438
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat"
	.zero	38

	/* #124 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554440
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat$PermissionCompatDelegate"
	.zero	13

	/* #125 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554441
	/* java_name */
	.ascii	"android/support/v4/app/SharedElementCallback"
	.zero	31

	/* #126 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554443
	/* java_name */
	.ascii	"android/support/v4/app/SharedElementCallback$OnSharedElementsReadyListener"
	.zero	1

	/* #127 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554436
	/* java_name */
	.ascii	"android/support/v4/content/ContextCompat"
	.zero	35

	/* #128 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554437
	/* java_name */
	.ascii	"android/support/v4/content/PermissionChecker"
	.zero	31

	/* #129 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554560
	/* java_name */
	.ascii	"android/telephony/SmsManager"
	.zero	47

	/* #130 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554559
	/* java_name */
	.ascii	"android/telephony/TelephonyManager"
	.zero	41

	/* #131 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554557
	/* java_name */
	.ascii	"android/text/ClipboardManager"
	.zero	46

	/* #132 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554556
	/* java_name */
	.ascii	"android/util/AttributeSet"
	.zero	50

	/* #133 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554554
	/* java_name */
	.ascii	"android/util/DisplayMetrics"
	.zero	48

	/* #134 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554499
	/* java_name */
	.ascii	"android/view/ActionMode"
	.zero	52

	/* #135 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554501
	/* java_name */
	.ascii	"android/view/ActionMode$Callback"
	.zero	43

	/* #136 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554504
	/* java_name */
	.ascii	"android/view/ActionProvider"
	.zero	48

	/* #137 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554513
	/* java_name */
	.ascii	"android/view/ContextMenu"
	.zero	51

	/* #138 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554511
	/* java_name */
	.ascii	"android/view/ContextMenu$ContextMenuInfo"
	.zero	35

	/* #139 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554506
	/* java_name */
	.ascii	"android/view/ContextThemeWrapper"
	.zero	43

	/* #140 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554507
	/* java_name */
	.ascii	"android/view/Display"
	.zero	55

	/* #141 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554508
	/* java_name */
	.ascii	"android/view/DragEvent"
	.zero	53

	/* #142 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554522
	/* java_name */
	.ascii	"android/view/InputEvent"
	.zero	52

	/* #143 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554487
	/* java_name */
	.ascii	"android/view/KeyEvent"
	.zero	54

	/* #144 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554489
	/* java_name */
	.ascii	"android/view/KeyEvent$Callback"
	.zero	45

	/* #145 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554490
	/* java_name */
	.ascii	"android/view/LayoutInflater"
	.zero	48

	/* #146 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554492
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory"
	.zero	40

	/* #147 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554494
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory2"
	.zero	39

	/* #148 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554515
	/* java_name */
	.ascii	"android/view/Menu"
	.zero	58

	/* #149 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554521
	/* java_name */
	.ascii	"android/view/MenuItem"
	.zero	54

	/* #150 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554517
	/* java_name */
	.ascii	"android/view/MenuItem$OnActionExpandListener"
	.zero	31

	/* #151 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554519
	/* java_name */
	.ascii	"android/view/MenuItem$OnMenuItemClickListener"
	.zero	30

	/* #152 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554495
	/* java_name */
	.ascii	"android/view/MotionEvent"
	.zero	51

	/* #153 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554539
	/* java_name */
	.ascii	"android/view/SearchEvent"
	.zero	51

	/* #154 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554525
	/* java_name */
	.ascii	"android/view/SubMenu"
	.zero	55

	/* #155 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554484
	/* java_name */
	.ascii	"android/view/View"
	.zero	58

	/* #156 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554486
	/* java_name */
	.ascii	"android/view/View$OnCreateContextMenuListener"
	.zero	30

	/* #157 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554543
	/* java_name */
	.ascii	"android/view/ViewGroup"
	.zero	53

	/* #158 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554544
	/* java_name */
	.ascii	"android/view/ViewGroup$LayoutParams"
	.zero	40

	/* #159 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554527
	/* java_name */
	.ascii	"android/view/ViewManager"
	.zero	51

	/* #160 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554529
	/* java_name */
	.ascii	"android/view/ViewParent"
	.zero	52

	/* #161 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554496
	/* java_name */
	.ascii	"android/view/Window"
	.zero	56

	/* #162 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554498
	/* java_name */
	.ascii	"android/view/Window$Callback"
	.zero	47

	/* #163 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554532
	/* java_name */
	.ascii	"android/view/WindowManager"
	.zero	49

	/* #164 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554530
	/* java_name */
	.ascii	"android/view/WindowManager$LayoutParams"
	.zero	36

	/* #165 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554547
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEvent"
	.zero	30

	/* #166 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554553
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEventSource"
	.zero	24

	/* #167 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554548
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityRecord"
	.zero	29

	/* #168 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554482
	/* java_name */
	.ascii	"android/widget/Toast"
	.zero	55

	/* #169 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554447
	/* java_name */
	.ascii	"crc646c638bcfc2425995/ForegroundService"
	.zero	36

	/* #170 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554442
	/* java_name */
	.ascii	"crc646c638bcfc2425995/KeyListen"
	.zero	44

	/* #171 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554445
	/* java_name */
	.ascii	"crc646c638bcfc2425995/MainActivity"
	.zero	41

	/* #172 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554444
	/* java_name */
	.ascii	"crc646c638bcfc2425995/PhonecallReceiver"
	.zero	36

	/* #173 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554439
	/* java_name */
	.ascii	"crc646c638bcfc2425995/PictureCallback"
	.zero	38

	/* #174 */
	/* module_index */
	.long	1
	/* type_token_id */
	.long	33554488
	/* java_name */
	.ascii	"crc64a0e0a82d0db9a07d/ActivityLifecycleContextListener"
	.zero	21

	/* #175 */
	/* module_index */
	.long	1
	/* type_token_id */
	.long	33554485
	/* java_name */
	.ascii	"crc64a0e0a82d0db9a07d/SingleLocationListener"
	.zero	31

	/* #176 */
	/* module_index */
	.long	1
	/* type_token_id */
	.long	33554489
	/* java_name */
	.ascii	"crc64a0e0a82d0db9a07d/TextToSpeechImplementation"
	.zero	27

	/* #177 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554434
	/* java_name */
	.ascii	"crc64bef6148cb56f42c9/BootReceiver"
	.zero	41

	/* #178 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554435
	/* java_name */
	.ascii	"izci/AdminReceiver"
	.zero	57

	/* #179 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554900
	/* java_name */
	.ascii	"java/io/Closeable"
	.zero	58

	/* #180 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554895
	/* java_name */
	.ascii	"java/io/File"
	.zero	63

	/* #181 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554896
	/* java_name */
	.ascii	"java/io/FileDescriptor"
	.zero	53

	/* #182 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554897
	/* java_name */
	.ascii	"java/io/FileInputStream"
	.zero	52

	/* #183 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554898
	/* java_name */
	.ascii	"java/io/FileOutputStream"
	.zero	51

	/* #184 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554902
	/* java_name */
	.ascii	"java/io/Flushable"
	.zero	58

	/* #185 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554905
	/* java_name */
	.ascii	"java/io/IOException"
	.zero	56

	/* #186 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554903
	/* java_name */
	.ascii	"java/io/InputStream"
	.zero	56

	/* #187 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554908
	/* java_name */
	.ascii	"java/io/OutputStream"
	.zero	55

	/* #188 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554910
	/* java_name */
	.ascii	"java/io/PrintWriter"
	.zero	56

	/* #189 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554907
	/* java_name */
	.ascii	"java/io/Serializable"
	.zero	55

	/* #190 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554911
	/* java_name */
	.ascii	"java/io/StringWriter"
	.zero	55

	/* #191 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554912
	/* java_name */
	.ascii	"java/io/Writer"
	.zero	61

	/* #192 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554861
	/* java_name */
	.ascii	"java/lang/Appendable"
	.zero	55

	/* #193 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554863
	/* java_name */
	.ascii	"java/lang/AutoCloseable"
	.zero	52

	/* #194 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554837
	/* java_name */
	.ascii	"java/lang/Boolean"
	.zero	58

	/* #195 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554838
	/* java_name */
	.ascii	"java/lang/Byte"
	.zero	61

	/* #196 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554864
	/* java_name */
	.ascii	"java/lang/CharSequence"
	.zero	53

	/* #197 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554839
	/* java_name */
	.ascii	"java/lang/Character"
	.zero	56

	/* #198 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554840
	/* java_name */
	.ascii	"java/lang/Class"
	.zero	60

	/* #199 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554856
	/* java_name */
	.ascii	"java/lang/ClassCastException"
	.zero	47

	/* #200 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554841
	/* java_name */
	.ascii	"java/lang/ClassNotFoundException"
	.zero	43

	/* #201 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554867
	/* java_name */
	.ascii	"java/lang/Cloneable"
	.zero	56

	/* #202 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554869
	/* java_name */
	.ascii	"java/lang/Comparable"
	.zero	55

	/* #203 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554842
	/* java_name */
	.ascii	"java/lang/Double"
	.zero	59

	/* #204 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554857
	/* java_name */
	.ascii	"java/lang/Enum"
	.zero	61

	/* #205 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554859
	/* java_name */
	.ascii	"java/lang/Error"
	.zero	60

	/* #206 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554843
	/* java_name */
	.ascii	"java/lang/Exception"
	.zero	56

	/* #207 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554844
	/* java_name */
	.ascii	"java/lang/Float"
	.zero	60

	/* #208 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554870
	/* java_name */
	.ascii	"java/lang/IllegalArgumentException"
	.zero	41

	/* #209 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554871
	/* java_name */
	.ascii	"java/lang/IllegalStateException"
	.zero	44

	/* #210 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554872
	/* java_name */
	.ascii	"java/lang/IndexOutOfBoundsException"
	.zero	40

	/* #211 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554846
	/* java_name */
	.ascii	"java/lang/Integer"
	.zero	58

	/* #212 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554875
	/* java_name */
	.ascii	"java/lang/LinkageError"
	.zero	53

	/* #213 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554847
	/* java_name */
	.ascii	"java/lang/Long"
	.zero	61

	/* #214 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554876
	/* java_name */
	.ascii	"java/lang/NoClassDefFoundError"
	.zero	45

	/* #215 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554877
	/* java_name */
	.ascii	"java/lang/NullPointerException"
	.zero	45

	/* #216 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554878
	/* java_name */
	.ascii	"java/lang/Number"
	.zero	59

	/* #217 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554848
	/* java_name */
	.ascii	"java/lang/Object"
	.zero	59

	/* #218 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554880
	/* java_name */
	.ascii	"java/lang/OutOfMemoryError"
	.zero	49

	/* #219 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554881
	/* java_name */
	.ascii	"java/lang/ReflectiveOperationException"
	.zero	37

	/* #220 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554874
	/* java_name */
	.ascii	"java/lang/Runnable"
	.zero	57

	/* #221 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554849
	/* java_name */
	.ascii	"java/lang/RuntimeException"
	.zero	49

	/* #222 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554850
	/* java_name */
	.ascii	"java/lang/Short"
	.zero	60

	/* #223 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554851
	/* java_name */
	.ascii	"java/lang/String"
	.zero	59

	/* #224 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554853
	/* java_name */
	.ascii	"java/lang/Thread"
	.zero	59

	/* #225 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554855
	/* java_name */
	.ascii	"java/lang/Throwable"
	.zero	56

	/* #226 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554882
	/* java_name */
	.ascii	"java/lang/UnsupportedOperationException"
	.zero	36

	/* #227 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554883
	/* java_name */
	.ascii	"java/lang/VirtualMachineError"
	.zero	46

	/* #228 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554886
	/* java_name */
	.ascii	"java/lang/annotation/Annotation"
	.zero	44

	/* #229 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554888
	/* java_name */
	.ascii	"java/lang/reflect/AnnotatedElement"
	.zero	41

	/* #230 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554890
	/* java_name */
	.ascii	"java/lang/reflect/GenericDeclaration"
	.zero	39

	/* #231 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554892
	/* java_name */
	.ascii	"java/lang/reflect/Type"
	.zero	53

	/* #232 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554894
	/* java_name */
	.ascii	"java/lang/reflect/TypeVariable"
	.zero	45

	/* #233 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554791
	/* java_name */
	.ascii	"java/net/InetSocketAddress"
	.zero	49

	/* #234 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554792
	/* java_name */
	.ascii	"java/net/Proxy"
	.zero	61

	/* #235 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554793
	/* java_name */
	.ascii	"java/net/ProxySelector"
	.zero	53

	/* #236 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554795
	/* java_name */
	.ascii	"java/net/SocketAddress"
	.zero	53

	/* #237 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554797
	/* java_name */
	.ascii	"java/net/URI"
	.zero	63

	/* #238 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554813
	/* java_name */
	.ascii	"java/nio/Buffer"
	.zero	60

	/* #239 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554815
	/* java_name */
	.ascii	"java/nio/ByteBuffer"
	.zero	56

	/* #240 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554820
	/* java_name */
	.ascii	"java/nio/channels/ByteChannel"
	.zero	46

	/* #241 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554822
	/* java_name */
	.ascii	"java/nio/channels/Channel"
	.zero	50

	/* #242 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554817
	/* java_name */
	.ascii	"java/nio/channels/FileChannel"
	.zero	46

	/* #243 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554824
	/* java_name */
	.ascii	"java/nio/channels/GatheringByteChannel"
	.zero	37

	/* #244 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554826
	/* java_name */
	.ascii	"java/nio/channels/InterruptibleChannel"
	.zero	37

	/* #245 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554828
	/* java_name */
	.ascii	"java/nio/channels/ReadableByteChannel"
	.zero	38

	/* #246 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554830
	/* java_name */
	.ascii	"java/nio/channels/ScatteringByteChannel"
	.zero	36

	/* #247 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554832
	/* java_name */
	.ascii	"java/nio/channels/SeekableByteChannel"
	.zero	38

	/* #248 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554834
	/* java_name */
	.ascii	"java/nio/channels/WritableByteChannel"
	.zero	38

	/* #249 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554835
	/* java_name */
	.ascii	"java/nio/channels/spi/AbstractInterruptibleChannel"
	.zero	25

	/* #250 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554801
	/* java_name */
	.ascii	"java/security/KeyStore"
	.zero	53

	/* #251 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554803
	/* java_name */
	.ascii	"java/security/KeyStore$LoadStoreParameter"
	.zero	34

	/* #252 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554805
	/* java_name */
	.ascii	"java/security/KeyStore$ProtectionParameter"
	.zero	33

	/* #253 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554806
	/* java_name */
	.ascii	"java/security/cert/Certificate"
	.zero	45

	/* #254 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554808
	/* java_name */
	.ascii	"java/security/cert/CertificateFactory"
	.zero	38

	/* #255 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554811
	/* java_name */
	.ascii	"java/security/cert/X509Certificate"
	.zero	41

	/* #256 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554810
	/* java_name */
	.ascii	"java/security/cert/X509Extension"
	.zero	43

	/* #257 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554759
	/* java_name */
	.ascii	"java/util/ArrayList"
	.zero	56

	/* #258 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554748
	/* java_name */
	.ascii	"java/util/Collection"
	.zero	55

	/* #259 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554750
	/* java_name */
	.ascii	"java/util/HashMap"
	.zero	58

	/* #260 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554768
	/* java_name */
	.ascii	"java/util/HashSet"
	.zero	58

	/* #261 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554799
	/* java_name */
	.ascii	"java/util/Iterator"
	.zero	57

	/* #262 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554800
	/* java_name */
	.ascii	"java/util/Locale"
	.zero	59

	/* #263 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554439
	/* java_name */
	.ascii	"javax/net/ssl/TrustManager"
	.zero	49

	/* #264 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554442
	/* java_name */
	.ascii	"javax/net/ssl/TrustManagerFactory"
	.zero	42

	/* #265 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554441
	/* java_name */
	.ascii	"javax/net/ssl/X509TrustManager"
	.zero	45

	/* #266 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554935
	/* java_name */
	.ascii	"mono/android/TypeManager"
	.zero	51

	/* #267 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554744
	/* java_name */
	.ascii	"mono/android/runtime/InputStreamAdapter"
	.zero	36

	/* #268 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"mono/android/runtime/JavaArray"
	.zero	45

	/* #269 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554765
	/* java_name */
	.ascii	"mono/android/runtime/JavaObject"
	.zero	44

	/* #270 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554783
	/* java_name */
	.ascii	"mono/android/runtime/OutputStreamAdapter"
	.zero	35

	/* #271 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554854
	/* java_name */
	.ascii	"mono/java/lang/RunnableImplementor"
	.zero	41

	.size	map_java, 22576
/* Java to managed map: END */


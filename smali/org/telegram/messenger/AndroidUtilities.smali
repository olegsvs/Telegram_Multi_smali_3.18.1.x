.class public Lorg/telegram/messenger/AndroidUtilities;
.super Ljava/lang/Object;
.source "AndroidUtilities.java"


# static fields
.field public static final FLAG_TAG_ALL:I = 0x3

.field public static final FLAG_TAG_BOLD:I = 0x2

.field public static final FLAG_TAG_BR:I = 0x1

.field public static final FLAG_TAG_COLOR:I = 0x4

.field public static final THEME_PREFS:Ljava/lang/String; = "theme"

.field public static final THEME_PREFS_MODE:I = 0x0

.field public static WEB_URL:Ljava/util/regex/Pattern; = null

.field private static adjustOwnerClassGuid:I = 0x0

.field private static bitmapRect:Landroid/graphics/RectF; = null

.field private static final callLock:Ljava/lang/Object;

.field private static callLogContentObserver:Landroid/database/ContentObserver; = null

.field public static final defColor:I = -0xff6978

.field public static density:F

.field public static displayMetrics:Landroid/util/DisplayMetrics;

.field public static displaySize:Landroid/graphics/Point;

.field private static hasCallPermissions:Z

.field public static incorrectDisplaySizeFix:Z

.field public static isInMultiwindow:Z

.field private static isTablet:Ljava/lang/Boolean;

.field static lastCheck:J

.field public static leftBaseline:I

.field private static mAttachInfoField:Ljava/lang/reflect/Field;

.field private static mStableInsetsField:Ljava/lang/reflect/Field;

.field public static needRestart:Z

.field public static photoSize:Ljava/lang/Integer;

.field public static playingAGame:Z

.field private static prevOrientation:I

.field private static roundPaint:Landroid/graphics/Paint;

.field private static final smsLock:Ljava/lang/Object;

.field public static statusBarHeight:I

.field public static themeColor:I

.field public static themeUpdated:Z

.field private static final typefaceCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static unregisterRunnable:Ljava/lang/Runnable;

.field public static usingHardwareInput:Z

.field private static waitingForCall:Z

.field private static waitingForSms:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x0

    .line 110
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    sput-object v8, Lorg/telegram/messenger/AndroidUtilities;->typefaceCache:Ljava/util/Hashtable;

    .line 111
    const/16 v8, -0xa

    sput v8, Lorg/telegram/messenger/AndroidUtilities;->prevOrientation:I

    .line 112
    sput-boolean v9, Lorg/telegram/messenger/AndroidUtilities;->waitingForSms:Z

    .line 113
    sput-boolean v9, Lorg/telegram/messenger/AndroidUtilities;->waitingForCall:Z

    .line 114
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    sput-object v8, Lorg/telegram/messenger/AndroidUtilities;->smsLock:Ljava/lang/Object;

    .line 115
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    sput-object v8, Lorg/telegram/messenger/AndroidUtilities;->callLock:Ljava/lang/Object;

    .line 117
    sput v9, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 118
    const/high16 v8, 0x3f800000    # 1.0f

    sput v8, Lorg/telegram/messenger/AndroidUtilities;->density:F

    .line 119
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    sput-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    .line 121
    sput-object v12, Lorg/telegram/messenger/AndroidUtilities;->photoSize:Ljava/lang/Integer;

    .line 122
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v8, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 127
    sput-object v12, Lorg/telegram/messenger/AndroidUtilities;->isTablet:Ljava/lang/Boolean;

    .line 128
    sput v9, Lorg/telegram/messenger/AndroidUtilities;->adjustOwnerClassGuid:I

    .line 133
    sput-object v12, Lorg/telegram/messenger/AndroidUtilities;->WEB_URL:Ljava/util/regex/Pattern;

    .line 139
    const-string/jumbo v8, "themeColor"

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getIntColor(Ljava/lang/String;)I

    move-result v8

    sput v8, Lorg/telegram/messenger/AndroidUtilities;->themeColor:I

    .line 141
    sput-boolean v9, Lorg/telegram/messenger/AndroidUtilities;->needRestart:Z

    .line 142
    sput-boolean v9, Lorg/telegram/messenger/AndroidUtilities;->playingAGame:Z

    .line 144
    sput-boolean v9, Lorg/telegram/messenger/AndroidUtilities;->themeUpdated:Z

    .line 146
    const-wide/16 v10, -0x1

    sput-wide v10, Lorg/telegram/messenger/AndroidUtilities;->lastCheck:J

    .line 150
    :try_start_0
    const-string/jumbo v2, "a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef"

    .line 151
    .local v2, "GOOD_IRI_CHAR":Ljava/lang/String;
    const-string/jumbo v8, "((25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9]))"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 156
    .local v5, "IP_ADDRESS":Ljava/util/regex/Pattern;
    const-string/jumbo v6, "[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\-]{0,61}[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]){0,1}"

    .line 157
    .local v6, "IRI":Ljava/lang/String;
    const-string/jumbo v1, "a-zA-Z\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef"

    .line 158
    .local v1, "GOOD_GTLD_CHAR":Ljava/lang/String;
    const-string/jumbo v3, "[a-zA-Z\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]{2,63}"

    .line 159
    .local v3, "GTLD":Ljava/lang/String;
    const-string/jumbo v4, "([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\-]{0,61}[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]){0,1}\\.)+[a-zA-Z\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]{2,63}"

    .line 160
    .local v4, "HOST_NAME":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "(([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\-]{0,61}[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]){0,1}\\.)+[a-zA-Z\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]{2,63}|"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 161
    .local v0, "DOMAIN_NAME":Ljava/util/regex/Pattern;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "((?:(http|https|Http|Https):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?(?:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "(?:\\:\\d{1,5})?)"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "(\\/(?:(?:["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "\\;\\/\\?\\:\\@\\&\\=\\#\\~"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "\\-\\.\\+\\!\\*\\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "(?:\\b|$)"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Lorg/telegram/messenger/AndroidUtilities;->WEB_URL:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v0    # "DOMAIN_NAME":Ljava/util/regex/Pattern;
    .end local v1    # "GOOD_GTLD_CHAR":Ljava/lang/String;
    .end local v3    # "GTLD":Ljava/lang/String;
    .end local v4    # "HOST_NAME":Ljava/lang/String;
    .end local v5    # "IP_ADDRESS":Ljava/util/regex/Pattern;
    .end local v6    # "IRI":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v8, 0x50

    :goto_1
    sput v8, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    .line 177
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v8, v12}, Lorg/telegram/messenger/AndroidUtilities;->checkDisplaySize(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 676
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v8, v10, :cond_1

    const/4 v8, 0x1

    :goto_2
    sput-boolean v8, Lorg/telegram/messenger/AndroidUtilities;->hasCallPermissions:Z

    return-void

    .line 170
    :catch_0
    move-exception v7

    .line 171
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 176
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_0
    const/16 v8, 0x48

    goto :goto_1

    :cond_1
    move v8, v9

    .line 676
    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Z
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->registerLoginContentObserver(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Runnable;

    .prologue
    .line 108
    sput-object p0, Lorg/telegram/messenger/AndroidUtilities;->unregisterRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static addMediaToGallery(Landroid/net/Uri;)V
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1259
    if-nez p0, :cond_0

    .line 1269
    :goto_0
    return-void

    .line 1263
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1264
    .local v1, "mediaScanIntent":Landroid/content/Intent;
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1265
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1266
    .end local v1    # "mediaScanIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1267
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static addMediaToGallery(Ljava/lang/String;)V
    .locals 2
    .param p0, "fromPath"    # Ljava/lang/String;

    .prologue
    .line 1250
    if-nez p0, :cond_0

    .line 1256
    :goto_0
    return-void

    .line 1253
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1254
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 1255
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public static addToClipboard(Ljava/lang/CharSequence;)V
    .locals 5
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 1241
    :try_start_0
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 1242
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    const-string/jumbo v3, "label"

    invoke-static {v3, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 1243
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1247
    .end local v0    # "clip":Landroid/content/ClipData;
    .end local v1    # "clipboard":Landroid/content/ClipboardManager;
    :goto_0
    return-void

    .line 1244
    :catch_0
    move-exception v2

    .line 1245
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static brandGlowEffect(Landroid/content/Context;I)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "brandColor"    # I

    .prologue
    .line 1695
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "overscroll_glow"

    const-string/jumbo v6, "drawable"

    const-string/jumbo v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1696
    .local v3, "glowDrawableId":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1697
    .local v1, "androidGlow":Landroid/graphics/drawable/Drawable;
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1699
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "overscroll_edge"

    const-string/jumbo v6, "drawable"

    const-string/jumbo v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1700
    .local v2, "edgeDrawableId":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1701
    .local v0, "androidEdge":Landroid/graphics/drawable/Drawable;
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1702
    return-void
.end method

.method public static calcAuthKeyHash([B)[B
    .locals 4
    .param p0, "auth_key"    # [B

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x0

    .line 1533
    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v1

    .line 1534
    .local v1, "sha1":[B
    new-array v0, v3, [B

    .line 1535
    .local v0, "key_hash":[B
    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1536
    return-object v0
.end method

.method public static calcDrawableColor(Landroid/graphics/drawable/Drawable;)[I
    .locals 22
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 181
    const/high16 v10, -0x1000000

    .line 182
    .local v10, "bitmapColor":I
    const/4 v2, 0x2

    new-array v13, v2, [I

    .line 184
    .local v13, "result":[I
    :try_start_0
    move-object/from16 v0, p0

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 185
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 186
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_0

    .line 187
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v9, v2, v3, v4}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 188
    .local v8, "b":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_0

    .line 189
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    .line 190
    if-eq v9, v8, :cond_0

    .line 191
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v8    # "b":Landroid/graphics/Bitmap;
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    shr-int/lit8 v2, v10, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, v10, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v4, v10, 0xff

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->rgbToHsv(III)[D

    move-result-object v12

    .line 203
    .local v12, "hsv":[D
    const/4 v2, 0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x1

    aget-wide v6, v12, v3

    const-wide v16, 0x3fa999999999999aL    # 0.05

    add-double v6, v6, v16

    const-wide v16, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x1

    aget-wide v20, v12, v3

    sub-double v18, v18, v20

    mul-double v16, v16, v18

    add-double v6, v6, v16

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    aput-wide v4, v12, v2

    .line 204
    const/4 v2, 0x2

    const-wide/16 v4, 0x0

    const/4 v3, 0x2

    aget-wide v6, v12, v3

    const-wide v16, 0x3fe4cccccccccccdL    # 0.65

    mul-double v6, v6, v16

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    aput-wide v4, v12, v2

    .line 205
    const/4 v2, 0x0

    aget-wide v2, v12, v2

    const/4 v4, 0x1

    aget-wide v4, v12, v4

    const/4 v6, 0x2

    aget-wide v6, v12, v6

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/AndroidUtilities;->hsvToRgb(DDD)[I

    move-result-object v14

    .line 206
    .local v14, "rgb":[I
    const/4 v2, 0x0

    const/16 v3, 0x66

    const/4 v4, 0x0

    aget v4, v14, v4

    const/4 v5, 0x1

    aget v5, v14, v5

    const/4 v6, 0x2

    aget v6, v14, v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v13, v2

    .line 207
    const/4 v2, 0x1

    const/16 v3, 0x88

    const/4 v4, 0x0

    aget v4, v14, v4

    const/4 v5, 0x1

    aget v5, v14, v5

    const/4 v6, 0x2

    aget v6, v14, v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v13, v2

    .line 208
    return-object v13

    .line 195
    .end local v12    # "hsv":[D
    .end local v14    # "rgb":[I
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    instance-of v2, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_0

    .line 196
    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    goto/16 :goto_0

    .line 198
    :catch_0
    move-exception v11

    .line 199
    .local v11, "e":Ljava/lang/Exception;
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static cancelRunOnUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 616
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 617
    return-void
.end method

.method public static checkDisplaySize(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x1

    .line 547
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    sput v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    .line 548
    move-object v0, p1

    .line 549
    .local v0, "configuration":Landroid/content/res/Configuration;
    if-nez v0, :cond_0

    .line 550
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 552
    :cond_0
    iget v6, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v6, v5, :cond_4

    iget v6, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v6, v5, :cond_4

    :goto_0
    sput-boolean v5, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    .line 553
    const-string/jumbo v5, "window"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 554
    .local v3, "manager":Landroid/view/WindowManager;
    if-eqz v3, :cond_1

    .line 555
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 556
    .local v1, "display":Landroid/view/Display;
    if-eqz v1, :cond_1

    .line 557
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 558
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 561
    .end local v1    # "display":Landroid/view/Display;
    :cond_1
    iget v5, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v5, :cond_2

    .line 562
    iget v5, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v5, v5

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 563
    .local v4, "newSize":I
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v5, v8, :cond_2

    .line 564
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iput v4, v5, Landroid/graphics/Point;->x:I

    .line 567
    .end local v4    # "newSize":I
    :cond_2
    iget v5, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v5, :cond_3

    .line 568
    iget v5, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v5, v5

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 569
    .restart local v4    # "newSize":I
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v5, v8, :cond_3

    .line 570
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iput v4, v5, Landroid/graphics/Point;->y:I

    .line 573
    .end local v4    # "newSize":I
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "display size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    .end local v0    # "configuration":Landroid/content/res/Configuration;
    .end local v3    # "manager":Landroid/view/WindowManager;
    :goto_1
    return-void

    .line 552
    .restart local v0    # "configuration":Landroid/content/res/Configuration;
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 574
    .end local v0    # "configuration":Landroid/content/res/Configuration;
    :catch_0
    move-exception v2

    .line 575
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static checkForCrashes(Landroid/app/Activity;)V
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 1219
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/BuildVars;->HOCKEY_APP_HASH_DEBUG:Ljava/lang/String;

    :goto_0
    new-instance v1, Lorg/telegram/messenger/AndroidUtilities$5;

    invoke-direct {v1}, Lorg/telegram/messenger/AndroidUtilities$5;-><init>()V

    invoke-static {p0, v0, v1}, Lnet/hockeyapp/android/CrashManager;->register(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;)V

    .line 1225
    return-void

    .line 1219
    :cond_0
    sget-object v0, Lorg/telegram/messenger/BuildVars;->HOCKEY_APP_HASH:Ljava/lang/String;

    goto :goto_0
.end method

.method public static checkForThemes(Landroid/app/Activity;)V
    .locals 14
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 1921
    const-wide v4, 0x9a7ec800L

    .line 1922
    .local v4, "myDelay":J
    :try_start_0
    const-string/jumbo v6, "es.rafalense.themes"

    .line 1924
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 1925
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 1974
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "packageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 1928
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v6    # "packageName":Ljava/lang/String;
    :cond_0
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "mainconfig"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1932
    .local v8, "preferences":Landroid/content/SharedPreferences;
    sget-wide v10, Lorg/telegram/messenger/AndroidUtilities;->lastCheck:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-ltz v9, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sget-wide v12, Lorg/telegram/messenger/AndroidUtilities;->lastCheck:J

    sub-long/2addr v10, v12

    cmp-long v9, v10, v4

    if-gez v9, :cond_2

    sget-wide v10, Lorg/telegram/messenger/AndroidUtilities;->lastCheck:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_2

    .line 1934
    :cond_1
    const-string/jumbo v9, "lastTime"

    const-wide/16 v10, 0x0

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    sput-wide v10, Lorg/telegram/messenger/AndroidUtilities;->lastCheck:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1971
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v8    # "preferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 1972
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1938
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v8    # "preferences":Landroid/content/SharedPreferences;
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1939
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v9, "lastTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-interface {v2, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1940
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1941
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1942
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v9, "Themes"

    const v10, 0x7f070625

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1943
    const-string/jumbo v9, "ThemesAppMsg"

    const v10, 0x7f070626

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1944
    move-object v7, v6

    .line 1945
    .local v7, "pck":Ljava/lang/String;
    const-string/jumbo v9, "OK"

    const v10, 0x7f070452

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lorg/telegram/messenger/AndroidUtilities$6;

    invoke-direct {v10, v7, p0}, Lorg/telegram/messenger/AndroidUtilities$6;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v0, v9, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1964
    const-string/jumbo v9, "Cancel"

    const v10, 0x7f0700f0

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1965
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 1966
    const-string/jumbo v9, "lastTime"

    const-wide/16 v10, 0x0

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    sput-wide v10, Lorg/telegram/messenger/AndroidUtilities;->lastCheck:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static checkForUpdates(Landroid/app/Activity;)V
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 1228
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_0

    .line 1229
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/BuildVars;->HOCKEY_APP_HASH_DEBUG:Ljava/lang/String;

    :goto_0
    invoke-static {p0, v0}, Lnet/hockeyapp/android/UpdateManager;->register(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1231
    :cond_0
    return-void

    .line 1229
    :cond_1
    sget-object v0, Lorg/telegram/messenger/BuildVars;->HOCKEY_APP_HASH:Ljava/lang/String;

    goto :goto_0
.end method

.method public static checkPhonePattern(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 698
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "*"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 714
    :cond_0
    :goto_0
    return v5

    .line 701
    :cond_1
    const-string/jumbo v6, "\\*"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 702
    .local v2, "args":[Ljava/lang/String;
    invoke-static {p1}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 703
    const/4 v3, 0x0

    .line 705
    .local v3, "checkStart":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    array-length v6, v2

    if-ge v0, v6, :cond_0

    .line 706
    aget-object v1, v2, v0

    .line 707
    .local v1, "arg":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 708
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .local v4, "index":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    .line 709
    const/4 v5, 0x0

    goto :goto_0

    .line 711
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int v3, v4, v6

    .line 705
    .end local v4    # "index":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static clearCursorDrawable(Landroid/widget/EditText;)V
    .locals 4
    .param p0, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 662
    if-nez p0, :cond_0

    .line 672
    :goto_0
    return-void

    .line 666
    :cond_0
    :try_start_0
    const-class v2, Landroid/widget/TextView;

    const-string/jumbo v3, "mCursorDrawableRes"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 667
    .local v1, "mCursorDrawableRes":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 668
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 669
    .end local v1    # "mCursorDrawableRes":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 670
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static clearDrawableAnimation(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1079
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    if-nez p0, :cond_1

    .line 1095
    .end local p0    # "view":Landroid/view/View;
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 1083
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local p0    # "view":Landroid/view/View;
    :cond_1
    instance-of v1, p0, Landroid/widget/ListView;

    if-eqz v1, :cond_2

    .line 1084
    check-cast p0, Landroid/widget/ListView;

    .end local p0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1085
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1086
    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 1089
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local p0    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1090
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1091
    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1092
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    goto :goto_0
.end method

.method public static compare(II)I
    .locals 1
    .param p0, "lhs"    # I
    .param p1, "rhs"    # I

    .prologue
    .line 530
    if-ne p0, p1, :cond_0

    .line 531
    const/4 v0, 0x0

    .line 535
    :goto_0
    return v0

    .line 532
    :cond_0
    if-le p0, p1, :cond_1

    .line 533
    const/4 v0, 0x1

    goto :goto_0

    .line 535
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 11
    .param p0, "sourceFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1509
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1510
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 1512
    :cond_0
    const/4 v9, 0x0

    .line 1513
    .local v9, "source":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 1515
    .local v6, "destination":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1516
    .end local v9    # "source":Ljava/io/FileInputStream;
    .local v10, "source":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1517
    .end local v6    # "destination":Ljava/io/FileOutputStream;
    .local v7, "destination":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v10}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v10}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1522
    if-eqz v10, :cond_1

    .line 1523
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 1525
    :cond_1
    if-eqz v7, :cond_2

    .line 1526
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 1529
    :cond_2
    const/4 v0, 0x1

    move-object v6, v7

    .end local v7    # "destination":Ljava/io/FileOutputStream;
    .restart local v6    # "destination":Ljava/io/FileOutputStream;
    move-object v9, v10

    .end local v10    # "source":Ljava/io/FileInputStream;
    .restart local v9    # "source":Ljava/io/FileInputStream;
    :cond_3
    :goto_0
    return v0

    .line 1518
    :catch_0
    move-exception v8

    .line 1519
    .local v8, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1520
    const/4 v0, 0x0

    .line 1522
    if-eqz v9, :cond_4

    .line 1523
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 1525
    :cond_4
    if-eqz v6, :cond_3

    .line 1526
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 1522
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v9, :cond_5

    .line 1523
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 1525
    :cond_5
    if-eqz v6, :cond_6

    .line 1526
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    :cond_6
    throw v0

    .line 1522
    .end local v9    # "source":Ljava/io/FileInputStream;
    .restart local v10    # "source":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "source":Ljava/io/FileInputStream;
    .restart local v9    # "source":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v6    # "destination":Ljava/io/FileOutputStream;
    .end local v9    # "source":Ljava/io/FileInputStream;
    .restart local v7    # "destination":Ljava/io/FileOutputStream;
    .restart local v10    # "source":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v0

    move-object v6, v7

    .end local v7    # "destination":Ljava/io/FileOutputStream;
    .restart local v6    # "destination":Ljava/io/FileOutputStream;
    move-object v9, v10

    .end local v10    # "source":Ljava/io/FileInputStream;
    .restart local v9    # "source":Ljava/io/FileInputStream;
    goto :goto_2

    .line 1518
    .end local v9    # "source":Ljava/io/FileInputStream;
    .restart local v10    # "source":Ljava/io/FileInputStream;
    :catch_1
    move-exception v8

    move-object v9, v10

    .end local v10    # "source":Ljava/io/FileInputStream;
    .restart local v9    # "source":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v6    # "destination":Ljava/io/FileOutputStream;
    .end local v9    # "source":Ljava/io/FileInputStream;
    .restart local v7    # "destination":Ljava/io/FileOutputStream;
    .restart local v10    # "source":Ljava/io/FileInputStream;
    :catch_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "destination":Ljava/io/FileOutputStream;
    .restart local v6    # "destination":Ljava/io/FileOutputStream;
    move-object v9, v10

    .end local v10    # "source":Ljava/io/FileInputStream;
    .restart local v9    # "source":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 4
    .param p0, "sourceFile"    # Ljava/io/InputStream;
    .param p1, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1497
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1498
    .local v2, "out":Ljava/io/OutputStream;
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 1500
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    if-lez v1, :cond_0

    .line 1501
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 1502
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 1504
    :cond_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 1505
    const/4 v3, 0x1

    return v3
.end method

.method private static createShortcutIntent(JZ)Landroid/content/Intent;
    .locals 30
    .param p0, "did"    # J
    .param p2, "forDelete"    # Z

    .prologue
    .line 832
    new-instance v20, Landroid/content/Intent;

    sget-object v25, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v26, Lorg/telegram/messenger/OpenChatReceiver;

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 834
    .local v20, "shortcutIntent":Landroid/content/Intent;
    move-wide/from16 v0, p0

    long-to-int v13, v0

    .line 835
    .local v13, "lower_id":I
    const/16 v25, 0x20

    shr-long v26, p0, v25

    move-wide/from16 v0, v26

    long-to-int v11, v0

    .line 837
    .local v11, "high_id":I
    const/16 v23, 0x0

    .line 838
    .local v23, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v7, 0x0

    .line 839
    .local v7, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-nez v13, :cond_2

    .line 840
    const-string/jumbo v25, "encId"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 841
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v25

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v10

    .line 842
    .local v10, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-nez v10, :cond_1

    .line 843
    const/4 v4, 0x0

    .line 939
    .end local v10    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :cond_0
    :goto_0
    return-object v4

    .line 845
    .restart local v10    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v25

    iget v0, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v23

    .line 855
    .end local v10    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :goto_1
    if-nez v23, :cond_5

    if-nez v7, :cond_5

    .line 856
    const/4 v4, 0x0

    goto :goto_0

    .line 846
    :cond_2
    if-lez v13, :cond_3

    .line 847
    const-string/jumbo v25, "userId"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 848
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v25

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v23

    goto :goto_1

    .line 849
    :cond_3
    if-gez v13, :cond_4

    .line 850
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v25

    neg-int v0, v13

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    .line 851
    const-string/jumbo v25, "chatId"

    neg-int v0, v13

    move/from16 v26, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 853
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 860
    :cond_5
    const/16 v16, 0x0

    .line 862
    .local v16, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    if-eqz v23, :cond_9

    .line 863
    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 864
    .local v14, "name":Ljava/lang/String;
    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v25, v0

    if-eqz v25, :cond_6

    .line 865
    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v16, v0

    .line 874
    :cond_6
    :goto_2
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "com.tmessages.openchat"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 875
    const/high16 v25, 0x4000000

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 877
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 878
    .local v4, "addIntent":Landroid/content/Intent;
    const-string/jumbo v25, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 879
    const-string/jumbo v25, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 880
    const-string/jumbo v25, "duplicate"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 881
    if-nez p2, :cond_0

    .line 882
    const/4 v5, 0x0

    .line 883
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v16, :cond_8

    .line 885
    const/16 v25, 0x1

    :try_start_0
    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v15

    .line 886
    .local v15, "path":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 887
    if-eqz v5, :cond_8

    .line 888
    const/high16 v25, 0x42680000    # 58.0f

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v21

    .line 889
    .local v21, "size":I
    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v21

    move/from16 v1, v21

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 890
    .local v17, "result":Landroid/graphics/Bitmap;
    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 891
    new-instance v6, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 892
    .local v6, "canvas":Landroid/graphics/Canvas;
    new-instance v19, Landroid/graphics/BitmapShader;

    sget-object v25, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v26, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v5, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 893
    .local v19, "shader":Landroid/graphics/BitmapShader;
    sget-object v25, Lorg/telegram/messenger/AndroidUtilities;->roundPaint:Landroid/graphics/Paint;

    if-nez v25, :cond_7

    .line 894
    new-instance v25, Landroid/graphics/Paint;

    const/16 v26, 0x1

    invoke-direct/range {v25 .. v26}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v25, Lorg/telegram/messenger/AndroidUtilities;->roundPaint:Landroid/graphics/Paint;

    .line 895
    new-instance v25, Landroid/graphics/RectF;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/RectF;-><init>()V

    sput-object v25, Lorg/telegram/messenger/AndroidUtilities;->bitmapRect:Landroid/graphics/RectF;

    .line 897
    :cond_7
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v18, v25, v26

    .line 898
    .local v18, "scale":F
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 899
    move/from16 v0, v18

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 900
    sget-object v25, Lorg/telegram/messenger/AndroidUtilities;->roundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 901
    sget-object v25, Lorg/telegram/messenger/AndroidUtilities;->bitmapRect:Landroid/graphics/RectF;

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v25 .. v29}, Landroid/graphics/RectF;->set(FFFF)V

    .line 902
    sget-object v25, Lorg/telegram/messenger/AndroidUtilities;->bitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sget-object v28, Lorg/telegram/messenger/AndroidUtilities;->roundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 903
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 904
    sget-object v25, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f020034

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 905
    .local v8, "drawable":Landroid/graphics/drawable/Drawable;
    const/high16 v25, 0x41700000    # 15.0f

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v24

    .line 906
    .local v24, "w":I
    sub-int v25, v21, v24

    const/high16 v26, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v26

    sub-int v12, v25, v26

    .line 907
    .local v12, "left":I
    sub-int v25, v21, v24

    const/high16 v26, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v26

    sub-int v22, v25, v26

    .line 908
    .local v22, "top":I
    add-int v25, v12, v24

    add-int v26, v22, v24

    move/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v8, v12, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 909
    invoke-virtual {v8, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    const/16 v25, 0x0

    :try_start_1
    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 915
    :goto_3
    move-object/from16 v5, v17

    .line 921
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v12    # "left":I
    .end local v15    # "path":Ljava/io/File;
    .end local v17    # "result":Landroid/graphics/Bitmap;
    .end local v18    # "scale":F
    .end local v19    # "shader":Landroid/graphics/BitmapShader;
    .end local v21    # "size":I
    .end local v22    # "top":I
    .end local v24    # "w":I
    :cond_8
    :goto_4
    if-eqz v5, :cond_a

    .line 922
    const-string/jumbo v25, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 868
    .end local v4    # "addIntent":Landroid/content/Intent;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v14    # "name":Ljava/lang/String;
    :cond_9
    iget-object v14, v7, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 869
    .restart local v14    # "name":Ljava/lang/String;
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v25, v0

    if-eqz v25, :cond_6

    .line 870
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v16, v0

    goto/16 :goto_2

    .line 917
    .restart local v4    # "addIntent":Landroid/content/Intent;
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v9

    .line 918
    .local v9, "e":Ljava/lang/Throwable;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 924
    .end local v9    # "e":Ljava/lang/Throwable;
    :cond_a
    if-eqz v23, :cond_c

    .line 925
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    move/from16 v25, v0

    if-eqz v25, :cond_b

    .line 926
    const-string/jumbo v25, "android.intent.extra.shortcut.ICON_RESOURCE"

    sget-object v26, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const v27, 0x7f020031

    invoke-static/range {v26 .. v27}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 928
    :cond_b
    const-string/jumbo v25, "android.intent.extra.shortcut.ICON_RESOURCE"

    sget-object v26, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const v27, 0x7f020035

    invoke-static/range {v26 .. v27}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 930
    :cond_c
    if-eqz v7, :cond_0

    .line 931
    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v25

    if-eqz v25, :cond_d

    iget-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v25, v0

    if-nez v25, :cond_d

    .line 932
    const-string/jumbo v25, "android.intent.extra.shortcut.ICON_RESOURCE"

    sget-object v26, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const v27, 0x7f020032

    invoke-static/range {v26 .. v27}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 934
    :cond_d
    const-string/jumbo v25, "android.intent.extra.shortcut.ICON_RESOURCE"

    sget-object v26, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const v27, 0x7f020033

    invoke-static/range {v26 .. v27}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 912
    .restart local v6    # "canvas":Landroid/graphics/Canvas;
    .restart local v8    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "left":I
    .restart local v15    # "path":Ljava/io/File;
    .restart local v17    # "result":Landroid/graphics/Bitmap;
    .restart local v18    # "scale":F
    .restart local v19    # "shader":Landroid/graphics/BitmapShader;
    .restart local v21    # "size":I
    .restart local v22    # "top":I
    .restart local v24    # "w":I
    :catch_1
    move-exception v25

    goto/16 :goto_3
.end method

.method public static decodeQuotedPrintable([B)[B
    .locals 9
    .param p0, "bytes"    # [B

    .prologue
    const/4 v0, 0x0

    .line 1468
    if-nez p0, :cond_0

    .line 1493
    :goto_0
    return-object v0

    .line 1471
    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1472
    .local v2, "buffer":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v7, p0

    if-ge v4, v7, :cond_2

    .line 1473
    aget-byte v1, p0, v4

    .line 1474
    .local v1, "b":I
    const/16 v7, 0x3d

    if-ne v1, v7, :cond_1

    .line 1476
    add-int/lit8 v4, v4, 0x1

    :try_start_0
    aget-byte v7, p0, v4

    int-to-char v7, v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 1477
    .local v6, "u":I
    add-int/lit8 v4, v4, 0x1

    aget-byte v7, p0, v4

    int-to-char v7, v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 1478
    .local v5, "l":I
    shl-int/lit8 v7, v6, 0x4

    add-int/2addr v7, v5

    int-to-char v7, v7

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1472
    .end local v5    # "l":I
    .end local v6    # "u":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1479
    :catch_0
    move-exception v3

    .line 1480
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1484
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 1487
    .end local v1    # "b":I
    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 1489
    .local v0, "array":[B
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1490
    :catch_1
    move-exception v3

    .line 1491
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static dp(F)I
    .locals 2
    .param p0, "value"    # F

    .prologue
    .line 516
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    .line 517
    const/4 v0, 0x0

    .line 519
    :goto_0
    return v0

    :cond_0
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method public static dp2(F)I
    .locals 2
    .param p0, "value"    # F

    .prologue
    .line 523
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    .line 524
    const/4 v0, 0x0

    .line 526
    :goto_0
    return v0

    :cond_0
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method public static dpf2(F)F
    .locals 2
    .param p0, "value"    # F

    .prologue
    const/4 v0, 0x0

    .line 539
    cmpl-float v1, p0, v0

    if-nez v1, :cond_0

    .line 542
    :goto_0
    return v0

    :cond_0
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v0, p0

    goto :goto_0
.end method

.method public static endIncomingCall()V
    .locals 7

    .prologue
    .line 680
    sget-boolean v5, Lorg/telegram/messenger/AndroidUtilities;->hasCallPermissions:Z

    if-nez v5, :cond_0

    .line 695
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    return-void

    .line 684
    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    :try_start_0
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 685
    .restart local v4    # "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 686
    .local v0, "c":Ljava/lang/Class;
    const-string/jumbo v5, "getITelephony"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 687
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 688
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/ITelephony;

    .line 689
    .local v3, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    check-cast v3, Lcom/android/internal/telephony/ITelephony;

    .line 690
    .restart local v3    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V

    .line 691
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 692
    .end local v0    # "c":Ljava/lang/Class;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 693
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static formatFileSize(J)Ljava/lang/String;
    .locals 6
    .param p0, "size"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x44800000    # 1024.0f

    .line 1456
    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 1457
    const-string/jumbo v0, "%d B"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1463
    :goto_0
    return-object v0

    .line 1458
    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 1459
    const-string/jumbo v0, "%.1f KB"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-float v2, p0

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1460
    :cond_1
    const-wide/32 v0, 0x40000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_2

    .line 1461
    const-string/jumbo v0, "%.1f MB"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-float v2, p0

    div-float/2addr v2, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1463
    :cond_2
    const-string/jumbo v0, "%.1f GB"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-float v2, p0

    div-float/2addr v2, v3

    div-float/2addr v2, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static generatePicturePath()Ljava/io/File;
    .locals 6

    .prologue
    .line 1385
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getAlbumDir()Ljava/io/File;

    move-result-object v1

    .line 1386
    .local v1, "storageDir":Ljava/io/File;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMdd_HHmmss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1387
    .local v2, "timeStamp":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IMG_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1391
    .end local v2    # "timeStamp":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1388
    :catch_0
    move-exception v0

    .line 1389
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1391
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 15
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "name2"    # Ljava/lang/String;
    .param p2, "q"    # Ljava/lang/String;

    .prologue
    .line 1395
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 1396
    const-string/jumbo v1, ""

    .line 1441
    :cond_0
    :goto_0
    return-object v1

    .line 1398
    :cond_1
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1399
    .local v1, "builder":Landroid/text/SpannableStringBuilder;
    move-object v11, p0

    .line 1400
    .local v11, "wholeString":Ljava/lang/String;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_6

    .line 1401
    :cond_2
    move-object/from16 v11, p1

    .line 1405
    :cond_3
    :goto_1
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 1406
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1408
    .local v7, "lower":Ljava/lang/String;
    sget-object v12, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v13, "theme"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 1410
    .local v10, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v12, "chatsHighlightSearchColor"

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->lightColor:I

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1413
    .local v3, "hColor":I
    const/4 v6, 0x0

    .line 1414
    .local v6, "lastIndex":I
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .local v5, "index":I
    const/4 v12, -0x1

    if-eq v5, v12, :cond_b

    .line 1415
    if-nez v5, :cond_7

    const/4 v12, 0x0

    :goto_3
    sub-int v4, v5, v12

    .line 1416
    .local v4, "idx":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v5, :cond_8

    const/4 v12, 0x0

    :goto_4
    add-int/2addr v12, v13

    add-int v2, v12, v4

    .line 1418
    .local v2, "end":I
    if-eqz v6, :cond_9

    add-int/lit8 v12, v4, 0x1

    if-eq v6, v12, :cond_9

    .line 1419
    invoke-virtual {v11, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1424
    :cond_4
    :goto_5
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-virtual {v11, v4, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1425
    .local v8, "query":Ljava/lang/String;
    const-string/jumbo v12, " "

    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1426
    const-string/jumbo v12, " "

    invoke-virtual {v1, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1428
    :cond_5
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 1430
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    .line 1431
    .local v9, "start":I
    invoke-virtual {v1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1432
    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    sget-boolean v12, Lorg/telegram/ui/ActionBar/Theme;->usemultiTheme:Z

    if-eqz v12, :cond_a

    move v12, v3

    :goto_6
    invoke-direct {v13, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v9

    const/16 v14, 0x21

    invoke-virtual {v1, v13, v9, v12, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1434
    move v6, v2

    .line 1435
    goto :goto_2

    .line 1402
    .end local v2    # "end":I
    .end local v3    # "hColor":I
    .end local v4    # "idx":I
    .end local v5    # "index":I
    .end local v6    # "lastIndex":I
    .end local v7    # "lower":Ljava/lang/String;
    .end local v8    # "query":Ljava/lang/String;
    .end local v9    # "start":I
    .end local v10    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_6
    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_3

    .line 1403
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 1415
    .restart local v3    # "hColor":I
    .restart local v5    # "index":I
    .restart local v6    # "lastIndex":I
    .restart local v7    # "lower":Ljava/lang/String;
    .restart local v10    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_7
    const/4 v12, 0x1

    goto :goto_3

    .line 1416
    .restart local v4    # "idx":I
    :cond_8
    const/4 v12, 0x1

    goto :goto_4

    .line 1420
    .restart local v2    # "end":I
    :cond_9
    if-nez v6, :cond_4

    if-eqz v4, :cond_4

    .line 1421
    const/4 v12, 0x0

    invoke-virtual {v11, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_5

    .line 1432
    .restart local v8    # "query":Ljava/lang/String;
    .restart local v9    # "start":I
    :cond_a
    const-string/jumbo v12, "windowBackgroundWhiteBlueText4"

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v12

    goto :goto_6

    .line 1437
    .end local v2    # "end":I
    .end local v4    # "idx":I
    .end local v8    # "query":Ljava/lang/String;
    .end local v9    # "start":I
    :cond_b
    const/4 v12, -0x1

    if-eq v6, v12, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-eq v6, v12, :cond_0

    .line 1438
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0
.end method

.method public static generateVideoPath()Ljava/io/File;
    .locals 6

    .prologue
    .line 1446
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getAlbumDir()Ljava/io/File;

    move-result-object v1

    .line 1447
    .local v1, "storageDir":Ljava/io/File;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMdd_HHmmss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1448
    .local v2, "timeStamp":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "VID_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".mp4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1452
    .end local v2    # "timeStamp":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1449
    :catch_0
    move-exception v0

    .line 1450
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1452
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static getAlbumDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 1272
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1273
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 1288
    .local v0, "storageDir":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v0

    .line 1275
    .end local v0    # "storageDir":Ljava/io/File;
    :cond_1
    const/4 v0, 0x0

    .line 1276
    .restart local v0    # "storageDir":Ljava/io/File;
    const-string/jumbo v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1277
    new-instance v0, Ljava/io/File;

    .end local v0    # "storageDir":Ljava/io/File;
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "Telegram"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1278
    .restart local v0    # "storageDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1279
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1280
    const-string/jumbo v1, "failed to create directory"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1281
    const/4 v0, 0x0

    goto :goto_0

    .line 1285
    :cond_2
    const-string/jumbo v1, "External storage is not mounted READ/WRITE."

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getBoolMain(Ljava/lang/String;)Z
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1829
    const/4 v0, 0x0

    .line 1830
    .local v0, "s":Z
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "mainconfig"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1831
    :cond_0
    return v0
.end method

.method public static getBoolPref(Ljava/lang/String;)Z
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1823
    const/4 v0, 0x0

    .line 1824
    .local v0, "s":Z
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "theme"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1825
    :cond_0
    return v0
.end method

.method public static getCacheDir()Ljava/io/File;
    .locals 4

    .prologue
    .line 488
    const/4 v2, 0x0

    .line 490
    .local v2, "state":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 494
    :goto_0
    if-eqz v2, :cond_0

    const-string/jumbo v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 496
    :cond_0
    :try_start_1
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 497
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_2

    .line 512
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    return-object v1

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 500
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 501
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 505
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .line 506
    .restart local v1    # "file":Ljava/io/File;
    if-nez v1, :cond_1

    .line 512
    .end local v1    # "file":Ljava/io/File;
    :goto_2
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, ""

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 509
    :catch_2
    move-exception v0

    .line 510
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 1345
    const/4 v8, 0x0

    .line 1346
    .local v8, "cursor":Landroid/database/Cursor;
    const-string/jumbo v6, "_data"

    .line 1347
    .local v6, "column":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .line 1352
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1353
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1354
    const-string/jumbo v0, "_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1355
    .local v7, "column_index":I
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1356
    .local v10, "value":Ljava/lang/String;
    const-string/jumbo v0, "content://"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "file://"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 1364
    :cond_0
    if-eqz v8, :cond_1

    .line 1365
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v10, v11

    .line 1368
    .end local v7    # "column_index":I
    .end local v10    # "value":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v10

    .line 1364
    .restart local v7    # "column_index":I
    .restart local v10    # "value":Ljava/lang/String;
    :cond_3
    if-eqz v8, :cond_2

    .line 1365
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1364
    .end local v7    # "column_index":I
    .end local v10    # "value":Ljava/lang/String;
    :cond_4
    if-eqz v8, :cond_5

    .line 1365
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_1
    move-object v10, v11

    .line 1368
    goto :goto_0

    .line 1361
    :catch_0
    move-exception v9

    .line 1362
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1364
    if-eqz v8, :cond_5

    .line 1365
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1364
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    .line 1365
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public static getDefBubbleColor()I
    .locals 3

    .prologue
    .line 1910
    const v0, -0x4d2025

    .line 1911
    .local v0, "color":I
    const-string/jumbo v1, "themeColor"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getIntColor(Ljava/lang/String;)I

    move-result v1

    const v2, -0xff6978

    if-eq v1, v2, :cond_0

    .line 1912
    const-string/jumbo v1, "themeColor"

    const/16 v2, -0x50

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->getIntDarkerColor(Ljava/lang/String;I)I

    move-result v0

    .line 1914
    :cond_0
    return v0
.end method

.method public static getIntAlphaColor(IF)I
    .locals 5
    .param p0, "color"    # I
    .param p1, "factor"    # F

    .prologue
    .line 1731
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1732
    .local v0, "alpha":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 1733
    .local v3, "red":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 1734
    .local v2, "green":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 1735
    .local v1, "blue":I
    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    return v4
.end method

.method public static getIntAlphaColor(Ljava/lang/String;IF)I
    .locals 9
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # I
    .param p2, "factor"    # F

    .prologue
    .line 1721
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "theme"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1722
    .local v5, "themePrefs":Landroid/content/SharedPreferences;
    invoke-interface {v5, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1723
    .local v2, "color":I
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1724
    .local v0, "alpha":I
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 1725
    .local v4, "red":I
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 1726
    .local v3, "green":I
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 1727
    .local v1, "blue":I
    invoke-static {v0, v4, v3, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    return v6
.end method

.method public static getIntColor(Ljava/lang/String;)I
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1705
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "theme"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1706
    .local v0, "themePrefs":Landroid/content/SharedPreferences;
    const v1, -0xff6978

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getIntDarkerColor(Ljava/lang/String;I)I
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "factor"    # I

    .prologue
    .line 1739
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "theme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1740
    .local v1, "themePrefs":Landroid/content/SharedPreferences;
    const v2, -0xff6978

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1741
    .local v0, "color":I
    invoke-static {v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->setDarkColor(II)I

    move-result v2

    return v2
.end method

.method public static getIntDef(Ljava/lang/String;I)I
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # I

    .prologue
    .line 1716
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "theme"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1717
    .local v0, "themePrefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getIntTColor(Ljava/lang/String;)I
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1710
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "theme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1711
    .local v1, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "themeColor"

    const v3, -0xff6978

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1712
    .local v0, "def":I
    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public static getMinTabletSide()I
    .locals 6

    .prologue
    const/high16 v5, 0x43a00000    # 320.0f

    .line 632
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v3

    if-nez v3, :cond_1

    .line 633
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 634
    .local v2, "smallSide":I
    mul-int/lit8 v3, v2, 0x23

    div-int/lit8 v0, v3, 0x64

    .line 635
    .local v0, "leftSide":I
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 636
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 638
    :cond_0
    sub-int v3, v2, v0

    .line 646
    :goto_0
    return v3

    .line 640
    .end local v0    # "leftSide":I
    .end local v2    # "smallSide":I
    :cond_1
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 641
    .restart local v2    # "smallSide":I
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 642
    .local v1, "maxSide":I
    mul-int/lit8 v3, v1, 0x23

    div-int/lit8 v0, v3, 0x64

    .line 643
    .restart local v0    # "leftSide":I
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 644
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 646
    :cond_2
    sub-int v3, v1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0
.end method

.method public static getMyLayerVersion(I)I
    .locals 1
    .param p0, "layer"    # I

    .prologue
    .line 588
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static getPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 14
    .param p0, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 1294
    :try_start_0
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x13

    if-lt v11, v13, :cond_1

    move v4, v12

    .line 1295
    .local v4, "isKitKat":Z
    :goto_0
    if-eqz v4, :cond_5

    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v11, p0}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1296
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1297
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1298
    .local v1, "docId":Ljava/lang/String;
    const-string/jumbo v10, ":"

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1299
    .local v7, "split":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v8, v7, v10

    .line 1300
    .local v8, "type":Ljava/lang/String;
    const-string/jumbo v10, "primary"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1301
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1340
    .end local v1    # "docId":Ljava/lang/String;
    .end local v4    # "isKitKat":Z
    .end local v7    # "split":[Ljava/lang/String;
    .end local v8    # "type":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v9

    :cond_1
    move v4, v10

    .line 1294
    goto :goto_0

    .line 1303
    .restart local v4    # "isKitKat":Z
    :cond_2
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1304
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 1305
    .local v3, "id":Ljava/lang/String;
    const-string/jumbo v10, "content://downloads/public_downloads"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v10, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1306
    .local v0, "contentUri":Landroid/net/Uri;
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v0, v11, v12}, Lorg/telegram/messenger/AndroidUtilities;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 1307
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v3    # "id":Ljava/lang/String;
    :cond_3
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1308
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1309
    .restart local v1    # "docId":Ljava/lang/String;
    const-string/jumbo v11, ":"

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1310
    .restart local v7    # "split":[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v8, v7, v11

    .line 1312
    .restart local v8    # "type":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1313
    .restart local v0    # "contentUri":Landroid/net/Uri;
    const/4 v11, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    :cond_4
    move v10, v11

    :goto_2
    packed-switch v10, :pswitch_data_0

    .line 1325
    :goto_3
    const-string/jumbo v5, "_id=?"

    .line 1326
    .local v5, "selection":Ljava/lang/String;
    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x1

    aget-object v11, v7, v11

    aput-object v11, v6, v10

    .line 1330
    .local v6, "selectionArgs":[Ljava/lang/String;
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v11, "_id=?"

    invoke-static {v10, v0, v11, v6}, Lorg/telegram/messenger/AndroidUtilities;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 1313
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v12, "image"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_2

    :sswitch_1
    const-string/jumbo v10, "video"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v10, v12

    goto :goto_2

    :sswitch_2
    const-string/jumbo v10, "audio"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x2

    goto :goto_2

    .line 1315
    :pswitch_0
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1316
    goto :goto_3

    .line 1318
    :pswitch_1
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1319
    goto :goto_3

    .line 1321
    :pswitch_2
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_3

    .line 1332
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "docId":Ljava/lang/String;
    .end local v7    # "split":[Ljava/lang/String;
    .end local v8    # "type":Ljava/lang/String;
    :cond_5
    const-string/jumbo v10, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1333
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, p0, v11, v12}, Lorg/telegram/messenger/AndroidUtilities;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 1334
    :cond_6
    const-string/jumbo v10, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1335
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto/16 :goto_1

    .line 1337
    .end local v4    # "isKitKat":Z
    :catch_0
    move-exception v2

    .line 1338
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1313
    nop

    :sswitch_data_0
    .sparse-switch
        0x58d9bd6 -> :sswitch_2
        0x5faa95b -> :sswitch_0
        0x6b0147b -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getPeerLayerVersion(I)I
    .locals 2
    .param p0, "layer"    # I

    .prologue
    .line 592
    shr-int/lit8 v0, p0, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public static getPhotoSize()I
    .locals 2

    .prologue
    .line 651
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->photoSize:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 652
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 653
    const/16 v0, 0x500

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->photoSize:Ljava/lang/Integer;

    .line 658
    :cond_0
    :goto_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->photoSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 655
    :cond_1
    const/16 v0, 0x320

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->photoSize:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public static getPixelsInCM(FZ)F
    .locals 2
    .param p0, "cm"    # F
    .param p1, "isX"    # Z

    .prologue
    .line 580
    const v0, 0x40228f5c    # 2.54f

    div-float v1, p0, v0

    if-eqz p1, :cond_0

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    :goto_0
    mul-float/2addr v0, v1

    return v0

    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    goto :goto_0
.end method

.method public static getRealScreenSize()Landroid/graphics/Point;
    .locals 8

    .prologue
    .line 989
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 991
    .local v3, "size":Landroid/graphics/Point;
    :try_start_0
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 992
    .local v4, "windowManager":Landroid/view/WindowManager;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_0

    .line 993
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1007
    .end local v4    # "windowManager":Landroid/view/WindowManager;
    :goto_0
    return-object v3

    .line 996
    .restart local v4    # "windowManager":Landroid/view/WindowManager;
    :cond_0
    :try_start_1
    const-class v5, Landroid/view/Display;

    const-string/jumbo v6, "getRawWidth"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 997
    .local v2, "mGetRawW":Ljava/lang/reflect/Method;
    const-class v5, Landroid/view/Display;

    const-string/jumbo v6, "getRawHeight"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 998
    .local v1, "mGetRawH":Ljava/lang/reflect/Method;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v6, v5}, Landroid/graphics/Point;->set(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 999
    .end local v1    # "mGetRawH":Ljava/lang/reflect/Method;
    .end local v2    # "mGetRawW":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1000
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Point;->set(II)V

    .line 1001
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1004
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "windowManager":Landroid/view/WindowManager;
    :catch_1
    move-exception v0

    .line 1005
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getTrimmedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "src"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v4, 0x20

    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 1011
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1020
    :cond_0
    return-object p0

    .line 1014
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_2

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_3

    .line 1015
    :cond_2
    const/4 v0, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    .line 1017
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1018
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_1
.end method

.method public static getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "assetPath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 404
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->typefaceCache:Ljava/util/Hashtable;

    monitor-enter v3

    .line 405
    :try_start_0
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->typefaceCache:Ljava/util/Hashtable;

    invoke-virtual {v4, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 407
    :try_start_1
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-static {v4, p0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 408
    .local v1, "t":Landroid/graphics/Typeface;
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->typefaceCache:Ljava/util/Hashtable;

    invoke-virtual {v4, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    .end local v1    # "t":Landroid/graphics/Typeface;
    :cond_0
    :try_start_2
    sget-boolean v4, Lorg/telegram/messenger/ApplicationLoader;->USE_DEVICE_FONT:Z

    if-eqz v4, :cond_1

    monitor-exit v3

    .line 415
    :goto_0
    return-object v2

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not get typeface \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' because "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 411
    monitor-exit v3

    goto :goto_0

    .line 416
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 415
    :cond_1
    :try_start_3
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->typefaceCache:Ljava/util/Hashtable;

    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1836
    :try_start_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1837
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "multi v%s-%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1841
    :goto_0
    return-object v2

    .line 1838
    :catch_0
    move-exception v0

    .line 1839
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1841
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getViewInset(Landroid/view/View;)I
    .locals 7
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 965
    if-eqz p0, :cond_0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-eq v4, v5, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v5, v6

    if-ne v4, v5, :cond_1

    .line 985
    :cond_0
    :goto_0
    return v3

    .line 969
    :cond_1
    :try_start_0
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->mAttachInfoField:Ljava/lang/reflect/Field;

    if-nez v4, :cond_2

    .line 970
    const-class v4, Landroid/view/View;

    const-string/jumbo v5, "mAttachInfo"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Lorg/telegram/messenger/AndroidUtilities;->mAttachInfoField:Ljava/lang/reflect/Field;

    .line 971
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->mAttachInfoField:Ljava/lang/reflect/Field;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 973
    :cond_2
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->mAttachInfoField:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 974
    .local v2, "mAttachInfo":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 975
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->mStableInsetsField:Ljava/lang/reflect/Field;

    if-nez v4, :cond_3

    .line 976
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "mStableInsets"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Lorg/telegram/messenger/AndroidUtilities;->mStableInsetsField:Ljava/lang/reflect/Field;

    .line 977
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->mStableInsetsField:Ljava/lang/reflect/Field;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 979
    :cond_3
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->mStableInsetsField:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 980
    .local v1, "insets":Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 982
    .end local v1    # "insets":Landroid/graphics/Rect;
    .end local v2    # "mAttachInfo":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 983
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static hideKeyboard(Landroid/view/View;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 473
    if-nez p0, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 478
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 481
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 482
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static hsvToRgb(DDD)[I
    .locals 22
    .param p0, "h"    # D
    .param p2, "s"    # D
    .param p4, "v"    # D

    .prologue
    .line 236
    const-wide/16 v14, 0x0

    .local v14, "r":D
    const-wide/16 v6, 0x0

    .local v6, "g":D
    const-wide/16 v2, 0x0

    .line 237
    .local v2, "b":D
    const-wide/high16 v18, 0x4018000000000000L    # 6.0

    mul-double v18, v18, p0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->floor(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v8, v0

    .line 238
    .local v8, "i":D
    const-wide/high16 v18, 0x4018000000000000L    # 6.0

    mul-double v18, v18, p0

    sub-double v4, v18, v8

    .line 239
    .local v4, "f":D
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v18, v18, p2

    mul-double v10, p4, v18

    .line 240
    .local v10, "p":D
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    mul-double v20, v4, p2

    sub-double v18, v18, v20

    mul-double v12, p4, v18

    .line 241
    .local v12, "q":D
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v20, v20, v4

    mul-double v20, v20, p2

    sub-double v18, v18, v20

    mul-double v16, p4, v18

    .line 242
    .local v16, "t":D
    double-to-int v0, v8

    move/from16 v18, v0

    rem-int/lit8 v18, v18, 0x6

    packed-switch v18, :pswitch_data_0

    .line 274
    :goto_0
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-wide v20, 0x406fe00000000000L    # 255.0

    mul-double v20, v20, v14

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    aput v20, v18, v19

    const/16 v19, 0x1

    const-wide v20, 0x406fe00000000000L    # 255.0

    mul-double v20, v20, v6

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    aput v20, v18, v19

    const/16 v19, 0x2

    const-wide v20, 0x406fe00000000000L    # 255.0

    mul-double v20, v20, v2

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    aput v20, v18, v19

    return-object v18

    .line 244
    :pswitch_0
    move-wide/from16 v14, p4

    .line 245
    move-wide/from16 v6, v16

    .line 246
    move-wide v2, v10

    .line 247
    goto :goto_0

    .line 249
    :pswitch_1
    move-wide v14, v12

    .line 250
    move-wide/from16 v6, p4

    .line 251
    move-wide v2, v10

    .line 252
    goto :goto_0

    .line 254
    :pswitch_2
    move-wide v14, v10

    .line 255
    move-wide/from16 v6, p4

    .line 256
    move-wide/from16 v2, v16

    .line 257
    goto :goto_0

    .line 259
    :pswitch_3
    move-wide v14, v10

    .line 260
    move-wide v6, v12

    .line 261
    move-wide/from16 v2, p4

    .line 262
    goto :goto_0

    .line 264
    :pswitch_4
    move-wide/from16 v14, v16

    .line 265
    move-wide v6, v10

    .line 266
    move-wide/from16 v2, p4

    .line 267
    goto :goto_0

    .line 269
    :pswitch_5
    move-wide/from16 v14, p4

    .line 270
    move-wide v6, v10

    .line 271
    move-wide v2, v12

    goto :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static installShortcut(J)V
    .locals 4
    .param p0, "did"    # J

    .prologue
    .line 944
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, p1, v2}, Lorg/telegram/messenger/AndroidUtilities;->createShortcutIntent(JZ)Landroid/content/Intent;

    move-result-object v0

    .line 945
    .local v0, "addIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 946
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 950
    .end local v0    # "addIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 947
    :catch_0
    move-exception v1

    .line 948
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1987
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1990
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1991
    const/4 v1, 0x1

    .line 1996
    .local v1, "isAppInstalled":Z
    :goto_0
    return v1

    .line 1993
    .end local v1    # "isAppInstalled":Z
    :catch_0
    move-exception v0

    .line 1994
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "isAppInstalled":Z
    goto :goto_0
.end method

.method public static isDownloadsDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1376
    const-string/jumbo v0, "com.android.providers.downloads.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1372
    const-string/jumbo v0, "com.android.externalstorage.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isGoogleMapsInstalled(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 6
    .param p0, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    const/4 v2, 0x0

    .line 296
    :try_start_0
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.google.android.apps.maps"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    const/4 v2, 0x1

    .line 317
    :cond_0
    :goto_0
    return v2

    .line 298
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 302
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 303
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v3, "Install Google Maps?"

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 304
    const-string/jumbo v3, "OK"

    const v4, 0x7f070452

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/AndroidUtilities$1;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/AndroidUtilities$1;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 315
    const-string/jumbo v3, "Cancel"

    const v4, 0x7f0700f0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 316
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0
.end method

.method public static isInternalUri(Landroid/net/Uri;)Z
    .locals 8
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 322
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 323
    .local v3, "pathString":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 344
    :cond_0
    :goto_0
    return v4

    .line 331
    .local v1, "newPath":Ljava/lang/String;
    :cond_1
    move-object v3, v1

    .line 327
    .end local v1    # "newPath":Ljava/lang/String;
    :cond_2
    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 328
    .restart local v1    # "newPath":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 333
    :cond_3
    if-eqz v3, :cond_4

    .line 335
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 336
    .local v2, "path":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 337
    move-object v3, v2

    .line 344
    .end local v2    # "path":Ljava/lang/String;
    :cond_4
    :goto_1
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "/data/data/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/files"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "/./"

    const-string/jumbo v6, "/"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    goto :goto_1
.end method

.method public static isKeyboardShowed(Landroid/view/View;)Z
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 460
    if-nez p0, :cond_0

    .line 469
    :goto_0
    return v2

    .line 464
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 465
    .local v1, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 466
    .end local v1    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isMediaDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1380
    const-string/jumbo v0, "com.android.providers.media.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSmallTablet()Z
    .locals 3

    .prologue
    .line 627
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float v0, v1, v2

    .line 628
    .local v0, "minSide":F
    const/high16 v1, 0x442f0000    # 700.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTablet()Z
    .locals 2

    .prologue
    .line 620
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->isTablet:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 621
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->isTablet:Ljava/lang/Boolean;

    .line 623
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isWaitingForCall()Z
    .locals 3

    .prologue
    .line 435
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->callLock:Ljava/lang/Object;

    monitor-enter v2

    .line 436
    :try_start_0
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->waitingForCall:Z

    .line 437
    .local v0, "value":Z
    monitor-exit v2

    .line 438
    return v0

    .line 437
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isWaitingForSms()Z
    .locals 3

    .prologue
    .line 421
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->smsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 422
    :try_start_0
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->waitingForSms:Z

    .line 423
    .local v0, "value":Z
    monitor-exit v2

    .line 424
    return v0

    .line 423
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static lockOrientation(Landroid/app/Activity;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 348
    if-eqz p0, :cond_0

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->prevOrientation:I

    const/16 v5, -0xa

    if-eq v4, v5, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v4

    sput v4, Lorg/telegram/messenger/AndroidUtilities;->prevOrientation:I

    .line 353
    const-string/jumbo v4, "window"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 354
    .local v1, "manager":Landroid/view/WindowManager;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 355
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 356
    .local v3, "rotation":I
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->orientation:I

    .line 358
    .local v2, "orientation":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 359
    if-ne v2, v6, :cond_2

    .line 360
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 384
    .end local v1    # "manager":Landroid/view/WindowManager;
    .end local v2    # "orientation":I
    .end local v3    # "rotation":I
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 362
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "manager":Landroid/view/WindowManager;
    .restart local v2    # "orientation":I
    .restart local v3    # "rotation":I
    :cond_2
    const/16 v4, 0x8

    :try_start_1
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 364
    :cond_3
    if-ne v3, v6, :cond_5

    .line 365
    if-ne v2, v6, :cond_4

    .line 366
    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 368
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 370
    :cond_5
    if-nez v3, :cond_7

    .line 371
    if-ne v2, v7, :cond_6

    .line 372
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 374
    :cond_6
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 377
    :cond_7
    if-ne v2, v7, :cond_8

    .line 378
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 380
    :cond_8
    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static makeBroadcastId(I)J
    .locals 6
    .param p0, "id"    # I

    .prologue
    .line 584
    const-wide v0, 0x100000000L

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static needShowPasscode(Z)Z
    .locals 3
    .param p0, "reset"    # Z

    .prologue
    .line 1144
    invoke-static {}, Lorg/telegram/ui/Components/ForegroundDetector;->getInstance()Lorg/telegram/ui/Components/ForegroundDetector;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/ForegroundDetector;->isWasInBackground(Z)Z

    move-result v0

    .line 1145
    .local v0, "wasInBackground":Z
    if-eqz p0, :cond_0

    .line 1146
    invoke-static {}, Lorg/telegram/ui/Components/ForegroundDetector;->getInstance()Lorg/telegram/ui/Components/ForegroundDetector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ForegroundDetector;->resetBackgroundVar()V

    .line 1148
    :cond_0
    sget-object v1, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    if-eqz v0, :cond_2

    sget-boolean v1, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    if-nez v1, :cond_1

    sget v1, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    if-eqz v1, :cond_2

    sget v1, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    if-eqz v1, :cond_2

    sget-boolean v1, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    if-nez v1, :cond_2

    sget v1, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    sget v2, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    add-int/2addr v1, v2

    .line 1149
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    if-gt v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static obtainLoginPhoneCall(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "pattern"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 718
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->hasCallPermissions:Z

    if-nez v0, :cond_1

    move-object v10, v11

    .line 747
    :cond_0
    :goto_0
    return-object v10

    .line 721
    :cond_1
    const/4 v6, 0x0

    .line 723
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "number"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "date"

    aput-object v4, v2, v3

    const-string/jumbo v3, "type IN (3,1,5)"

    const/4 v4, 0x0

    const-string/jumbo v5, "date DESC LIMIT 5"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 729
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 730
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 731
    .local v10, "number":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 732
    .local v8, "date":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 733
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 736
    invoke-static {p0, v10}, Lorg/telegram/messenger/AndroidUtilities;->checkPhonePattern(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 743
    if-eqz v6, :cond_0

    .line 744
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 743
    .end local v8    # "date":J
    .end local v10    # "number":Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_4

    .line 744
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move-object v10, v11

    .line 747
    goto :goto_0

    .line 740
    :catch_0
    move-exception v7

    .line 741
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 743
    if-eqz v6, :cond_4

    .line 744
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 743
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 744
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static openForView(Lorg/telegram/messenger/MessageObject;Landroid/app/Activity;)V
    .locals 12
    .param p0, "message"    # Lorg/telegram/messenger/MessageObject;
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v11, 0x18

    const/16 v10, 0x1f4

    .line 1540
    const/4 v2, 0x0

    .line 1541
    .local v2, "f":Ljava/io/File;
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 1542
    .local v3, "fileName":Ljava/lang/String;
    iget-object v8, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    .line 1543
    new-instance v2, Ljava/io/File;

    .end local v2    # "f":Ljava/io/File;
    iget-object v8, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1545
    .restart local v2    # "f":Ljava/io/File;
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1546
    :cond_1
    iget-object v8, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v8}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v2

    .line 1548
    :cond_2
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1549
    const/4 v7, 0x0

    .line 1550
    .local v7, "realMimeType":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.VIEW"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1551
    .local v5, "intent":Landroid/content/Intent;
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1552
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v6

    .line 1553
    .local v6, "myMime":Landroid/webkit/MimeTypeMap;
    const/16 v8, 0x2e

    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 1554
    .local v4, "idx":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_6

    .line 1555
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1556
    .local v1, "ext":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1557
    if-nez v7, :cond_6

    .line 1558
    iget v8, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v9, 0x9

    if-eq v8, v9, :cond_3

    iget v8, p0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v8, :cond_4

    .line 1559
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v8

    iget-object v7, v8, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 1561
    :cond_4
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_6

    .line 1562
    :cond_5
    const/4 v7, 0x0

    .line 1566
    .end local v1    # "ext":Ljava/lang/String;
    :cond_6
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v11, :cond_9

    .line 1567
    const-string/jumbo v8, "org.telegram.multi.provider"

    invoke-static {p1, v8, v2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    if-eqz v7, :cond_8

    move-object v8, v7

    :goto_0
    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1571
    :goto_1
    if-eqz v7, :cond_c

    .line 1573
    const/16 v8, 0x1f4

    :try_start_0
    invoke-virtual {p1, v5, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1586
    .end local v4    # "idx":I
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "myMime":Landroid/webkit/MimeTypeMap;
    .end local v7    # "realMimeType":Ljava/lang/String;
    :cond_7
    :goto_2
    return-void

    .line 1567
    .restart local v4    # "idx":I
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "myMime":Landroid/webkit/MimeTypeMap;
    .restart local v7    # "realMimeType":Ljava/lang/String;
    :cond_8
    const-string/jumbo v8, "text/plain"

    goto :goto_0

    .line 1569
    :cond_9
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    if-eqz v7, :cond_a

    move-object v8, v7

    :goto_3
    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_a
    const-string/jumbo v8, "text/plain"

    goto :goto_3

    .line 1574
    :catch_0
    move-exception v0

    .line 1575
    .local v0, "e":Ljava/lang/Exception;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v11, :cond_b

    .line 1576
    const-string/jumbo v8, "org.telegram.multi.provider"

    invoke-static {p1, v8, v2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    const-string/jumbo v9, "text/plain"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1580
    :goto_4
    invoke-virtual {p1, v5, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 1578
    :cond_b
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    const-string/jumbo v9, "text/plain"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 1583
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_c
    invoke-virtual {p1, v5, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2
.end method

.method public static openForView(Lorg/telegram/tgnet/TLObject;Landroid/app/Activity;)V
    .locals 12
    .param p0, "media"    # Lorg/telegram/tgnet/TLObject;
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v11, 0x18

    const/4 v9, 0x1

    const/16 v10, 0x1f4

    .line 1589
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1632
    .end local p0    # "media":Lorg/telegram/tgnet/TLObject;
    :cond_0
    :goto_0
    return-void

    .line 1592
    .restart local p0    # "media":Lorg/telegram/tgnet/TLObject;
    :cond_1
    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v3

    .line 1593
    .local v3, "fileName":Ljava/lang/String;
    invoke-static {p0, v9}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    .line 1594
    .local v2, "f":Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1595
    const/4 v7, 0x0

    .line 1596
    .local v7, "realMimeType":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.VIEW"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1597
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1598
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v6

    .line 1599
    .local v6, "myMime":Landroid/webkit/MimeTypeMap;
    const/16 v8, 0x2e

    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 1600
    .local v4, "idx":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_4

    .line 1601
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1602
    .local v1, "ext":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1603
    if-nez v7, :cond_4

    .line 1604
    instance-of v8, p0, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v8, :cond_2

    .line 1605
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_document;

    .end local p0    # "media":Lorg/telegram/tgnet/TLObject;
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    .line 1607
    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 1608
    :cond_3
    const/4 v7, 0x0

    .line 1612
    .end local v1    # "ext":Ljava/lang/String;
    :cond_4
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v11, :cond_6

    .line 1613
    const-string/jumbo v8, "org.telegram.multi.provider"

    invoke-static {p1, v8, v2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    if-eqz v7, :cond_5

    move-object v8, v7

    :goto_1
    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1617
    :goto_2
    if-eqz v7, :cond_9

    .line 1619
    const/16 v8, 0x1f4

    :try_start_0
    invoke-virtual {p1, v5, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1620
    :catch_0
    move-exception v0

    .line 1621
    .local v0, "e":Ljava/lang/Exception;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v11, :cond_8

    .line 1622
    const-string/jumbo v8, "org.telegram.multi.provider"

    invoke-static {p1, v8, v2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    const-string/jumbo v9, "text/plain"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1626
    :goto_3
    invoke-virtual {p1, v5, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1613
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    const-string/jumbo v8, "text/plain"

    goto :goto_1

    .line 1615
    :cond_6
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    if-eqz v7, :cond_7

    move-object v8, v7

    :goto_4
    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_7
    const-string/jumbo v8, "text/plain"

    goto :goto_4

    .line 1624
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_8
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    const-string/jumbo v9, "text/plain"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 1629
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9
    invoke-virtual {p1, v5, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method private static registerLoginContentObserver(ZLjava/lang/String;)V
    .locals 5
    .param p0, "shouldRegister"    # Z
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 751
    if-eqz p0, :cond_2

    .line 752
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->callLogContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 793
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lorg/telegram/messenger/AndroidUtilities$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, v4, p1}, Lorg/telegram/messenger/AndroidUtilities$2;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    sput-object v3, Lorg/telegram/messenger/AndroidUtilities;->callLogContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 770
    new-instance v0, Lorg/telegram/messenger/AndroidUtilities$3;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/AndroidUtilities$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->unregisterRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 778
    :cond_2
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->callLogContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 781
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->unregisterRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 782
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->unregisterRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 783
    sput-object v2, Lorg/telegram/messenger/AndroidUtilities;->unregisterRunnable:Ljava/lang/Runnable;

    .line 786
    :cond_3
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->callLogContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 790
    sput-object v2, Lorg/telegram/messenger/AndroidUtilities;->callLogContentObserver:Landroid/database/ContentObserver;

    goto :goto_0

    .line 787
    :catch_0
    move-exception v0

    .line 790
    sput-object v2, Lorg/telegram/messenger/AndroidUtilities;->callLogContentObserver:Landroid/database/ContentObserver;

    goto :goto_0

    :catchall_0
    move-exception v0

    sput-object v2, Lorg/telegram/messenger/AndroidUtilities;->callLogContentObserver:Landroid/database/ContentObserver;

    throw v0
.end method

.method public static removeAdjustResize(Landroid/app/Activity;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "classGuid"    # I

    .prologue
    .line 286
    if-eqz p0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->adjustOwnerClassGuid:I

    if-ne v0, p1, :cond_0

    .line 290
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method public static removeLoginPhoneCall(Ljava/lang/String;Z)V
    .locals 10
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "first"    # Z

    .prologue
    .line 796
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->hasCallPermissions:Z

    if-nez v0, :cond_1

    .line 829
    :cond_0
    :goto_0
    return-void

    .line 799
    :cond_1
    const/4 v6, 0x0

    .line 801
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "number"

    aput-object v4, v2, v3

    const-string/jumbo v3, "type IN (3,1,5)"

    const/4 v4, 0x0

    const-string/jumbo v5, "date DESC LIMIT 5"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 807
    const/4 v9, 0x0

    .line 808
    .local v9, "removed":Z
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 809
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 810
    .local v8, "phone":Ljava/lang/String;
    invoke-virtual {v8, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 811
    :cond_3
    const/4 v9, 0x1

    .line 812
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "_id = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 815
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 812
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 819
    .end local v8    # "phone":Ljava/lang/String;
    :cond_4
    if-nez v9, :cond_5

    if-eqz p1, :cond_5

    .line 820
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lorg/telegram/messenger/AndroidUtilities;->registerLoginContentObserver(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    :cond_5
    if-eqz v6, :cond_0

    .line 826
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 822
    .end local v9    # "removed":Z
    :catch_0
    move-exception v7

    .line 823
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 825
    if-eqz v6, :cond_0

    .line 826
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 825
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 826
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public static replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1103
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static replaceTags(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;
    .locals 11
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "flag"    # I

    .prologue
    const/4 v9, -0x1

    .line 1110
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1111
    .local v6, "stringBuilder":Ljava/lang/StringBuilder;
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_2

    .line 1112
    :goto_0
    const-string/jumbo v7, "<br>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    .local v5, "start":I
    if-eq v5, v9, :cond_1

    .line 1113
    add-int/lit8 v7, v5, 0x4

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v5, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1137
    .end local v5    # "start":I
    .end local v6    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 1138
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1140
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v4

    .line 1115
    .restart local v5    # "start":I
    .restart local v6    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_1
    :goto_1
    :try_start_1
    const-string/jumbo v7, "<br/>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v9, :cond_2

    .line 1116
    add-int/lit8 v7, v5, 0x5

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v5, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1119
    .end local v5    # "start":I
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1120
    .local v1, "bolds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_4

    .line 1121
    :goto_2
    const-string/jumbo v7, "<b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    .restart local v5    # "start":I
    if-eq v5, v9, :cond_4

    .line 1122
    add-int/lit8 v7, v5, 0x3

    const-string/jumbo v8, ""

    invoke-virtual {v6, v5, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    const-string/jumbo v7, "</b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1124
    .local v3, "end":I
    if-ne v3, v9, :cond_3

    .line 1125
    const-string/jumbo v7, "<b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1127
    :cond_3
    add-int/lit8 v7, v3, 0x4

    const-string/jumbo v8, ""

    invoke-virtual {v6, v3, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1129
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1132
    .end local v3    # "end":I
    .end local v5    # "start":I
    :cond_4
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1133
    .local v4, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    if-ge v0, v7, :cond_0

    .line 1134
    new-instance v8, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string/jumbo v7, "fonts/rmedium.ttf"

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-direct {v8, v7}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    mul-int/lit8 v7, v0, 0x2

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    mul-int/lit8 v7, v0, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v10, 0x21

    invoke-virtual {v4, v8, v9, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1133
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static requestAdjustResize(Landroid/app/Activity;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "classGuid"    # I

    .prologue
    .line 278
    if-eqz p0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 282
    sput p1, Lorg/telegram/messenger/AndroidUtilities;->adjustOwnerClassGuid:I

    goto :goto_0
.end method

.method private static rgbToHsv(III)[D
    .locals 22
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I

    .prologue
    .line 212
    move/from16 v0, p0

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x406fe00000000000L    # 255.0

    div-double v14, v18, v20

    .line 213
    .local v14, "rf":D
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x406fe00000000000L    # 255.0

    div-double v6, v18, v20

    .line 214
    .local v6, "gf":D
    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x406fe00000000000L    # 255.0

    div-double v2, v18, v20

    .line 215
    .local v2, "bf":D
    cmpl-double v18, v14, v6

    if-lez v18, :cond_0

    cmpl-double v18, v14, v2

    if-lez v18, :cond_0

    move-wide v10, v14

    .line 216
    .local v10, "max":D
    :goto_0
    cmpg-double v18, v14, v6

    if-gez v18, :cond_2

    cmpg-double v18, v14, v2

    if-gez v18, :cond_2

    move-wide v12, v14

    .line 218
    .local v12, "min":D
    :goto_1
    sub-double v4, v10, v12

    .line 219
    .local v4, "d":D
    const-wide/16 v18, 0x0

    cmpl-double v18, v10, v18

    if-nez v18, :cond_4

    const-wide/16 v16, 0x0

    .line 220
    .local v16, "s":D
    :goto_2
    cmpl-double v18, v10, v12

    if-nez v18, :cond_5

    .line 221
    const-wide/16 v8, 0x0

    .line 232
    .local v8, "h":D
    :goto_3
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [D

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-wide v8, v18, v19

    const/16 v19, 0x1

    aput-wide v16, v18, v19

    const/16 v19, 0x2

    aput-wide v10, v18, v19

    return-object v18

    .line 215
    .end local v4    # "d":D
    .end local v8    # "h":D
    .end local v10    # "max":D
    .end local v12    # "min":D
    .end local v16    # "s":D
    :cond_0
    cmpl-double v18, v6, v2

    if-lez v18, :cond_1

    move-wide v10, v6

    goto :goto_0

    :cond_1
    move-wide v10, v2

    goto :goto_0

    .line 216
    .restart local v10    # "max":D
    :cond_2
    cmpg-double v18, v6, v2

    if-gez v18, :cond_3

    move-wide v12, v6

    goto :goto_1

    :cond_3
    move-wide v12, v2

    goto :goto_1

    .line 219
    .restart local v4    # "d":D
    .restart local v12    # "min":D
    :cond_4
    div-double v16, v4, v10

    goto :goto_2

    .line 223
    .restart local v16    # "s":D
    :cond_5
    cmpl-double v18, v14, v6

    if-lez v18, :cond_7

    cmpl-double v18, v14, v2

    if-lez v18, :cond_7

    .line 224
    sub-double v18, v6, v2

    div-double v20, v18, v4

    cmpg-double v18, v6, v2

    if-gez v18, :cond_6

    const/16 v18, 0x6

    :goto_4
    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    add-double v8, v20, v18

    .line 230
    .restart local v8    # "h":D
    :goto_5
    const-wide/high16 v18, 0x4018000000000000L    # 6.0

    div-double v8, v8, v18

    goto :goto_3

    .line 224
    .end local v8    # "h":D
    :cond_6
    const/16 v18, 0x0

    goto :goto_4

    .line 225
    :cond_7
    cmpl-double v18, v6, v2

    if-lez v18, :cond_8

    .line 226
    sub-double v18, v2, v14

    div-double v18, v18, v4

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    add-double v8, v18, v20

    .restart local v8    # "h":D
    goto :goto_5

    .line 228
    .end local v8    # "h":D
    :cond_8
    sub-double v18, v14, v6

    div-double v18, v18, v4

    const-wide/high16 v20, 0x4010000000000000L    # 4.0

    add-double v8, v18, v20

    .restart local v8    # "h":D
    goto :goto_5
.end method

.method public static runOnUIThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 604
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 605
    return-void
.end method

.method public static runOnUIThread(Ljava/lang/Runnable;J)V
    .locals 3
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delay"    # J

    .prologue
    .line 608
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 609
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 613
    :goto_0
    return-void

    .line 611
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static setDarkColor(II)I
    .locals 7
    .param p0, "color"    # I
    .param p1, "factor"    # I

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0xff

    .line 1745
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 1746
    .local v0, "alpha":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    sub-int v3, v6, p1

    .line 1747
    .local v3, "red":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v6

    sub-int v2, v6, p1

    .line 1748
    .local v2, "green":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    sub-int v1, v6, p1

    .line 1749
    .local v1, "blue":I
    if-gez p1, :cond_3

    .line 1750
    if-le v3, v5, :cond_0

    move v3, v5

    .line 1751
    :cond_0
    if-le v2, v5, :cond_1

    move v2, v5

    .line 1752
    :cond_1
    if-le v1, v5, :cond_2

    move v1, v5

    .line 1753
    :cond_2
    if-ne v3, v5, :cond_3

    if-ne v2, v5, :cond_3

    if-ne v1, v5, :cond_3

    .line 1754
    move v3, p1

    .line 1755
    move v2, p1

    .line 1756
    move v1, p1

    .line 1759
    :cond_3
    if-lez p1, :cond_7

    .line 1760
    if-gez v3, :cond_4

    move v3, v4

    .line 1761
    :cond_4
    if-gez v2, :cond_5

    move v2, v4

    .line 1762
    :cond_5
    if-gez v1, :cond_6

    move v1, v4

    .line 1763
    :cond_6
    if-nez v3, :cond_7

    if-nez v2, :cond_7

    if-nez v1, :cond_7

    .line 1764
    move v3, p1

    .line 1765
    move v2, p1

    .line 1766
    move v1, p1

    .line 1770
    :cond_7
    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    return v4
.end method

.method public static setDrawableStatesColor(Landroid/content/Context;Landroid/widget/ImageView;III)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "pressed"    # I
    .param p3, "normal"    # I
    .param p4, "color"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1977
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1978
    .local v1, "states":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1979
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->lightColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1980
    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1981
    new-array v2, v5, [I

    const v3, 0x101009c

    aput v3, v2, v4

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1982
    new-array v2, v4, [I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1983
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1984
    return-void
.end method

.method public static setListViewEdgeEffectColor(Landroid/widget/AbsListView;I)V
    .locals 6
    .param p0, "listView"    # Landroid/widget/AbsListView;
    .param p1, "color"    # I

    .prologue
    .line 1672
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1

    .line 1674
    :try_start_0
    const-class v4, Landroid/widget/AbsListView;

    const-string/jumbo v5, "mEdgeGlowTop"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1675
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1676
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EdgeEffect;

    .line 1677
    .local v3, "mEdgeGlowTop":Landroid/widget/EdgeEffect;
    if-eqz v3, :cond_0

    .line 1678
    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 1681
    :cond_0
    const-class v4, Landroid/widget/AbsListView;

    const-string/jumbo v5, "mEdgeGlowBottom"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1682
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1683
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EdgeEffect;

    .line 1684
    .local v2, "mEdgeGlowBottom":Landroid/widget/EdgeEffect;
    if-eqz v2, :cond_1

    .line 1685
    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1691
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "mEdgeGlowBottom":Landroid/widget/EdgeEffect;
    .end local v3    # "mEdgeGlowTop":Landroid/widget/EdgeEffect;
    :cond_1
    :goto_0
    return-void

    .line 1687
    :catch_0
    move-exception v0

    .line 1688
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setMyLayerVersion(II)I
    .locals 1
    .param p0, "layer"    # I
    .param p1, "version"    # I

    .prologue
    .line 596
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    or-int/2addr v0, p1

    return v0
.end method

.method public static setPeerLayerVersion(II)I
    .locals 2
    .param p0, "layer"    # I
    .param p1, "version"    # I

    .prologue
    .line 600
    const v0, 0xffff

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method public static setRectToRect(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;ILandroid/graphics/Matrix$ScaleToFit;)V
    .locals 9
    .param p0, "matrix"    # Landroid/graphics/Matrix;
    .param p1, "src"    # Landroid/graphics/RectF;
    .param p2, "dst"    # Landroid/graphics/RectF;
    .param p3, "rotation"    # I
    .param p4, "align"    # Landroid/graphics/Matrix$ScaleToFit;

    .prologue
    const/16 v8, 0x10e

    const/16 v7, 0x5a

    const/4 v6, 0x0

    .line 1637
    if-eq p3, v7, :cond_0

    if-ne p3, v8, :cond_3

    .line 1638
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float v0, v4, v5

    .line 1639
    .local v0, "sx":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float v1, v4, v5

    .line 1644
    .local v1, "sy":F
    :goto_0
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    if-eq p4, v4, :cond_1

    .line 1645
    cmpl-float v4, v0, v1

    if-lez v4, :cond_4

    .line 1646
    move v0, v1

    .line 1651
    :cond_1
    :goto_1
    iget v4, p1, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    mul-float v2, v4, v0

    .line 1652
    .local v2, "tx":F
    iget v4, p1, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    mul-float v3, v4, v1

    .line 1654
    .local v3, "ty":F
    iget v4, p2, Landroid/graphics/RectF;->left:F

    iget v5, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1655
    if-ne p3, v7, :cond_5

    .line 1656
    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p0, v4}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 1657
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {p0, v6, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1666
    :cond_2
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1667
    invoke-virtual {p0, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1668
    return-void

    .line 1641
    .end local v0    # "sx":F
    .end local v1    # "sy":F
    .end local v2    # "tx":F
    .end local v3    # "ty":F
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float v0, v4, v5

    .line 1642
    .restart local v0    # "sx":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float v1, v4, v5

    .restart local v1    # "sy":F
    goto :goto_0

    .line 1648
    :cond_4
    move v1, v0

    goto :goto_1

    .line 1658
    .restart local v2    # "tx":F
    .restart local v3    # "ty":F
    :cond_5
    const/16 v4, 0xb4

    if-ne p3, v4, :cond_6

    .line 1659
    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {p0, v4}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 1660
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    neg-float v5, v5

    invoke-virtual {p0, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_2

    .line 1661
    :cond_6
    if-ne p3, v8, :cond_2

    .line 1662
    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p0, v4}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 1663
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {p0, v4, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_2
.end method

.method public static setScrollViewEdgeEffectColor(Landroid/widget/ScrollView;I)V
    .locals 6
    .param p0, "scrollView"    # Landroid/widget/ScrollView;
    .param p1, "color"    # I

    .prologue
    .line 1056
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1

    .line 1058
    :try_start_0
    const-class v4, Landroid/widget/ScrollView;

    const-string/jumbo v5, "mEdgeGlowTop"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1059
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1060
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EdgeEffect;

    .line 1061
    .local v3, "mEdgeGlowTop":Landroid/widget/EdgeEffect;
    if-eqz v3, :cond_0

    .line 1062
    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 1065
    :cond_0
    const-class v4, Landroid/widget/ScrollView;

    const-string/jumbo v5, "mEdgeGlowBottom"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1066
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1067
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EdgeEffect;

    .line 1068
    .local v2, "mEdgeGlowBottom":Landroid/widget/EdgeEffect;
    if-eqz v2, :cond_1

    .line 1069
    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1075
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "mEdgeGlowBottom":Landroid/widget/EdgeEffect;
    .end local v3    # "mEdgeGlowTop":Landroid/widget/EdgeEffect;
    :cond_1
    :goto_0
    return-void

    .line 1071
    :catch_0
    move-exception v0

    .line 1072
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 1816
    const-string/jumbo v2, "theme"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1817
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1818
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1819
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1820
    return-void
.end method

.method public static setViewPagerEdgeEffectColor(Landroid/support/v4/view/ViewPager;I)V
    .locals 7
    .param p0, "viewPager"    # Landroid/support/v4/view/ViewPager;
    .param p1, "color"    # I

    .prologue
    .line 1024
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_1

    .line 1026
    :try_start_0
    const-class v5, Landroid/support/v4/view/ViewPager;

    const-string/jumbo v6, "mLeftEdge"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1027
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1028
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1029
    .local v3, "mLeftEdge":Landroid/support/v4/widget/EdgeEffectCompat;
    if-eqz v3, :cond_0

    .line 1030
    const-class v5, Landroid/support/v4/widget/EdgeEffectCompat;

    const-string/jumbo v6, "mEdgeEffect"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1031
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1032
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EdgeEffect;

    .line 1033
    .local v2, "mEdgeEffect":Landroid/widget/EdgeEffect;
    if-eqz v2, :cond_0

    .line 1034
    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 1038
    .end local v2    # "mEdgeEffect":Landroid/widget/EdgeEffect;
    :cond_0
    const-class v5, Landroid/support/v4/view/ViewPager;

    const-string/jumbo v6, "mRightEdge"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1039
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1040
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1041
    .local v4, "mRightEdge":Landroid/support/v4/widget/EdgeEffectCompat;
    if-eqz v4, :cond_1

    .line 1042
    const-class v5, Landroid/support/v4/widget/EdgeEffectCompat;

    const-string/jumbo v6, "mEdgeEffect"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1043
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1044
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EdgeEffect;

    .line 1045
    .restart local v2    # "mEdgeEffect":Landroid/widget/EdgeEffect;
    if-eqz v2, :cond_1

    .line 1046
    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1053
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "mEdgeEffect":Landroid/widget/EdgeEffect;
    .end local v3    # "mLeftEdge":Landroid/support/v4/widget/EdgeEffectCompat;
    .end local v4    # "mRightEdge":Landroid/support/v4/widget/EdgeEffectCompat;
    :cond_1
    :goto_0
    return-void

    .line 1049
    :catch_0
    move-exception v0

    .line 1050
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setWaitingForCall(Z)V
    .locals 2
    .param p0, "value"    # Z

    .prologue
    .line 442
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->callLock:Ljava/lang/Object;

    monitor-enter v1

    .line 443
    :try_start_0
    sput-boolean p0, Lorg/telegram/messenger/AndroidUtilities;->waitingForCall:Z

    .line 444
    monitor-exit v1

    .line 445
    return-void

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setWaitingForSms(Z)V
    .locals 2
    .param p0, "value"    # Z

    .prologue
    .line 428
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->smsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 429
    :try_start_0
    sput-boolean p0, Lorg/telegram/messenger/AndroidUtilities;->waitingForSms:Z

    .line 430
    monitor-exit v1

    .line 431
    return-void

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static shakeView(Landroid/view/View;FI)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # F
    .param p2, "num"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1153
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 1154
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1167
    :goto_0
    return-void

    .line 1157
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1158
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v1, v3, [Landroid/animation/Animator;

    const-string/jumbo v2, "translationX"

    new-array v3, v3, [F

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1159
    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1160
    new-instance v1, Lorg/telegram/messenger/AndroidUtilities$4;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/AndroidUtilities$4;-><init>(Landroid/view/View;IF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1166
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public static showKeyboard(Landroid/view/View;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 448
    if-nez p0, :cond_0

    .line 457
    :goto_0
    return-void

    .line 452
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 453
    .local v1, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 454
    .end local v1    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static uninstallShortcut(J)V
    .locals 4
    .param p0, "did"    # J

    .prologue
    .line 954
    const/4 v2, 0x1

    :try_start_0
    invoke-static {p0, p1, v2}, Lorg/telegram/messenger/AndroidUtilities;->createShortcutIntent(JZ)Landroid/content/Intent;

    move-result-object v0

    .line 955
    .local v0, "addIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 956
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 960
    .end local v0    # "addIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 957
    :catch_0
    move-exception v1

    .line 958
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static unlockOrientation(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v2, -0xa

    .line 390
    if-nez p0, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    :try_start_0
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->prevOrientation:I

    if-eq v1, v2, :cond_0

    .line 395
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->prevOrientation:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 396
    const/16 v1, -0xa

    sput v1, Lorg/telegram/messenger/AndroidUtilities;->prevOrientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static unregisterUpdates()V
    .locals 1

    .prologue
    .line 1234
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_0

    .line 1235
    invoke-static {}, Lnet/hockeyapp/android/UpdateManager;->unregister()V

    .line 1237
    :cond_0
    return-void
.end method

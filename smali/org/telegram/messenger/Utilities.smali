.class public Lorg/telegram/messenger/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field public static volatile globalQueue:Lorg/telegram/messenger/DispatchQueue;

.field protected static final hexArray:[C

.field public static pattern:Ljava/util/regex/Pattern;

.field public static volatile phoneBookQueue:Lorg/telegram/messenger/DispatchQueue;

.field public static random:Ljava/security/SecureRandom;

.field public static volatile searchQueue:Lorg/telegram/messenger/DispatchQueue;

.field public static volatile stageQueue:Lorg/telegram/messenger/DispatchQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 43
    const-string/jumbo v4, "[\\-0-9]+"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    sput-object v4, Lorg/telegram/messenger/Utilities;->pattern:Ljava/util/regex/Pattern;

    .line 44
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    sput-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    .line 46
    new-instance v4, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v5, "stageQueue"

    invoke-direct {v4, v5}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v4, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 47
    new-instance v4, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v5, "globalQueue"

    invoke-direct {v4, v5}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v4, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 48
    new-instance v4, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v5, "searchQueue"

    invoke-direct {v4, v5}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v4, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 49
    new-instance v4, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v5, "photoBookQueue"

    invoke-direct {v4, v5}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v4, Lorg/telegram/messenger/Utilities;->phoneBookQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 51
    const-string/jumbo v4, "0123456789ABCDEF"

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    sput-object v4, Lorg/telegram/messenger/Utilities;->hexArray:[C

    .line 55
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v4, "/dev/urandom"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "URANDOM_FILE":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 57
    .local v3, "sUrandomIn":Ljava/io/FileInputStream;
    const/16 v4, 0x400

    new-array v1, v4, [B

    .line 58
    .local v1, "buffer":[B
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 59
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 60
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v1}, Ljava/security/SecureRandom;->setSeed([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v1    # "buffer":[B
    .end local v3    # "sUrandomIn":Ljava/io/FileInputStream;
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "md5"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 268
    if-nez p0, :cond_0

    .line 282
    :goto_0
    return-object v5

    .line 272
    :cond_0
    :try_start_0
    const-string/jumbo v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 273
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 274
    .local v1, "array":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    array-length v6, v1

    if-ge v0, v6, :cond_1

    .line 276
    aget-byte v6, v1, v0

    and-int/lit16 v6, v6, 0xff

    or-int/lit16 v6, v6, 0x100

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 278
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 279
    .end local v0    # "a":I
    .end local v1    # "array":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 280
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static native aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZII)V
.end method

.method public static aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V
    .locals 6
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "key"    # [B
    .param p2, "iv"    # [B
    .param p3, "encrypt"    # Z
    .param p4, "changeIv"    # Z
    .param p5, "offset"    # I
    .param p6, "length"    # I

    .prologue
    .line 76
    if-eqz p4, :cond_0

    move-object v2, p2

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p5

    move v5, p6

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZII)V

    .line 77
    return-void

    .line 76
    :cond_0
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v2, v0

    goto :goto_0
.end method

.method public static applyThemeFile(Ljava/io/File;)Ljava/lang/String;
    .locals 13
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const v12, 0xf4241

    .line 520
    :try_start_0
    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->getXmlFileStrings(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v4

    .line 521
    .local v4, "stringMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 522
    .local v8, "xmlFile":Ljava/lang/String;
    const-string/jumbo v9, "themeName"

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 524
    .local v5, "themeName":Ljava/lang/String;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 526
    const-string/jumbo v9, "&"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "|"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 527
    :cond_0
    const-string/jumbo v5, ""

    .line 557
    .end local v4    # "stringMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "themeName":Ljava/lang/String;
    .end local v8    # "xmlFile":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v5

    .line 530
    .restart local v4    # "stringMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "themeName":Ljava/lang/String;
    .restart local v8    # "xmlFile":Ljava/lang/String;
    :cond_2
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v9, v8}, Lorg/telegram/messenger/Utilities;->loadPrefFromSD(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x4

    if-eq v9, v10, :cond_3

    .line 531
    const-string/jumbo v5, ""

    goto :goto_0

    .line 534
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    const-string/jumbo v11, "."

    invoke-virtual {v8, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "_wallpaper.jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 535
    .local v7, "wName":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 536
    .local v6, "wFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 538
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "mainconfig"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 539
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v9, "selectedBackground"

    const v10, 0xf4241

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 540
    .local v3, "selectedBackground":I
    if-ne v3, v12, :cond_4

    .line 543
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 544
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v9, "selectedBackground"

    const/16 v10, 0x71

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 545
    const-string/jumbo v9, "selectedColor"

    const/4 v10, 0x0

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 546
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 550
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_4
    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->applyWallpaper(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 554
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    .end local v3    # "selectedBackground":I
    .end local v4    # "stringMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "themeName":Ljava/lang/String;
    .end local v6    # "wFile":Ljava/io/File;
    .end local v7    # "wName":Ljava/lang/String;
    .end local v8    # "xmlFile":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 557
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    const-string/jumbo v5, ""

    goto :goto_0
.end method

.method public static applyWallpaper(Ljava/lang/String;)V
    .locals 12
    .param p0, "wPath"    # Ljava/lang/String;

    .prologue
    .line 454
    const-string/jumbo v2, "wallpaper.jpg"

    .line 455
    .local v2, "nFile":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 456
    .local v7, "wFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 457
    const/4 v4, 0x0

    .line 459
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v3

    .line 461
    .local v3, "screenSize":Landroid/graphics/Point;
    const/4 v8, 0x0

    iget v9, v3, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v10, v3, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    const/4 v11, 0x1

    invoke-static {p0, v8, v9, v10, v11}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 463
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Ljava/io/File;

    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-direct {v6, v8, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 464
    .local v6, "toFile":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .local v5, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x57

    invoke-virtual {v0, v8, v9, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 470
    if-eqz v5, :cond_0

    .line 471
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 478
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "screenSize":Landroid/graphics/Point;
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .end local v6    # "toFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 473
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "screenSize":Landroid/graphics/Point;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    .restart local v6    # "toFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 474
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 466
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "screenSize":Landroid/graphics/Point;
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .end local v6    # "toFile":Ljava/io/File;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 467
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 470
    if-eqz v4, :cond_0

    .line 471
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 473
    :catch_2
    move-exception v1

    .line 474
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 469
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 470
    :goto_2
    if-eqz v4, :cond_1

    .line 471
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 475
    :cond_1
    :goto_3
    throw v8

    .line 473
    :catch_3
    move-exception v1

    .line 474
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 469
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "screenSize":Landroid/graphics/Point;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    .restart local v6    # "toFile":Ljava/io/File;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 466
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static arraysEquals([BI[BI)Z
    .locals 4
    .param p0, "arr1"    # [B
    .param p1, "offset1"    # I
    .param p2, "arr2"    # [B
    .param p3, "offset2"    # I

    .prologue
    .line 202
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-ltz p1, :cond_0

    if-ltz p3, :cond_0

    array-length v2, p0

    sub-int/2addr v2, p1

    array-length v3, p2

    sub-int/2addr v3, p3

    if-ne v2, v3, :cond_0

    array-length v2, p0

    sub-int/2addr v2, p1

    if-ltz v2, :cond_0

    array-length v2, p2

    sub-int/2addr v2, p3

    if-gez v2, :cond_2

    .line 203
    :cond_0
    const/4 v1, 0x0

    .line 211
    :cond_1
    return v1

    .line 205
    :cond_2
    const/4 v1, 0x1

    .line 206
    .local v1, "result":Z
    move v0, p1

    .local v0, "a":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 207
    add-int v2, v0, p1

    aget-byte v2, p0, v2

    add-int v3, v0, p3

    aget-byte v3, p2, v3

    if-eq v2, v3, :cond_3

    .line 208
    const/4 v1, 0x0

    .line 206
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static native blurBitmap(Ljava/lang/Object;IIIII)V
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 122
    if-nez p0, :cond_0

    .line 123
    const-string/jumbo v3, ""

    .line 132
    :goto_0
    return-object v3

    .line 125
    :cond_0
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [C

    .line 127
    .local v0, "hexChars":[C
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 128
    aget-byte v3, p0, v1

    and-int/lit16 v2, v3, 0xff

    .line 129
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lorg/telegram/messenger/Utilities;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 130
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lorg/telegram/messenger/Utilities;->hexArray:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 132
    .end local v2    # "v":I
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static bytesToLong([B)J
    .locals 8
    .param p0, "bytes"    # [B

    .prologue
    const-wide/16 v6, 0xff

    .line 263
    const/4 v0, 0x7

    aget-byte v0, p0, v0

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    const/4 v2, 0x6

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x4

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x0

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static native calcCDT(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)V
.end method

.method static checkSDStatus()I
    .locals 3

    .prologue
    .line 376
    const/4 v0, 0x0

    .line 377
    .local v0, "b":I
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "s":Ljava/lang/String;
    const-string/jumbo v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    .line 380
    :cond_0
    :goto_0
    return v0

    .line 379
    :cond_1
    const-string/jumbo v2, "mounted_ro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static computeSHA1(Ljava/nio/ByteBuffer;)[B
    .locals 2
    .param p0, "convertme"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/Utilities;->computeSHA1(Ljava/nio/ByteBuffer;II)[B

    move-result-object v0

    return-object v0
.end method

.method public static computeSHA1(Ljava/nio/ByteBuffer;II)[B
    .locals 5
    .param p0, "convertme"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 226
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 227
    .local v3, "oldp":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 229
    .local v2, "oldl":I
    :try_start_0
    const-string/jumbo v4, "SHA-1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 230
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 231
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 232
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 233
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 237
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 238
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 240
    .end local v1    # "md":Ljava/security/MessageDigest;
    :goto_0
    return-object v4

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 238
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 240
    const/16 v4, 0x14

    new-array v4, v4, [B

    goto :goto_0

    .line 237
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 238
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v4
.end method

.method public static computeSHA1([B)[B
    .locals 2
    .param p0, "convertme"    # [B

    .prologue
    .line 248
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/Utilities;->computeSHA1([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static computeSHA1([BII)[B
    .locals 3
    .param p0, "convertme"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 216
    :try_start_0
    const-string/jumbo v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 217
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 218
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 222
    .end local v1    # "md":Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 222
    const/16 v2, 0x14

    new-array v2, v2, [B

    goto :goto_0
.end method

.method public static computeSHA256([BII)[B
    .locals 3
    .param p0, "convertme"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 253
    :try_start_0
    const-string/jumbo v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 254
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 255
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 259
    .end local v1    # "md":Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 259
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static native convertVideoFrame(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIII)I
.end method

.method static copyFile(Ljava/io/File;Ljava/io/File;Z)I
    .locals 10
    .param p0, "sourceFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;
    .param p2, "save"    # Z

    .prologue
    .line 399
    const/4 v9, -0x1

    .line 401
    .local v9, "i":I
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 402
    const/4 v2, 0x0

    .line 433
    :goto_0
    return v2

    .line 404
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 405
    if-eqz p2, :cond_1

    add-int/lit8 v9, v9, 0x2

    .line 406
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 410
    :cond_2
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 411
    .local v7, "fileInputStream":Ljava/io/FileInputStream;
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 412
    .local v1, "source":Ljava/nio/channels/FileChannel;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 413
    .local v8, "fileOutputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 414
    .local v0, "destination":Ljava/nio/channels/FileChannel;
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 415
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 416
    const/4 v9, 0x2

    .line 418
    :cond_3
    if-eqz v1, :cond_4

    .line 419
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 420
    const/4 v9, 0x3

    .line 422
    :cond_4
    if-eqz v0, :cond_5

    .line 423
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 424
    const/4 v9, 0x4

    .line 426
    :cond_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 427
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "destination":Ljava/nio/channels/FileChannel;
    .end local v1    # "source":Ljava/nio/channels/FileChannel;
    .end local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_1
    move v2, v9

    .line 433
    goto :goto_0

    .line 428
    :catch_0
    move-exception v6

    .line 430
    .local v6, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error saving preferences: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static copyWallpaperToSD(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tName"    # Ljava/lang/String;
    .param p2, "toast"    # Z

    .prologue
    .line 320
    const-string/jumbo v4, "/Telegram/Themes"

    .line 321
    .local v4, "folder":Ljava/lang/String;
    const-string/jumbo v5, "wallpaper.jpg"

    .line 322
    .local v5, "nFile":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/Utilities;->checkSDStatus()I

    move-result v7

    if-lez v7, :cond_2

    .line 323
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 324
    .local v0, "f1":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .end local v0    # "f1":Ljava/io/File;
    .local v1, "f1":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-direct {v2, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 326
    .local v2, "f2":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 327
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 328
    .end local v2    # "f2":Ljava/io/File;
    .local v3, "f2":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    cmp-long v7, v8, v10

    if-lez v7, :cond_2

    .line 329
    const/4 v7, 0x1

    invoke-static {v1, v3, v7}, Lorg/telegram/messenger/Utilities;->copyFile(Ljava/io/File;Ljava/io/File;Z)I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->getError(I)Ljava/lang/String;

    move-result-object v6

    .line 330
    .local v6, "s":Ljava/lang/String;
    const-string/jumbo v7, "4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 331
    if-eqz p2, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    if-eq v7, v8, :cond_0

    const-string/jumbo v7, ""

    if-eq v4, v7, :cond_0

    const v7, 0x7f070567

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 332
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    if-eq v7, v8, :cond_1

    const-string/jumbo v7, ""

    if-ne v4, v7, :cond_2

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ERROR: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 339
    .end local v1    # "f1":Ljava/io/File;
    .end local v3    # "f2":Ljava/io/File;
    .end local v6    # "s":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 335
    .restart local v1    # "f1":Ljava/io/File;
    .restart local v3    # "f2":Ljava/io/File;
    .restart local v6    # "s":Ljava/lang/String;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ERROR: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static findPrefFolder(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 364
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 365
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, "appDir":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/16 v6, 0x2f

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "shared_prefs/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 367
    .local v0, "SPDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 368
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, "pck":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    .end local v0    # "SPDir":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/dbdata/databases/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/shared_prefs/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    .end local v3    # "pck":Ljava/lang/String;
    .restart local v0    # "SPDir":Ljava/io/File;
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static getError(I)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 384
    const-string/jumbo v0, "-1"

    .line 385
    .local v0, "s":Ljava/lang/String;
    if-nez p0, :cond_0

    const-string/jumbo v0, "0: SOURCE FILE DOESN\'T EXIST"

    .line 386
    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    const-string/jumbo v0, "1: DESTINATION FILE DOESN\'T EXIST"

    .line 387
    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    const-string/jumbo v0, "2: NULL SOURCE & DESTINATION FILES"

    .line 388
    :cond_2
    const/4 v1, 0x3

    if-ne p0, v1, :cond_3

    const-string/jumbo v0, "3: NULL SOURCE FILE"

    .line 389
    :cond_3
    const/4 v1, 0x4

    if-ne p0, v1, :cond_4

    const-string/jumbo v0, "4"

    .line 390
    :cond_4
    return-object v0
.end method

.method private static getXmlFileStrings(Ljava/io/File;)Ljava/util/HashMap;
    .locals 12
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 561
    const/4 v6, 0x0

    .line 563
    .local v6, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 564
    .local v8, "stringMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 565
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .local v7, "stream":Ljava/io/FileInputStream;
    :try_start_1
    const-string/jumbo v10, "UTF-8"

    invoke-interface {v5, v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 567
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 568
    .local v3, "eventType":I
    const/4 v4, 0x0

    .line 569
    .local v4, "name":Ljava/lang/String;
    const/4 v9, 0x0

    .line 570
    .local v9, "value":Ljava/lang/String;
    const/4 v0, 0x0

    .line 571
    .local v0, "attrName":Ljava/lang/String;
    :goto_0
    const/4 v10, 0x1

    if-eq v3, v10, :cond_4

    .line 572
    const/4 v10, 0x2

    if-ne v3, v10, :cond_2

    .line 573
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 574
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    .line 575
    .local v1, "c":I
    if-lez v1, :cond_0

    .line 576
    const/4 v10, 0x0

    invoke-interface {v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 592
    .end local v1    # "c":I
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    const-string/jumbo v10, "string"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-eqz v9, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_1

    .line 593
    invoke-virtual {v8, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    const/4 v4, 0x0

    .line 595
    const/4 v9, 0x0

    .line 596
    const/4 v0, 0x0

    .line 598
    :cond_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_0

    .line 578
    :cond_2
    const/4 v10, 0x4

    if-ne v3, v10, :cond_3

    .line 579
    if-eqz v0, :cond_0

    .line 580
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    .line 581
    if-eqz v9, :cond_0

    .line 582
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 583
    const-string/jumbo v10, "\\n"

    const-string/jumbo v11, "\n"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 584
    const-string/jumbo v10, "\\"

    const-string/jumbo v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v9

    goto :goto_1

    .line 587
    :cond_3
    const/4 v10, 0x3

    if-ne v3, v10, :cond_0

    .line 588
    const/4 v9, 0x0

    .line 589
    const/4 v0, 0x0

    .line 590
    const/4 v4, 0x0

    goto :goto_1

    .line 605
    :cond_4
    if-eqz v7, :cond_5

    .line 606
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 607
    const/4 v6, 0x0

    .line 613
    .end local v0    # "attrName":Ljava/lang/String;
    .end local v3    # "eventType":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .end local v8    # "stringMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "value":Ljava/lang/String;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :goto_2
    return-object v8

    .line 609
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "attrName":Ljava/lang/String;
    .restart local v3    # "eventType":I
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stringMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 610
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 601
    .end local v0    # "attrName":Ljava/lang/String;
    .end local v3    # "eventType":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "stringMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "value":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 602
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 605
    if-eqz v6, :cond_6

    .line 606
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 607
    const/4 v6, 0x0

    .line 613
    :cond_6
    :goto_4
    const/4 v8, 0x0

    goto :goto_2

    .line 609
    :catch_2
    move-exception v2

    .line 610
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 604
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 605
    :goto_5
    if-eqz v6, :cond_7

    .line 606
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 607
    const/4 v6, 0x0

    .line 611
    :cond_7
    :goto_6
    throw v10

    .line 609
    :catch_3
    move-exception v2

    .line 610
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 604
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stringMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 601
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v2

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public static hexToBytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 136
    if-nez p0, :cond_1

    .line 137
    const/4 v0, 0x0

    .line 144
    :cond_0
    return-object v0

    .line 139
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 140
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 141
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 142
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 141
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method public static isGoodGaAndGb(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 4
    .param p0, "g_a"    # Ljava/math/BigInteger;
    .param p1, "p"    # Ljava/math/BigInteger;

    .prologue
    const-wide/16 v2, 0x1

    const/4 v0, 0x1

    .line 198
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGoodPrime([BI)Z
    .locals 13
    .param p0, "prime"    # [B
    .param p1, "g"    # I

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x7

    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 148
    if-lt p1, v10, :cond_0

    if-le p1, v11, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v6

    .line 152
    :cond_1
    array-length v7, p0

    const/16 v8, 0x100

    if-ne v7, v8, :cond_0

    aget-byte v7, p0, v6

    if-gez v7, :cond_0

    .line 156
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v5, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 158
    .local v0, "dhBI":Ljava/math/BigInteger;
    if-ne p1, v10, :cond_3

    .line 159
    const-wide/16 v8, 0x8

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 160
    .local v3, "res":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    if-ne v7, v11, :cond_0

    .line 188
    .end local v3    # "res":Ljava/math/BigInteger;
    :cond_2
    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "hex":Ljava/lang/String;
    const-string/jumbo v7, "C71CAEB9C6B1C9048E6C522F70F13F73980D40238E3E21C14934D037563D930F48198A0AA7C14058229493D22530F4DBFA336F6E0AC925139543AED44CCE7C3720FD51F69458705AC68CD4FE6B6B13ABDC9746512969328454F18FAF8C595F642477FE96BB2A941D5BCD1D4AC8CC49880708FA9B378E3C4F3A9060BEE67CF9A4A4A695811051907E162753B56B0F6B410DBA74D8A84B2A14B3144E0EF1284754FD17ED950D5965B4B9DD46582DB1178D169C6BC465B0D6FF9CA3928FEF5B9AE4E418FC15E83EBEA0F87FA9FF5EED70050DED2849F47BF959D956850CE929851F0D8115F635B105EE2E4E15D04B2454BF6F4FADF034B10403119CD8E3B92FCC5B"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v6, v5

    .line 190
    goto :goto_0

    .line 163
    .end local v2    # "hex":Ljava/lang/String;
    :cond_3
    if-ne p1, v12, :cond_4

    .line 164
    const-wide/16 v8, 0x3

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 165
    .restart local v3    # "res":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    if-eq v7, v10, :cond_2

    goto :goto_0

    .line 168
    .end local v3    # "res":Ljava/math/BigInteger;
    :cond_4
    const/4 v7, 0x5

    if-ne p1, v7, :cond_5

    .line 169
    const-wide/16 v8, 0x5

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 170
    .restart local v3    # "res":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    .line 171
    .local v4, "val":I
    if-eq v4, v5, :cond_2

    const/4 v7, 0x4

    if-eq v4, v7, :cond_2

    goto :goto_0

    .line 174
    .end local v3    # "res":Ljava/math/BigInteger;
    .end local v4    # "val":I
    :cond_5
    const/4 v7, 0x6

    if-ne p1, v7, :cond_6

    .line 175
    const-wide/16 v8, 0x18

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 176
    .restart local v3    # "res":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    .line 177
    .restart local v4    # "val":I
    const/16 v7, 0x13

    if-eq v4, v7, :cond_2

    const/16 v7, 0x17

    if-eq v4, v7, :cond_2

    goto :goto_0

    .line 180
    .end local v3    # "res":Ljava/math/BigInteger;
    .end local v4    # "val":I
    :cond_6
    if-ne p1, v11, :cond_2

    .line 181
    const-wide/16 v8, 0x7

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 182
    .restart local v3    # "res":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    .line 183
    .restart local v4    # "val":I
    if-eq v4, v12, :cond_2

    const/4 v7, 0x5

    if-eq v4, v7, :cond_2

    const/4 v7, 0x6

    if-eq v4, v7, :cond_2

    goto/16 :goto_0

    .line 193
    .end local v3    # "res":Ljava/math/BigInteger;
    .end local v4    # "val":I
    .restart local v2    # "hex":Ljava/lang/String;
    :cond_7
    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    const-wide/16 v8, 0x2

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 194
    .local v1, "dhBI2":Ljava/math/BigInteger;
    const/16 v7, 0x1e

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x1e

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v7

    if-eqz v7, :cond_8

    :goto_1
    move v6, v5

    goto/16 :goto_0

    :cond_8
    move v5, v6

    goto :goto_1
.end method

.method public static loadDBFromSD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefPath"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 503
    invoke-static {}, Lorg/telegram/ui/Components/Favorite;->getInstance()Lorg/telegram/ui/Components/Favorite;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Favorite;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 504
    invoke-static {}, Lorg/telegram/ui/Components/Favorite;->getInstance()Lorg/telegram/ui/Components/Favorite;

    move-result-object v3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/Favorite;->addFavorite(Ljava/lang/Long;)V

    .line 505
    invoke-static {}, Lorg/telegram/ui/Components/Favorite;->getInstance()Lorg/telegram/ui/Components/Favorite;

    move-result-object v3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/Favorite;->deleteFavorite(Ljava/lang/Long;)V

    .line 507
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 509
    .local v0, "dataF":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 511
    .local v1, "prefFile":Ljava/io/File;
    invoke-static {v1, v0, v7}, Lorg/telegram/messenger/Utilities;->copyFile(Ljava/io/File;Ljava/io/File;Z)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->getError(I)Ljava/lang/String;

    move-result-object v2

    .line 512
    .local v2, "s":Ljava/lang/String;
    const-string/jumbo v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 513
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0706e6

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 515
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public static loadPrefFromSD(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefPath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 481
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->findPrefFolder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "theme.xml"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    .local v0, "dataF":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 483
    .local v1, "prefFile":Ljava/io/File;
    invoke-static {v1, v0, v7}, Lorg/telegram/messenger/Utilities;->copyFile(Ljava/io/File;Ljava/io/File;Z)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->getError(I)Ljava/lang/String;

    move-result-object v2

    .line 484
    .local v2, "s":Ljava/lang/String;
    const-string/jumbo v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 485
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0706e6

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 487
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public static loadPrefFromSD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefPath"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 491
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->findPrefFolder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    .local v0, "dataF":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 495
    .local v1, "prefFile":Ljava/io/File;
    invoke-static {v1, v0, v7}, Lorg/telegram/messenger/Utilities;->copyFile(Ljava/io/File;Ljava/io/File;Z)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->getError(I)Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, "s":Ljava/lang/String;
    const-string/jumbo v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 497
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0706e6

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 499
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public static native loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z
.end method

.method public static parseInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 80
    if-nez p0, :cond_1

    .line 81
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 93
    :cond_0
    :goto_0
    return-object v3

    .line 83
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 85
    .local v3, "val":Ljava/lang/Integer;
    :try_start_0
    sget-object v4, Lorg/telegram/messenger/Utilities;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 86
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "num":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 90
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "num":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static parseIntToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 114
    sget-object v1, Lorg/telegram/messenger/Utilities;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 115
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 118
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 97
    if-nez p0, :cond_1

    .line 98
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 110
    :cond_0
    :goto_0
    return-object v3

    .line 100
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 102
    .local v3, "val":Ljava/lang/Long;
    :try_start_0
    sget-object v4, Lorg/telegram/messenger/Utilities;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 103
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 104
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "num":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 107
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "num":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static native pinBitmap(Landroid/graphics/Bitmap;)I
.end method

.method public static native readlink(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static restartApp()V
    .locals 10

    .prologue
    .line 288
    new-instance v2, Landroid/content/Intent;

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v5, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 289
    .local v2, "mRestartApp":Landroid/content/Intent;
    const v1, 0x1e240

    .line 290
    .local v1, "mPendingIntentId":I
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/high16 v5, 0x10000000

    invoke-static {v4, v1, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 291
    .local v0, "mPendingIntent":Landroid/app/PendingIntent;
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 292
    .local v3, "mgr":Landroid/app/AlarmManager;
    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    add-long/2addr v6, v8

    invoke-virtual {v3, v4, v6, v7, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 293
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 294
    return-void
.end method

.method public static saveDBToSD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "prefName"    # Ljava/lang/String;
    .param p3, "tName"    # Ljava/lang/String;
    .param p4, "toast"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 342
    invoke-virtual {p0, p2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 343
    .local v0, "dataF":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/Utilities;->checkSDStatus()I

    move-result v4

    if-le v4, v7, :cond_3

    .line 344
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v1, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 345
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 346
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 347
    .local v3, "sdF":Ljava/io/File;
    invoke-static {v0, v3, v7}, Lorg/telegram/messenger/Utilities;->copyFile(Ljava/io/File;Ljava/io/File;Z)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->getError(I)Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, "s":Ljava/lang/String;
    const-string/jumbo v4, "4"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 349
    if-eqz p4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    if-eq v4, v5, :cond_0

    .line 350
    const v4, 0x7f070567

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    aput-object p1, v5, v7

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 361
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "sdF":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 351
    .restart local v1    # "f":Ljava/io/File;
    .restart local v2    # "s":Ljava/lang/String;
    .restart local v3    # "sdF":Ljava/io/File;
    :cond_1
    const-string/jumbo v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 352
    const v4, 0x7f07055a

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 353
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ERROR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 355
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ERROR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 356
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 359
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "sdF":Ljava/io/File;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ERROR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0703db

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static savePreferencesToSD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "prefName"    # Ljava/lang/String;
    .param p3, "tName"    # Ljava/lang/String;
    .param p4, "toast"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 298
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->findPrefFolder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .local v0, "dataF":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/Utilities;->checkSDStatus()I

    move-result v4

    if-le v4, v7, :cond_3

    .line 300
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v1, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 301
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 302
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 303
    .local v3, "sdF":Ljava/io/File;
    invoke-static {v0, v3, v7}, Lorg/telegram/messenger/Utilities;->copyFile(Ljava/io/File;Ljava/io/File;Z)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->getError(I)Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, "s":Ljava/lang/String;
    const-string/jumbo v4, "4"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 305
    if-eqz p4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    if-eq v4, v5, :cond_0

    .line 306
    const v4, 0x7f070567

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    aput-object p1, v5, v7

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 317
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "sdF":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 307
    .restart local v1    # "f":Ljava/io/File;
    .restart local v2    # "s":Ljava/lang/String;
    .restart local v3    # "sdF":Ljava/io/File;
    :cond_1
    const-string/jumbo v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 308
    const v4, 0x7f07055a

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 309
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ERROR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 311
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ERROR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 312
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 315
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "sdF":Ljava/io/File;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ERROR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0703db

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static native unpinBitmap(Landroid/graphics/Bitmap;)V
.end method

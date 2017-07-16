.class public Lorg/telegram/messenger/ApplicationLoader2;
.super Landroid/app/Application;
.source "ApplicationLoader2.java"


# static fields
.field public static volatile applicationContext:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static convertConfig2(Ljava/lang/String;)V
    .locals 14
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 29
    sput-object p0, Lorg/telegram/messenger/ApplicationLoader2;->tag:Ljava/lang/String;

    .line 30
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "dataconfig"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 31
    .local v8, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v9, "currentDatacenterId"

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 32
    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    const v9, 0x8000

    invoke-direct {v0, v9}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 33
    .local v0, "buffer":Lorg/telegram/tgnet/SerializedData;
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 34
    const-string/jumbo v9, "datacenterSetId"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_2

    move v9, v10

    :goto_0
    invoke-virtual {v0, v9}, Lorg/telegram/tgnet/SerializedData;->writeBool(Z)V

    .line 35
    invoke-virtual {v0, v10}, Lorg/telegram/tgnet/SerializedData;->writeBool(Z)V

    .line 36
    const-string/jumbo v9, "currentDatacenterId"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v0, v9}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 37
    const-string/jumbo v9, "timeDifference"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v0, v9}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 38
    const-string/jumbo v9, "lastDcUpdateTime"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v0, v9}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 39
    const-string/jumbo v9, "pushSessionId"

    const-wide/16 v12, 0x0

    invoke-interface {v8, v9, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Lorg/telegram/tgnet/SerializedData;->writeInt64(J)V

    .line 40
    invoke-virtual {v0, v11}, Lorg/telegram/tgnet/SerializedData;->writeBool(Z)V

    .line 41
    invoke-virtual {v0, v11}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 43
    :try_start_0
    const-string/jumbo v9, "datacenters"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, "datacentersString":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 45
    const/4 v9, 0x0

    invoke-static {v4, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 46
    .local v3, "datacentersBytes":[B
    if-eqz v3, :cond_0

    .line 47
    new-instance v2, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v2, v3}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 48
    .local v2, "data":Lorg/telegram/tgnet/SerializedData;
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v9

    invoke-virtual {v0, v9}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 49
    const/4 v9, 0x4

    array-length v10, v3

    add-int/lit8 v10, v10, -0x4

    invoke-virtual {v0, v3, v9, v10}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    .line 50
    invoke-virtual {v2}, Lorg/telegram/tgnet/SerializedData;->cleanup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v2    # "data":Lorg/telegram/tgnet/SerializedData;
    .end local v3    # "datacentersBytes":[B
    .end local v4    # "datacentersString":Ljava/lang/String;
    :cond_0
    :goto_1
    :try_start_1
    new-instance v6, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader2;->getFilesDirFixed()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "tgnet.dat"

    invoke-direct {v6, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .local v6, "file":Ljava/io/File;
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string/jumbo v9, "rws"

    invoke-direct {v7, v6, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    .local v7, "fileOutputStream":Ljava/io/RandomAccessFile;
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v1

    .line 61
    .local v1, "bytes":[B
    array-length v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 62
    invoke-virtual {v7, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 63
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    .end local v1    # "bytes":[B
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "fileOutputStream":Ljava/io/RandomAccessFile;
    :goto_2
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    .line 68
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    .end local v0    # "buffer":Lorg/telegram/tgnet/SerializedData;
    :cond_1
    return-void

    .restart local v0    # "buffer":Lorg/telegram/tgnet/SerializedData;
    :cond_2
    move v9, v11

    .line 34
    goto/16 :goto_0

    .line 53
    :catch_0
    move-exception v5

    .line 54
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 64
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 65
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static getFilesDirFixed()Ljava/io/File;
    .locals 7

    .prologue
    .line 73
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/telegram/messenger/ApplicationLoader2;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lorg/telegram/messenger/ApplicationLoader2;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 74
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/16 v4, 0xa

    if-ge v0, v4, :cond_1

    .line 75
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 76
    .local v3, "path":Ljava/io/File;
    if-eqz v3, :cond_0

    .line 88
    .end local v3    # "path":Ljava/io/File;
    :goto_1
    return-object v3

    .line 74
    .restart local v3    # "path":Ljava/io/File;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    .end local v3    # "path":Ljava/io/File;
    :cond_1
    :try_start_0
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader2;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 82
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    new-instance v3, Ljava/io/File;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string/jumbo v5, "files"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .restart local v3    # "path":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 85
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "path":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 88
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "/data/data/org.telegram.messenger/files"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

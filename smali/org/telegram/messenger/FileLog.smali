.class public Lorg/telegram/messenger/FileLog;
.super Ljava/lang/Object;
.source "FileLog.java"


# static fields
.field private static volatile Instance:Lorg/telegram/messenger/FileLog;


# instance fields
.field private currentFile:Ljava/io/File;

.field private dateFormat:Lorg/telegram/messenger/time/FastDateFormat;

.field private logQueue:Lorg/telegram/messenger/DispatchQueue;

.field private networkFile:Ljava/io/File;

.field private streamWriter:Ljava/io/OutputStreamWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/FileLog;->Instance:Lorg/telegram/messenger/FileLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v4, p0, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    .line 23
    iput-object v4, p0, Lorg/telegram/messenger/FileLog;->dateFormat:Lorg/telegram/messenger/time/FastDateFormat;

    .line 24
    iput-object v4, p0, Lorg/telegram/messenger/FileLog;->logQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 25
    iput-object v4, p0, Lorg/telegram/messenger/FileLog;->currentFile:Ljava/io/File;

    .line 26
    iput-object v4, p0, Lorg/telegram/messenger/FileLog;->networkFile:Ljava/io/File;

    .line 43
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-nez v4, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    const-string/jumbo v4, "dd_MM_yyyy_HH_mm_ss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/FileLog;->dateFormat:Lorg/telegram/messenger/time/FastDateFormat;

    .line 48
    :try_start_0
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 49
    .local v2, "sdCard":Ljava/io/File;
    if-eqz v2, :cond_0

    .line 52
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/logs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 54
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/telegram/messenger/FileLog;->dateFormat:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lorg/telegram/messenger/FileLog;->currentFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "sdCard":Ljava/io/File;
    :goto_1
    :try_start_1
    new-instance v4, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v5, "logQueue"

    invoke-direct {v4, v5}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lorg/telegram/messenger/FileLog;->logQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 60
    iget-object v4, p0, Lorg/telegram/messenger/FileLog;->currentFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 61
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lorg/telegram/messenger/FileLog;->currentFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 62
    .local v3, "stream":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, p0, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    .line 63
    iget-object v4, p0, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-----start log "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/messenger/FileLog;->dateFormat:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "-----\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 64
    iget-object v4, p0, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 65
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 55
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 56
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$000(Lorg/telegram/messenger/FileLog;)Lorg/telegram/messenger/time/FastDateFormat;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLog;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/telegram/messenger/FileLog;->dateFormat:Lorg/telegram/messenger/time/FastDateFormat;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/FileLog;)Ljava/io/OutputStreamWriter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLog;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    return-object v0
.end method

.method public static cleanupLogs()V
    .locals 8

    .prologue
    .line 197
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 198
    .local v5, "sdCard":Ljava/io/File;
    if-nez v5, :cond_0

    .line 224
    :goto_0
    return-void

    .line 201
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/logs"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 203
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_4

    .line 204
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    array-length v6, v3

    if-ge v0, v6, :cond_4

    .line 205
    aget-object v2, v3, v0

    .line 206
    .local v2, "file":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/FileLog;->currentFile:Ljava/io/File;

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/FileLog;->currentFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 204
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 209
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/FileLog;->networkFile:Ljava/io/File;

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/FileLog;->networkFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 212
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 216
    .end local v0    # "a":I
    .end local v2    # "file":Ljava/io/File;
    :cond_4
    array-length v6, v3

    add-int/lit8 v4, v6, -0x1

    .line 217
    .local v4, "i":I
    new-instance v6, Lorg/telegram/messenger/FileLog$6;

    invoke-direct {v6, v4}, Lorg/telegram/messenger/FileLog$6;-><init>(I)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 157
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-nez v0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    if-eqz v0, :cond_0

    .line 162
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/FileLog;->logQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLog$4;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileLog$4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 111
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-nez v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/FileLog;->logQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLog$2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileLog$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 90
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-nez v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    if-eqz v0, :cond_0

    .line 95
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/FileLog;->logQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLog$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/FileLog$1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 131
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 135
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    if-eqz v0, :cond_1

    .line 136
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/FileLog;->logQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLog$3;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileLog$3;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lorg/telegram/messenger/FileLog;
    .locals 4

    .prologue
    .line 30
    sget-object v0, Lorg/telegram/messenger/FileLog;->Instance:Lorg/telegram/messenger/FileLog;

    .line 31
    .local v0, "localInstance":Lorg/telegram/messenger/FileLog;
    if-nez v0, :cond_1

    .line 32
    const-class v3, Lorg/telegram/messenger/FileLog;

    monitor-enter v3

    .line 33
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/FileLog;->Instance:Lorg/telegram/messenger/FileLog;

    .line 34
    if-nez v0, :cond_0

    .line 35
    new-instance v1, Lorg/telegram/messenger/FileLog;

    invoke-direct {v1}, Lorg/telegram/messenger/FileLog;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/messenger/FileLog;
    .local v1, "localInstance":Lorg/telegram/messenger/FileLog;
    :try_start_1
    sput-object v1, Lorg/telegram/messenger/FileLog;->Instance:Lorg/telegram/messenger/FileLog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 37
    .end local v1    # "localInstance":Lorg/telegram/messenger/FileLog;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/FileLog;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 39
    :cond_1
    return-object v0

    .line 37
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/messenger/FileLog;
    .restart local v1    # "localInstance":Lorg/telegram/messenger/FileLog;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/messenger/FileLog;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/FileLog;
    goto :goto_0
.end method

.method public static getNetworkLogPath()Ljava/lang/String;
    .locals 10

    .prologue
    .line 71
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-nez v3, :cond_0

    .line 72
    const-string/jumbo v3, ""

    .line 86
    .local v2, "sdCard":Ljava/io/File;
    :goto_0
    return-object v3

    .line 75
    .end local v2    # "sdCard":Ljava/io/File;
    :cond_0
    :try_start_0
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 76
    .restart local v2    # "sdCard":Ljava/io/File;
    if-nez v2, :cond_1

    .line 77
    const-string/jumbo v3, ""

    goto :goto_0

    .line 79
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/logs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 81
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/FileLog;->dateFormat:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_net.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, v3, Lorg/telegram/messenger/FileLog;->networkFile:Ljava/io/File;

    .line 82
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/FileLog;->networkFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 83
    .end local v0    # "dir":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 177
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-nez v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/FileLog;->streamWriter:Ljava/io/OutputStreamWriter;

    if-eqz v0, :cond_0

    .line 182
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/FileLog;->logQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLog$5;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileLog$5;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

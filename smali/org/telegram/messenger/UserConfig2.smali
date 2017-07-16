.class public Lorg/telegram/messenger/UserConfig2;
.super Ljava/lang/Object;
.source "UserConfig2.java"


# static fields
.field private static currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field private static final sync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/telegram/messenger/UserConfig2;->sync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClientUserId()I
    .locals 2

    .prologue
    .line 28
    sget-object v1, Lorg/telegram/messenger/UserConfig2;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/UserConfig2;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/UserConfig2;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getCurrentUser(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 2
    .param p0, "userTag"    # Ljava/lang/String;

    .prologue
    .line 34
    sget-object v1, Lorg/telegram/messenger/UserConfig2;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 35
    :try_start_0
    invoke-static {p0}, Lorg/telegram/messenger/UserConfig2;->loadConfig(Ljava/lang/String;)V

    .line 36
    sget-object v0, Lorg/telegram/messenger/UserConfig2;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    monitor-exit v1

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static loadConfig(Ljava/lang/String;)V
    .locals 10
    .param p0, "userTag"    # Ljava/lang/String;

    .prologue
    .line 47
    sget-object v7, Lorg/telegram/messenger/UserConfig2;->sync:Ljava/lang/Object;

    monitor-enter v7

    .line 49
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "user.dat"

    invoke-direct {v1, v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .local v1, "configFile":Ljava/io/File;
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "userconfing"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 51
    .local v4, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "user"

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "string":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 53
    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 54
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    .line 55
    new-instance v2, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v2, v0}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 56
    .local v2, "data":Lorg/telegram/tgnet/SerializedData;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v6

    const/4 v8, 0x0

    invoke-static {v2, v6, v8}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    sput-object v6, Lorg/telegram/messenger/UserConfig2;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 57
    invoke-virtual {v2}, Lorg/telegram/tgnet/SerializedData;->cleanup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .end local v0    # "bytes":[B
    .end local v1    # "configFile":Ljava/io/File;
    .end local v2    # "data":Lorg/telegram/tgnet/SerializedData;
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    .end local v5    # "string":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v7

    .line 64
    return-void

    .line 60
    :catch_0
    move-exception v3

    .line 61
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "TGM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "loadConfig: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public static setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 2
    .param p0, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 41
    sget-object v1, Lorg/telegram/messenger/UserConfig2;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_0
    sput-object p0, Lorg/telegram/messenger/UserConfig2;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 43
    monitor-exit v1

    .line 44
    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

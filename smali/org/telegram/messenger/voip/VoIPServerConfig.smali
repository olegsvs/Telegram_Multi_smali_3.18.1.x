.class public Lorg/telegram/messenger/voip/VoIPServerConfig;
.super Ljava/lang/Object;
.source "VoIPServerConfig.java"


# static fields
.field private static config:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "fallback"    # Z

    .prologue
    sget-object v0, Lorg/telegram/messenger/voip/VoIPServerConfig;->config:Lorg/json/JSONObject;

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getDouble(Ljava/lang/String;D)D
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "fallback"    # D

    .prologue
    sget-object v0, Lorg/telegram/messenger/voip/VoIPServerConfig;->config:Lorg/json/JSONObject;

    invoke-virtual {v0, p0, p1, p2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "fallback"    # I

    .prologue
    sget-object v0, Lorg/telegram/messenger/voip/VoIPServerConfig;->config:Lorg/json/JSONObject;

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "fallback"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lorg/telegram/messenger/voip/VoIPServerConfig;->config:Lorg/json/JSONObject;

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native nativeSetConfig([Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public static setConfig(Ljava/lang/String;)V
    .locals 7
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .local v3, "obj":Lorg/json/JSONObject;
    sput-object v3, Lorg/telegram/messenger/voip/VoIPServerConfig;->config:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v6

    new-array v2, v6, [Ljava/lang/String;

    .local v2, "keys":[Ljava/lang/String;
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v6

    new-array v4, v6, [Ljava/lang/String;

    .local v4, "values":[Ljava/lang/String;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "itrtr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v2, v0

    aget-object v6, v2, v0

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2, v4}, Lorg/telegram/messenger/voip/VoIPServerConfig;->nativeSetConfig([Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "i":I
    .end local v1    # "itrtr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "keys":[Ljava/lang/String;
    .end local v3    # "obj":Lorg/json/JSONObject;
    .end local v4    # "values":[Ljava/lang/String;
    :goto_1
    return-void

    :catch_0
    move-exception v5

    .local v5, "x":Lorg/json/JSONException;
    const-string/jumbo v6, "Error parsing VoIP config"

    invoke-static {v6, v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

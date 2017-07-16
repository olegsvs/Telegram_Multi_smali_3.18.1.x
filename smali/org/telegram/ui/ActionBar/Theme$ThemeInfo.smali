.class public Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
.super Ljava/lang/Object;
.source "Theme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/Theme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemeInfo"
.end annotation


# instance fields
.field public assetName:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public pathToFile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createWithJson(Lorg/json/JSONObject;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    .locals 4
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    .line 86
    if-nez p0, :cond_0

    move-object v1, v2

    .line 97
    :goto_0
    return-object v1

    .line 90
    :cond_0
    :try_start_0
    new-instance v1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-direct {v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;-><init>()V

    .line 91
    .local v1, "themeInfo":Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    const-string/jumbo v3, "name"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    .line 92
    const-string/jumbo v3, "path"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    .end local v1    # "themeInfo":Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 97
    goto :goto_0
.end method

.method public static createWithString(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-object v1

    .line 104
    :cond_1
    const-string/jumbo v2, "\\|"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "args":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 108
    new-instance v1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-direct {v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;-><init>()V

    .line 109
    .local v1, "themeInfo":Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    .line 110
    const/4 v2, 0x1

    aget-object v2, v0, v2

    iput-object v2, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getSaveJson()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 75
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 76
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "name"

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string/jumbo v2, "path"

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 82
    const/4 v1, 0x0

    goto :goto_0
.end method

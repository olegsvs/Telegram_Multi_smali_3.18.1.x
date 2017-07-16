.class public Lorg/telegram/messenger/LocaleController$LocaleInfo;
.super Ljava/lang/Object;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleInfo"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public nameEnglish:Ljava/lang/String;

.field public pathToFile:Ljava/lang/String;

.field public shortName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createWithString(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 100
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-object v1

    .line 103
    :cond_1
    const-string/jumbo v2, "\\|"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "args":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 107
    new-instance v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-direct {v1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 108
    .local v1, "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 109
    const/4 v2, 0x1

    aget-object v2, v0, v2

    iput-object v2, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 110
    const/4 v2, 0x2

    aget-object v2, v0, v2

    iput-object v2, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 111
    const/4 v2, 0x3

    aget-object v2, v0, v2

    iput-object v2, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getSaveString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

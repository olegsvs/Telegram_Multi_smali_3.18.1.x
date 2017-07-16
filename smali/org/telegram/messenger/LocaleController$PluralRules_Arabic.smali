.class public Lorg/telegram/messenger/LocaleController$PluralRules_Arabic;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_Arabic"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController$PluralRules;-><init>()V

    return-void
.end method


# virtual methods
.method public quantityForNumber(I)I
    .locals 3
    .param p1, "count"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    rem-int/lit8 v0, p1, 0x64

    .local v0, "rem100":I
    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    if-ne p1, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    const/16 v1, 0xa

    if-gt v0, v1, :cond_3

    const/16 v1, 0x8

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    const/16 v1, 0x63

    if-gt v0, v1, :cond_4

    const/16 v1, 0x10

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

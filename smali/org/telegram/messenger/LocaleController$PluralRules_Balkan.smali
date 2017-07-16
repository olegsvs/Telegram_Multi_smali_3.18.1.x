.class public Lorg/telegram/messenger/LocaleController$PluralRules_Balkan;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_Balkan"
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
    .locals 6
    .param p1, "count"    # I

    .prologue
    const/16 v5, 0xe

    const/16 v4, 0xb

    const/4 v2, 0x2

    rem-int/lit8 v1, p1, 0x64

    .local v1, "rem100":I
    rem-int/lit8 v0, p1, 0xa

    .local v0, "rem10":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    if-eq v1, v4, :cond_0

    :goto_0
    return v2

    :cond_0
    if-lt v0, v2, :cond_2

    const/4 v2, 0x4

    if-gt v0, v2, :cond_2

    const/16 v2, 0xc

    if-lt v1, v2, :cond_1

    if-le v1, v5, :cond_2

    :cond_1
    const/16 v2, 0x8

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_4

    const/4 v2, 0x5

    if-lt v0, v2, :cond_3

    const/16 v2, 0x9

    if-le v0, v2, :cond_4

    :cond_3
    if-lt v1, v4, :cond_5

    if-gt v1, v5, :cond_5

    :cond_4
    const/16 v2, 0x10

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

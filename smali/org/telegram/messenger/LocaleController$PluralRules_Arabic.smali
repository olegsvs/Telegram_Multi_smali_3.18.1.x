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
    .line 2016
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

    .line 2018
    rem-int/lit8 v0, p1, 0x64

    .line 2019
    .local v0, "rem100":I
    if-nez p1, :cond_0

    .line 2030
    :goto_0
    return v1

    .line 2021
    :cond_0
    if-ne p1, v1, :cond_1

    move v1, v2

    .line 2022
    goto :goto_0

    .line 2023
    :cond_1
    if-ne p1, v2, :cond_2

    .line 2024
    const/4 v1, 0x4

    goto :goto_0

    .line 2025
    :cond_2
    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    const/16 v1, 0xa

    if-gt v0, v1, :cond_3

    .line 2026
    const/16 v1, 0x8

    goto :goto_0

    .line 2027
    :cond_3
    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    const/16 v1, 0x63

    if-gt v0, v1, :cond_4

    .line 2028
    const/16 v1, 0x10

    goto :goto_0

    .line 2030
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

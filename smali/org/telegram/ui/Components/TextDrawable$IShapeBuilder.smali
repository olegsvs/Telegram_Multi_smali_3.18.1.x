.class public interface abstract Lorg/telegram/ui/Components/TextDrawable$IShapeBuilder;
.super Ljava/lang/Object;
.source "TextDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/TextDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IShapeBuilder"
.end annotation


# virtual methods
.method public abstract beginConfig()Lorg/telegram/ui/Components/TextDrawable$IConfigBuilder;
.end method

.method public abstract buildRect(Ljava/lang/String;I)Lorg/telegram/ui/Components/TextDrawable;
.end method

.method public abstract buildRound(Ljava/lang/String;I)Lorg/telegram/ui/Components/TextDrawable;
.end method

.method public abstract buildRoundRect(Ljava/lang/String;II)Lorg/telegram/ui/Components/TextDrawable;
.end method

.method public abstract rect()Lorg/telegram/ui/Components/TextDrawable$IBuilder;
.end method

.method public abstract round()Lorg/telegram/ui/Components/TextDrawable$IBuilder;
.end method

.method public abstract roundRect(I)Lorg/telegram/ui/Components/TextDrawable$IBuilder;
.end method

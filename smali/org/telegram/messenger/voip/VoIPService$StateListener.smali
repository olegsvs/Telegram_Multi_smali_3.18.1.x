.class public interface abstract Lorg/telegram/messenger/voip/VoIPService$StateListener;
.super Ljava/lang/Object;
.source "VoIPService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/voip/VoIPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateListener"
.end annotation


# virtual methods
.method public abstract onAudioSettingsChanged()V
.end method

.method public abstract onStateChanged(I)V
.end method

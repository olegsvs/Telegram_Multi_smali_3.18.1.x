.class final Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$PlaybackParamsHolder;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlaybackParamsHolder"
.end annotation


# instance fields
.field public final params:Landroid/media/PlaybackParams;


# direct methods
.method public constructor <init>(Landroid/media/PlaybackParams;)V
    .locals 0
    .param p1, "params"    # Landroid/media/PlaybackParams;

    .prologue
    .line 1040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1041
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$PlaybackParamsHolder;->params:Landroid/media/PlaybackParams;

    .line 1042
    return-void
.end method

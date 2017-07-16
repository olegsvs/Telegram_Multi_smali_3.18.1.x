.class public abstract Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;
.super Ljava/lang/Object;
.source "TrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector$InvalidationListener;
    }
.end annotation


# instance fields
.field private listener:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector$InvalidationListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public final init(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector$InvalidationListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector$InvalidationListener;

    .prologue
    .line 46
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;->listener:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector$InvalidationListener;

    .line 47
    return-void
.end method

.method protected final invalidate()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;->listener:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector$InvalidationListener;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;->listener:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector$InvalidationListener;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector$InvalidationListener;->onTrackSelectionsInvalidated()V

    .line 79
    :cond_0
    return-void
.end method

.method public abstract onSelectionActivated(Ljava/lang/Object;)V
.end method

.method public abstract selectTracks([Lorg/telegram/messenger/exoplayer2/RendererCapabilities;Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/telegram/messenger/exoplayer2/RendererCapabilities;",
            "Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

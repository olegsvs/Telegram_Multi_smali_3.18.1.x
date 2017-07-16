.class public final Lorg/telegram/messenger/exoplayer2/trackselection/FixedTrackSelection;
.super Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;
.source "FixedTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/trackselection/FixedTrackSelection$Factory;
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;

.field private final reason:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;I)V
    .locals 2
    .param p1, "group"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    .param p2, "track"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/telegram/messenger/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;IILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;IILjava/lang/Object;)V
    .locals 2
    .param p1, "group"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    .param p2, "track"    # I
    .param p3, "reason"    # I
    .param p4, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;-><init>(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;[I)V

    iput p3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/FixedTrackSelection;->reason:I

    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/FixedTrackSelection;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getSelectedIndex()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/FixedTrackSelection;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getSelectionReason()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/FixedTrackSelection;->reason:I

    return v0
.end method

.method public updateSelectedTrack(J)V
    .locals 0
    .param p1, "bufferedDurationUs"    # J

    .prologue
    return-void
.end method

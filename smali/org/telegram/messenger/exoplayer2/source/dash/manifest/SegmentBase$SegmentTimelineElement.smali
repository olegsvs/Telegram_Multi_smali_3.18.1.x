.class public Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;
.super Ljava/lang/Object;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SegmentTimelineElement"
.end annotation


# instance fields
.field final duration:J

.field final startTime:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "duration"    # J

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;->startTime:J

    .line 354
    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;->duration:J

    .line 355
    return-void
.end method

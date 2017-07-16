.class public Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;
.super Ljava/lang/Object;
.source "DashManifest.java"


# instance fields
.field public final availabilityStartTime:J

.field public final duration:J

.field public final dynamic:Z

.field public final location:Landroid/net/Uri;

.field public final minBufferTime:J

.field public final minUpdatePeriod:J

.field private final periods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;",
            ">;"
        }
    .end annotation
.end field

.field public final suggestedPresentationDelay:J

.field public final timeShiftBufferDepth:J

.field public final utcTiming:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;


# direct methods
.method public constructor <init>(JJJZJJJLorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;Landroid/net/Uri;Ljava/util/List;)V
    .locals 1
    .param p1, "availabilityStartTime"    # J
    .param p3, "duration"    # J
    .param p5, "minBufferTime"    # J
    .param p7, "dynamic"    # Z
    .param p8, "minUpdatePeriod"    # J
    .param p10, "timeShiftBufferDepth"    # J
    .param p12, "suggestedPresentationDelay"    # J
    .param p14, "utcTiming"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;
    .param p15, "location"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJJ",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p16, "periods":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTime:J

    .line 53
    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->duration:J

    .line 54
    iput-wide p5, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->minBufferTime:J

    .line 55
    iput-boolean p7, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    .line 56
    iput-wide p8, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->minUpdatePeriod:J

    .line 57
    iput-wide p10, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepth:J

    .line 58
    iput-wide p12, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->suggestedPresentationDelay:J

    .line 59
    iput-object p14, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->utcTiming:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;

    .line 60
    move-object/from16 v0, p15

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->location:Landroid/net/Uri;

    .line 61
    if-nez p16, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p16

    .end local p16    # "periods":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;>;"
    :cond_0
    move-object/from16 v0, p16

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->periods:Ljava/util/List;

    .line 62
    return-void
.end method


# virtual methods
.method public final getPeriod(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->periods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    return-object v0
.end method

.method public final getPeriodCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->periods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getPeriodDurationMs(I)J
    .locals 4
    .param p1, "index"    # I

    .prologue
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 73
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->periods:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_1

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->duration:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 75
    :goto_0
    return-wide v0

    .line 73
    :cond_0
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->duration:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->periods:Ljava/util/List;

    .line 74
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->startMs:J

    sub-long v0, v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->periods:Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    .line 75
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->startMs:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->periods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->startMs:J

    sub-long v0, v2, v0

    goto :goto_0
.end method

.method public final getPeriodDurationUs(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationMs(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/C;->msToUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.class public final Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
.super Ljava/lang/Object;
.source "HlsMediaPlaylist.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final byterangeLength:J

.field public final byterangeOffset:J

.field public final discontinuitySequenceNumber:I

.field public final durationUs:J

.field public final encryptionIV:Ljava/lang/String;

.field public final encryptionKeyUri:Ljava/lang/String;

.field public final isEncrypted:Z

.field public final startTimeUs:J

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JIJZLjava/lang/String;Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "durationUs"    # J
    .param p4, "discontinuitySequenceNumber"    # I
    .param p5, "startTimeUs"    # J
    .param p7, "isEncrypted"    # Z
    .param p8, "encryptionKeyUri"    # Ljava/lang/String;
    .param p9, "encryptionIV"    # Ljava/lang/String;
    .param p10, "byterangeOffset"    # J
    .param p12, "byterangeLength"    # J

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    .line 51
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->durationUs:J

    .line 52
    iput p4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    .line 53
    iput-wide p5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->startTimeUs:J

    .line 54
    iput-boolean p7, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->isEncrypted:Z

    .line 55
    iput-object p8, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionKeyUri:Ljava/lang/String;

    .line 56
    iput-object p9, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    .line 57
    iput-wide p10, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeOffset:J

    .line 58
    iput-wide p12, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeLength:J

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 14
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "byterangeOffset"    # J
    .param p4, "byterangeLength"    # J

    .prologue
    .line 44
    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-direct/range {v0 .. v13}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;JIJZLjava/lang/String;Ljava/lang/String;JJ)V

    .line 45
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Long;)I
    .locals 4
    .param p1, "startTimeUs"    # Ljava/lang/Long;

    .prologue
    .line 63
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->startTimeUs:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->startTimeUs:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 31
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public copyWithStartTimeUs(J)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .locals 15
    .param p1, "startTimeUs"    # J

    .prologue
    .line 67
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->durationUs:J

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    iget-boolean v7, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->isEncrypted:Z

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionKeyUri:Ljava/lang/String;

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    iget-wide v10, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeOffset:J

    iget-wide v12, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeLength:J

    move-wide/from16 v5, p1

    invoke-direct/range {v0 .. v13}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;JIJZLjava/lang/String;Ljava/lang/String;JJ)V

    return-object v0
.end method

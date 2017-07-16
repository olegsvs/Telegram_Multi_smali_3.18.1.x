.class Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;,
        Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;,
        Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;
    }
.end annotation


# instance fields
.field private final dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private encryptionIv:[B

.field private encryptionIvString:Ljava/lang/String;

.field private encryptionKey:[B

.field private encryptionKeyUri:Landroid/net/Uri;

.field private fatalError:Ljava/io/IOException;

.field private isTimestampMaster:Z

.field private final playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

.field private scratchSpace:[B

.field private final timestampAdjusterProvider:Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;

.field private final trackGroup:Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

.field private trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

.field private final variants:[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;)V
    .locals 5
    .param p1, "playlistTracker"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;
    .param p2, "variants"    # [Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .param p3, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p4, "timestampAdjusterProvider"    # Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 114
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 115
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 116
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->timestampAdjusterProvider:Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;

    .line 118
    array-length v3, p2

    new-array v2, v3, [Lorg/telegram/messenger/exoplayer2/Format;

    .line 119
    .local v2, "variantFormats":[Lorg/telegram/messenger/exoplayer2/Format;
    array-length v3, p2

    new-array v1, v3, [I

    .line 120
    .local v1, "initialTrackSelection":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_0

    .line 121
    aget-object v3, p2, v0

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lorg/telegram/messenger/exoplayer2/Format;

    aput-object v3, v2, v0

    .line 122
    aput v0, v1, v0

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    invoke-direct {v3, v2}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;-><init>([Lorg/telegram/messenger/exoplayer2/Format;)V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    .line 125
    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    invoke-direct {v3, v4, v1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;-><init>(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;[I)V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    .line 126
    return-void
.end method

.method private clearEncryptionData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 368
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    .line 369
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionKey:[B

    .line 370
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    .line 371
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionIv:[B

    .line 372
    return-void
.end method

.method private newEncryptionKeyChunk(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/Object;)Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;
    .locals 9
    .param p1, "keyUri"    # Landroid/net/Uri;
    .param p2, "iv"    # Ljava/lang/String;
    .param p3, "variantIndex"    # I
    .param p4, "trackSelectionReason"    # I
    .param p5, "trackSelectionData"    # Ljava/lang/Object;

    .prologue
    .line 342
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 343
    .local v0, "dataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v3, v3, p3

    iget-object v4, v3, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->scratchSpace:[B

    move-object v3, v0

    move v5, p4

    move-object v6, p5

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;[BLjava/lang/String;)V

    return-object v1
.end method

.method private setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V
    .locals 7
    .param p1, "keyUri"    # Landroid/net/Uri;
    .param p2, "iv"    # Ljava/lang/String;
    .param p3, "secretKey"    # [B

    .prologue
    const/16 v6, 0x10

    .line 349
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 350
    const/4 v4, 0x2

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 355
    .local v3, "trimmedIv":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 356
    .local v0, "ivData":[B
    new-array v1, v6, [B

    .line 357
    .local v1, "ivDataWithPadding":[B
    array-length v4, v0

    if-le v4, v6, :cond_1

    array-length v4, v0

    add-int/lit8 v2, v4, -0x10

    .line 358
    .local v2, "offset":I
    :goto_1
    array-length v4, v1

    array-length v5, v0

    sub-int/2addr v4, v5

    add-int/2addr v4, v2

    array-length v5, v0

    sub-int/2addr v5, v2

    invoke-static {v0, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    .line 362
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionKey:[B

    .line 363
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    .line 364
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionIv:[B

    .line 365
    return-void

    .line 352
    .end local v0    # "ivData":[B
    .end local v1    # "ivDataWithPadding":[B
    .end local v2    # "offset":I
    .end local v3    # "trimmedIv":Ljava/lang/String;
    :cond_0
    move-object v3, p2

    .restart local v3    # "trimmedIv":Ljava/lang/String;
    goto :goto_0

    .line 357
    .restart local v0    # "ivData":[B
    .restart local v1    # "ivDataWithPadding":[B
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getNextChunk(Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;JLorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;)V
    .locals 36
    .param p1, "previous"    # Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;
    .param p2, "playbackPositionUs"    # J
    .param p4, "out"    # Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    .prologue
    .line 188
    if-nez p1, :cond_0

    const/16 v29, -0x1

    .line 192
    .local v29, "oldVariantIndex":I
    :goto_0
    if-nez p1, :cond_1

    const-wide/16 v24, 0x0

    .line 196
    .local v24, "bufferedDurationUs":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-wide/from16 v0, v24

    invoke-interface {v2, v0, v1}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->updateSelectedTrack(J)V

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectedIndexInTrackGroup()I

    move-result v5

    .line 199
    .local v5, "newVariantIndex":I
    move/from16 v0, v29

    if-eq v0, v5, :cond_2

    const/16 v32, 0x1

    .line 200
    .local v32, "switchingVariant":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getPlaylistSnapshot(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v28

    .line 201
    .local v28, "mediaPlaylist":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    if-nez v28, :cond_3

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v2, v2, v5

    move-object/from16 v0, p4

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->playlist:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 287
    :goto_3
    return-void

    .line 188
    .end local v5    # "newVariantIndex":I
    .end local v24    # "bufferedDurationUs":J
    .end local v28    # "mediaPlaylist":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .end local v29    # "oldVariantIndex":I
    .end local v32    # "switchingVariant":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 189
    invoke-virtual {v2, v4}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->indexOf(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v29

    goto :goto_0

    .line 192
    .restart local v29    # "oldVariantIndex":I
    :cond_1
    const-wide/16 v10, 0x0

    .line 193
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->getAdjustedStartTimeUs()J

    move-result-wide v12

    sub-long v12, v12, p2

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    goto :goto_1

    .line 199
    .restart local v5    # "newVariantIndex":I
    .restart local v24    # "bufferedDurationUs":J
    :cond_2
    const/16 v32, 0x0

    goto :goto_2

    .line 209
    .restart local v28    # "mediaPlaylist":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .restart local v32    # "switchingVariant":Z
    :cond_3
    if-eqz p1, :cond_4

    if-eqz v32, :cond_a

    .line 210
    :cond_4
    if-nez p1, :cond_6

    move-wide/from16 v34, p2

    .line 211
    .local v34, "targetPositionUs":J
    :goto_4
    move-object/from16 v0, v28

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-nez v2, :cond_7

    invoke-virtual/range {v28 .. v28}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->getEndTimeUs()J

    move-result-wide v10

    cmp-long v2, v34, v10

    if-lez v2, :cond_7

    .line 213
    move-object/from16 v0, v28

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int v17, v2, v4

    .line 228
    .end local v34    # "targetPositionUs":J
    .local v17, "chunkMediaSequence":I
    :cond_5
    :goto_5
    move-object/from16 v0, v28

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_b

    .line 229
    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v2}, Lorg/telegram/messenger/exoplayer2/source/BehindLiveWindowException;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    goto :goto_3

    .line 210
    .end local v17    # "chunkMediaSequence":I
    :cond_6
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->startTimeUs:J

    move-wide/from16 v34, v0

    goto :goto_4

    .line 215
    .restart local v34    # "targetPositionUs":J
    :cond_7
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 216
    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->isLive()Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez p1, :cond_9

    :cond_8
    const/4 v2, 0x1

    .line 215
    :goto_6
    invoke-static {v4, v9, v10, v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Object;ZZ)I

    move-result v2

    move-object/from16 v0, v28

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    add-int v17, v2, v4

    .line 217
    .restart local v17    # "chunkMediaSequence":I
    move-object/from16 v0, v28

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_5

    if-eqz p1, :cond_5

    .line 220
    move/from16 v5, v29

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getPlaylistSnapshot(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v28

    .line 222
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->getNextChunkIndex()I

    move-result v17

    goto :goto_5

    .line 216
    .end local v17    # "chunkMediaSequence":I
    :cond_9
    const/4 v2, 0x0

    goto :goto_6

    .line 226
    .end local v34    # "targetPositionUs":J
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->getNextChunkIndex()I

    move-result v17

    .restart local v17    # "chunkMediaSequence":I
    goto :goto_5

    .line 233
    :cond_b
    move-object/from16 v0, v28

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    sub-int v23, v17, v2

    .line 234
    .local v23, "chunkIndex":I
    move-object/from16 v0, v28

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v23

    if-lt v0, v2, :cond_d

    .line 235
    move-object/from16 v0, v28

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz v2, :cond_c

    .line 236
    const/4 v2, 0x1

    move-object/from16 v0, p4

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->endOfStream:Z

    goto/16 :goto_3

    .line 238
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v2, v2, v5

    move-object/from16 v0, p4

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->playlist:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    goto/16 :goto_3

    .line 244
    :cond_d
    move-object/from16 v0, v28

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    move/from16 v0, v23

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 247
    .local v16, "segment":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->isEncrypted:Z

    if-eqz v2, :cond_12

    .line 248
    move-object/from16 v0, v28

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionKeyUri:Ljava/lang/String;

    invoke-static {v2, v4}, Lorg/telegram/messenger/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 249
    .local v3, "keyUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    invoke-virtual {v3, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 251
    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    .line 252
    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v2, p0

    .line 251
    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->newEncryptionKeyChunk(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/Object;)Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    move-result-object v2

    move-object/from16 v0, p4

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    goto/16 :goto_3

    .line 255
    :cond_e
    move-object/from16 v0, v16

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    invoke-static {v2, v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 256
    move-object/from16 v0, v16

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionKey:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V

    .line 263
    .end local v3    # "keyUri":Landroid/net/Uri;
    :cond_f
    :goto_7
    move-object/from16 v0, v16

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->startTimeUs:J

    move-wide/from16 v30, v0

    .line 264
    .local v30, "startTimeUs":J
    if-eqz p1, :cond_10

    if-nez v32, :cond_10

    .line 265
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->getAdjustedEndTimeUs()J

    move-result-wide v30

    .line 267
    :cond_10
    move-object/from16 v0, v28

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    invoke-static {v2, v4}, Lorg/telegram/messenger/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    .line 269
    .local v26, "chunkUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->timestampAdjusterProvider:Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    move-wide/from16 v0, v30

    invoke-virtual {v2, v4, v0, v1}, Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;->getAdjuster(IJ)Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    move-result-object v19

    .line 272
    .local v19, "timestampAdjuster":Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;
    const/4 v6, 0x0

    .line 273
    .local v6, "initDataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->initializationSegment:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-object/from16 v27, v0

    .line 274
    .local v27, "initSegment":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    if-eqz v27, :cond_11

    .line 275
    move-object/from16 v0, v28

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    invoke-static {v2, v4}, Lorg/telegram/messenger/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 276
    .local v7, "initSegmentUri":Landroid/net/Uri;
    new-instance v6, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    .end local v6    # "initDataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    move-object/from16 v0, v27

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeOffset:J

    move-object/from16 v0, v27

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeLength:J

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v12}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 281
    .end local v7    # "initSegmentUri":Landroid/net/Uri;
    .restart local v6    # "initDataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    :cond_11
    new-instance v8, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, v16

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeOffset:J

    move-object/from16 v0, v16

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeLength:J

    const/4 v14, 0x0

    move-object/from16 v9, v26

    invoke-direct/range {v8 .. v14}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 283
    .local v8, "dataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    new-instance v9, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v13, v2, v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    .line 284
    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->isTimestampMaster:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionKey:[B

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionIv:[B

    move-object/from16 v22, v0

    move-object v11, v8

    move-object v12, v6

    move-object/from16 v20, p1

    invoke-direct/range {v9 .. v22}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;ILjava/lang/Object;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;IZLorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;[B[B)V

    move-object/from16 v0, p4

    iput-object v9, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    goto/16 :goto_3

    .line 259
    .end local v6    # "initDataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .end local v8    # "dataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .end local v19    # "timestampAdjuster":Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;
    .end local v26    # "chunkUri":Landroid/net/Uri;
    .end local v27    # "initSegment":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .end local v30    # "startTimeUs":J
    :cond_12
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->clearEncryptionData()V

    goto/16 :goto_7
.end method

.method public getTrackGroup()Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    return-object v0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    throw v0

    .line 138
    :cond_0
    return-void
.end method

.method public onChunkLoadCompleted(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;)V
    .locals 8
    .param p1, "chunk"    # Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    .prologue
    .line 296
    instance-of v2, p1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 297
    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    .line 298
    .local v1, "mediaChunk":Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v3, v1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->hlsUrl:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    iget v4, v1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->chunkIndex:I

    .line 299
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->getAdjustedStartTimeUs()J

    move-result-wide v6

    .line 298
    invoke-virtual {v2, v3, v4, v6, v7}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->onChunkLoaded(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;IJ)V

    .line 306
    .end local v1    # "mediaChunk":Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    instance-of v2, p1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 301
    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    .line 302
    .local v0, "encryptionKeyChunk":Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->getDataHolder()[B

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->scratchSpace:[B

    .line 303
    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->iv:Ljava/lang/String;

    .line 304
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->getResult()[B

    move-result-object v4

    .line 303
    invoke-direct {p0, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public onChunkLoadError(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;ZLjava/io/IOException;)Z
    .locals 4
    .param p1, "chunk"    # Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;
    .param p2, "cancelable"    # Z
    .param p3, "error"    # Ljava/io/IOException;

    .prologue
    .line 318
    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 319
    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->indexOf(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v2

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->indexOf(I)I

    move-result v1

    .line 318
    invoke-static {v0, v1, p3}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkedTrackBlacklistUtil;->maybeBlacklistTrack(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;ILjava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPlaylistLoadError(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Ljava/io/IOException;)V
    .locals 3
    .param p1, "url"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .param p2, "error"    # Ljava/io/IOException;

    .prologue
    .line 329
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->indexOf(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v0

    .line 330
    .local v0, "trackGroupIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    .line 335
    invoke-interface {v2, v0}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->indexOf(I)I

    move-result v2

    .line 334
    invoke-static {v1, v2, p2}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkedTrackBlacklistUtil;->maybeBlacklistTrack(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;ILjava/lang/Exception;)Z

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    .line 161
    return-void
.end method

.method public selectTracks(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;)V
    .locals 0
    .param p1, "trackSelection"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    .prologue
    .line 153
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    .line 154
    return-void
.end method

.method public setIsTimestampMaster(Z)V
    .locals 0
    .param p1, "isTimestampMaster"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->isTimestampMaster:Z

    .line 171
    return-void
.end method

.class public final Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
.super Ljava/lang/Object;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MappedTrackInfo"
.end annotation


# static fields
.field public static final RENDERER_SUPPORT_NO_TRACKS:I = 0x0

.field public static final RENDERER_SUPPORT_PLAYABLE_TRACKS:I = 0x2

.field public static final RENDERER_SUPPORT_UNPLAYABLE_TRACKS:I = 0x1


# instance fields
.field private final formatSupport:[[[I

.field public final length:I

.field private final mixedMimeTypeAdaptiveSupport:[I

.field private final rendererTrackTypes:[I

.field private final trackGroups:[Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

.field private final unassociatedTrackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;


# direct methods
.method constructor <init>([I[Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;[I[[[ILorg/telegram/messenger/exoplayer2/source/TrackGroupArray;)V
    .locals 1
    .param p1, "rendererTrackTypes"    # [I
    .param p2, "trackGroups"    # [Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .param p3, "mixedMimeTypeAdaptiveSupport"    # [I
    .param p4, "formatSupport"    # [[[I
    .param p5, "unassociatedTrackGroups"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .prologue
    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    .line 446
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->trackGroups:[Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .line 447
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->formatSupport:[[[I

    .line 448
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->mixedMimeTypeAdaptiveSupport:[I

    .line 449
    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->unassociatedTrackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .line 450
    array-length v0, p2

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->length:I

    .line 451
    return-void
.end method


# virtual methods
.method public getAdaptiveSupport(IIZ)I
    .locals 7
    .param p1, "rendererIndex"    # I
    .param p2, "groupIndex"    # I
    .param p3, "includeCapabilitiesExceededTracks"    # Z

    .prologue
    .line 524
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->trackGroups:[Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    aget-object v6, v6, p1

    invoke-virtual {v6, p2}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->get(I)Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-result-object v6

    iget v2, v6, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->length:I

    .line 526
    .local v2, "trackCount":I
    new-array v5, v2, [I

    .line 527
    .local v5, "trackIndices":[I
    const/4 v3, 0x0

    .line 528
    .local v3, "trackIndexCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v4, v3

    .end local v3    # "trackIndexCount":I
    .local v4, "trackIndexCount":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 529
    invoke-virtual {p0, p1, p2, v1}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackFormatSupport(III)I

    move-result v0

    .line 530
    .local v0, "fixedSupport":I
    const/4 v6, 0x3

    if-eq v0, v6, :cond_0

    if-eqz p3, :cond_2

    const/4 v6, 0x2

    if-ne v0, v6, :cond_2

    .line 533
    :cond_0
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "trackIndexCount":I
    .restart local v3    # "trackIndexCount":I
    aput v1, v5, v4

    .line 528
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    .end local v3    # "trackIndexCount":I
    .restart local v4    # "trackIndexCount":I
    goto :goto_0

    .line 536
    .end local v0    # "fixedSupport":I
    :cond_1
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    .line 537
    invoke-virtual {p0, p1, p2, v5}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getAdaptiveSupport(II[I)I

    move-result v6

    return v6

    .restart local v0    # "fixedSupport":I
    :cond_2
    move v3, v4

    .end local v4    # "trackIndexCount":I
    .restart local v3    # "trackIndexCount":I
    goto :goto_1
.end method

.method public getAdaptiveSupport(II[I)I
    .locals 9
    .param p1, "rendererIndex"    # I
    .param p2, "groupIndex"    # I
    .param p3, "trackIndices"    # [I

    .prologue
    .line 551
    const/4 v2, 0x0

    .line 552
    .local v2, "handledTrackCount":I
    const/16 v0, 0x8

    .line 553
    .local v0, "adaptiveSupport":I
    const/4 v5, 0x0

    .line 554
    .local v5, "multipleMimeTypes":Z
    const/4 v1, 0x0

    .line 555
    .local v1, "firstSampleMimeType":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, p3

    if-ge v4, v8, :cond_2

    .line 556
    aget v7, p3, v4

    .line 557
    .local v7, "trackIndex":I
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->trackGroups:[Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    aget-object v8, v8, p1

    invoke-virtual {v8, p2}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->get(I)Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->getFormat(I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v8

    iget-object v6, v8, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 559
    .local v6, "sampleMimeType":Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "handledTrackCount":I
    .local v3, "handledTrackCount":I
    if-nez v2, :cond_0

    .line 560
    move-object v1, v6

    .line 564
    :goto_1
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->formatSupport:[[[I

    aget-object v8, v8, p1

    aget-object v8, v8, p2

    aget v8, v8, v4

    and-int/lit8 v8, v8, 0xc

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 555
    add-int/lit8 v4, v4, 0x1

    move v2, v3

    .end local v3    # "handledTrackCount":I
    .restart local v2    # "handledTrackCount":I
    goto :goto_0

    .line 562
    .end local v2    # "handledTrackCount":I
    .restart local v3    # "handledTrackCount":I
    :cond_0
    invoke-static {v1, v6}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    :goto_2
    or-int/2addr v5, v8

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    .line 567
    .end local v3    # "handledTrackCount":I
    .end local v6    # "sampleMimeType":Ljava/lang/String;
    .end local v7    # "trackIndex":I
    .restart local v2    # "handledTrackCount":I
    :cond_2
    if-eqz v5, :cond_3

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->mixedMimeTypeAdaptiveSupport:[I

    aget v8, v8, p1

    .line 568
    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .end local v0    # "adaptiveSupport":I
    :cond_3
    return v0
.end method

.method public getRendererSupport(I)I
    .locals 6
    .param p1, "rendererIndex"    # I

    .prologue
    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, "hasTracks":Z
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->formatSupport:[[[I

    aget-object v3, v4, p1

    .line 473
    .local v3, "rendererFormatSupport":[[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 474
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    aget-object v4, v3, v1

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 475
    const/4 v0, 0x1

    .line 476
    aget-object v4, v3, v1

    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 478
    const/4 v4, 0x2

    .line 482
    .end local v2    # "j":I
    :goto_2
    return v4

    .line 474
    .restart local v2    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 473
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 482
    .end local v2    # "j":I
    :cond_2
    if-eqz v0, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public getTrackFormatSupport(III)I
    .locals 1
    .param p1, "rendererIndex"    # I
    .param p2, "groupIndex"    # I
    .param p3, "trackIndex"    # I

    .prologue
    .line 497
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->formatSupport:[[[I

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    aget v0, v0, p3

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getTrackGroups(I)Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .locals 1
    .param p1, "rendererIndex"    # I

    .prologue
    .line 460
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->trackGroups:[Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getUnassociatedTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->unassociatedTrackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public hasOnlyUnplayableTracks(I)Z
    .locals 4
    .param p1, "trackType"    # I

    .prologue
    const/4 v2, 0x1

    .line 589
    const/4 v1, 0x0

    .line 590
    .local v1, "rendererSupport":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->length:I

    if-ge v0, v3, :cond_1

    .line 591
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_0

    .line 592
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererSupport(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 590
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 595
    :cond_1
    if-ne v1, v2, :cond_2

    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

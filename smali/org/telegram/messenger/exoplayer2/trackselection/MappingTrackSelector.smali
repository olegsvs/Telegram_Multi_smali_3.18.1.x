.class public abstract Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;
.super Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;,
        Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;
    }
.end annotation


# instance fields
.field private currentMappedTrackInfo:Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

.field private final rendererDisabledFlags:Landroid/util/SparseBooleanArray;

.field private final selectionOverrides:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;",
            "Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;-><init>()V

    .line 88
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    .line 89
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    .line 90
    return-void
.end method

.method private static findRenderer([Lorg/telegram/messenger/exoplayer2/RendererCapabilities;Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)I
    .locals 8
    .param p0, "rendererCapabilities"    # [Lorg/telegram/messenger/exoplayer2/RendererCapabilities;
    .param p1, "group"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 348
    array-length v0, p0

    .line 349
    .local v0, "bestRendererIndex":I
    const/4 v2, 0x0

    .line 350
    .local v2, "bestSupportLevel":I
    const/4 v4, 0x0

    .local v4, "rendererIndex":I
    :goto_0
    array-length v7, p0

    if-ge v4, v7, :cond_2

    .line 351
    aget-object v3, p0, v4

    .line 352
    .local v3, "rendererCapability":Lorg/telegram/messenger/exoplayer2/RendererCapabilities;
    const/4 v5, 0x0

    .local v5, "trackIndex":I
    :goto_1
    iget v7, p1, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->length:I

    if-ge v5, v7, :cond_1

    .line 353
    invoke-virtual {p1, v5}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->getFormat(I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/telegram/messenger/exoplayer2/RendererCapabilities;->supportsFormat(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v6

    .line 354
    .local v6, "trackSupportLevel":I
    if-le v6, v2, :cond_0

    .line 355
    move v0, v4

    .line 356
    move v2, v6

    .line 357
    const/4 v7, 0x3

    if-ne v2, v7, :cond_0

    move v1, v0

    .line 364
    .end local v0    # "bestRendererIndex":I
    .end local v3    # "rendererCapability":Lorg/telegram/messenger/exoplayer2/RendererCapabilities;
    .end local v5    # "trackIndex":I
    .end local v6    # "trackSupportLevel":I
    .local v1, "bestRendererIndex":I
    :goto_2
    return v1

    .line 352
    .end local v1    # "bestRendererIndex":I
    .restart local v0    # "bestRendererIndex":I
    .restart local v3    # "rendererCapability":Lorg/telegram/messenger/exoplayer2/RendererCapabilities;
    .restart local v5    # "trackIndex":I
    .restart local v6    # "trackSupportLevel":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 350
    .end local v6    # "trackSupportLevel":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v3    # "rendererCapability":Lorg/telegram/messenger/exoplayer2/RendererCapabilities;
    .end local v5    # "trackIndex":I
    :cond_2
    move v1, v0

    .line 364
    .end local v0    # "bestRendererIndex":I
    .restart local v1    # "bestRendererIndex":I
    goto :goto_2
.end method

.method private static getFormatSupport(Lorg/telegram/messenger/exoplayer2/RendererCapabilities;Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)[I
    .locals 3
    .param p0, "rendererCapabilities"    # Lorg/telegram/messenger/exoplayer2/RendererCapabilities;
    .param p1, "group"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 379
    iget v2, p1, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->length:I

    new-array v0, v2, [I

    .line 380
    .local v0, "formatSupport":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p1, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->length:I

    if-ge v1, v2, :cond_0

    .line 381
    invoke-virtual {p1, v1}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->getFormat(I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v2

    invoke-interface {p0, v2}, Lorg/telegram/messenger/exoplayer2/RendererCapabilities;->supportsFormat(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v2

    aput v2, v0, v1

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    :cond_0
    return-object v0
.end method

.method private static getMixedMimeTypeAdaptationSupport([Lorg/telegram/messenger/exoplayer2/RendererCapabilities;)[I
    .locals 3
    .param p0, "rendererCapabilities"    # [Lorg/telegram/messenger/exoplayer2/RendererCapabilities;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 397
    array-length v2, p0

    new-array v1, v2, [I

    .line 398
    .local v1, "mixedMimeTypeAdaptationSupport":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 399
    aget-object v2, p0, v0

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/RendererCapabilities;->supportsMixedMimeTypeAdaptation()I

    move-result v2

    aput v2, v1, v0

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final clearSelectionOverride(ILorg/telegram/messenger/exoplayer2/source/TrackGroupArray;)V
    .locals 2
    .param p1, "rendererIndex"    # I
    .param p2, "groups"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .prologue
    .line 189
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 190
    .local v0, "overrides":Ljava/util/Map;, "Ljava/util/Map<Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 196
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 198
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    goto :goto_0
.end method

.method public final clearSelectionOverrides()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 225
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    goto :goto_0
.end method

.method public final clearSelectionOverrides(I)V
    .locals 2
    .param p1, "rendererIndex"    # I

    .prologue
    .line 207
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 208
    .local v0, "overrides":Ljava/util/Map;, "Ljava/util/Map<Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;*>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 213
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    goto :goto_0
.end method

.method public final getCurrentMappedTrackInfo()Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->currentMappedTrackInfo:Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    return-object v0
.end method

.method public final getRendererDisabled(I)Z
    .locals 1
    .param p1, "rendererIndex"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public final getSelectionOverride(ILorg/telegram/messenger/exoplayer2/source/TrackGroupArray;)Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;
    .locals 2
    .param p1, "rendererIndex"    # I
    .param p2, "groups"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .prologue
    .line 178
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 179
    .local v0, "overrides":Ljava/util/Map;, "Ljava/util/Map<Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final hasSelectionOverride(ILorg/telegram/messenger/exoplayer2/source/TrackGroupArray;)Z
    .locals 2
    .param p1, "rendererIndex"    # I
    .param p2, "groups"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .prologue
    .line 166
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 167
    .local v0, "overrides":Ljava/util/Map;, "Ljava/util/Map<Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final onSelectionActivated(Ljava/lang/Object;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 307
    check-cast p1, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    .end local p1    # "info":Ljava/lang/Object;
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->currentMappedTrackInfo:Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    .line 308
    return-void
.end method

.method public final selectTracks([Lorg/telegram/messenger/exoplayer2/RendererCapabilities;Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;)Landroid/util/Pair;
    .locals 23
    .param p1, "rendererCapabilities"    # [Lorg/telegram/messenger/exoplayer2/RendererCapabilities;
    .param p2, "trackGroups"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
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

    .prologue
    .line 237
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 238
    .local v17, "rendererTrackGroupCounts":[I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [[Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-object/from16 v18, v0

    .line 239
    .local v18, "rendererTrackGroups":[[Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    new-array v6, v0, [[[I

    .line 240
    .local v6, "rendererFormatSupports":[[[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_0

    .line 241
    move-object/from16 v0, p2

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->length:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-object/from16 v21, v0

    aput-object v21, v18, v10

    .line 242
    move-object/from16 v0, p2

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->length:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [[I

    move-object/from16 v21, v0

    aput-object v21, v6, v10

    .line 240
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 246
    :cond_0
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->getMixedMimeTypeAdaptationSupport([Lorg/telegram/messenger/exoplayer2/RendererCapabilities;)[I

    move-result-object v5

    .line 250
    .local v5, "mixedMimeTypeAdaptationSupport":[I
    const/4 v9, 0x0

    .local v9, "groupIndex":I
    :goto_1
    move-object/from16 v0, p2

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->length:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_2

    .line 251
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->get(I)Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-result-object v8

    .line 253
    .local v8, "group":Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->findRenderer([Lorg/telegram/messenger/exoplayer2/RendererCapabilities;Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)I

    move-result v14

    .line 255
    .local v14, "rendererIndex":I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v14, v0, :cond_1

    iget v0, v8, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->length:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v13, v0, [I

    .line 258
    .local v13, "rendererFormatSupport":[I
    :goto_2
    aget v16, v17, v14

    .line 259
    .local v16, "rendererTrackGroupCount":I
    aget-object v21, v18, v14

    aput-object v8, v21, v16

    .line 260
    aget-object v21, v6, v14

    aput-object v13, v21, v16

    .line 261
    aget v21, v17, v14

    add-int/lit8 v21, v21, 0x1

    aput v21, v17, v14

    .line 250
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 255
    .end local v13    # "rendererFormatSupport":[I
    .end local v16    # "rendererTrackGroupCount":I
    :cond_1
    aget-object v21, p1, v14

    .line 256
    move-object/from16 v0, v21

    invoke-static {v0, v8}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->getFormatSupport(Lorg/telegram/messenger/exoplayer2/RendererCapabilities;Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)[I

    move-result-object v13

    goto :goto_2

    .line 265
    .end local v8    # "group":Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    .end local v14    # "rendererIndex":I
    :cond_2
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v4, v0, [Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .line 266
    .local v4, "rendererTrackGroupArrays":[Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v3, v0, [I

    .line 267
    .local v3, "rendererTrackTypes":[I
    const/4 v10, 0x0

    :goto_3
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_3

    .line 268
    aget v16, v17, v10

    .line 269
    .restart local v16    # "rendererTrackGroupCount":I
    new-instance v22, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    aget-object v21, v18, v10

    .line 270
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;-><init>([Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)V

    aput-object v22, v4, v10

    .line 271
    aget-object v21, v6, v10

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [[I

    aput-object v21, v6, v10

    .line 272
    aget-object v21, p1, v10

    invoke-interface/range {v21 .. v21}, Lorg/telegram/messenger/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v21

    aput v21, v3, v10

    .line 267
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 276
    .end local v16    # "rendererTrackGroupCount":I
    :cond_3
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    aget v20, v17, v21

    .line 277
    .local v20, "unassociatedTrackGroupCount":I
    new-instance v7, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    aget-object v21, v18, v21

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;-><init>([Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)V

    .line 280
    .local v7, "unassociatedTrackGroupArray":Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v6}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectTracks([Lorg/telegram/messenger/exoplayer2/RendererCapabilities;[Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;[[[I)[Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-result-object v19

    .line 284
    .local v19, "trackSelections":[Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    const/4 v10, 0x0

    :goto_4
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_7

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 286
    const/16 v21, 0x0

    aput-object v21, v19, v10

    .line 284
    :cond_4
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 288
    :cond_5
    aget-object v15, v4, v10

    .line 289
    .local v15, "rendererTrackGroup":Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    .line 290
    .local v12, "overrides":Ljava/util/Map;, "Ljava/util/Map<Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;>;"
    if-nez v12, :cond_6

    const/4 v11, 0x0

    .line 291
    .local v11, "override":Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;
    :goto_6
    if-eqz v11, :cond_4

    .line 292
    invoke-virtual {v11, v15}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->createTrackSelection(Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-result-object v21

    aput-object v21, v19, v10

    goto :goto_5

    .line 290
    .end local v11    # "override":Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;
    :cond_6
    invoke-interface {v12, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;

    move-object/from16 v11, v21

    goto :goto_6

    .line 298
    .end local v12    # "overrides":Ljava/util/Map;, "Ljava/util/Map<Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;>;"
    .end local v15    # "rendererTrackGroup":Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    :cond_7
    new-instance v2, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;-><init>([I[Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;[I[[[ILorg/telegram/messenger/exoplayer2/source/TrackGroupArray;)V

    .line 301
    .local v2, "mappedTrackInfo":Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    new-instance v21, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;-><init>([Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;)V

    move-object/from16 v0, v21

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v21

    return-object v21
.end method

.method protected abstract selectTracks([Lorg/telegram/messenger/exoplayer2/RendererCapabilities;[Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;[[[I)[Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public final setRendererDisabled(IZ)V
    .locals 1
    .param p1, "rendererIndex"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_0

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 112
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    goto :goto_0
.end method

.method public final setSelectionOverride(ILorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;)V
    .locals 2
    .param p1, "rendererIndex"    # I
    .param p2, "groups"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .param p3, "override"    # Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;

    .prologue
    .line 145
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 146
    .local v0, "overrides":Ljava/util/Map;, "Ljava/util/Map<Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;>;"
    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "overrides":Ljava/util/Map;, "Ljava/util/Map<Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 148
    .restart local v0    # "overrides":Ljava/util/Map;, "Ljava/util/Map<Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;>;"
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p3}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    goto :goto_0
.end method

.class public final Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Parameters"
.end annotation


# instance fields
.field public final allowMixedMimeAdaptiveness:Z

.field public final allowNonSeamlessAdaptiveness:Z

.field public final exceedVideoConstraintsIfNecessary:Z

.field public final maxVideoHeight:I

.field public final maxVideoWidth:I

.field public final orientationMayChange:Z

.field public final preferredAudioLanguage:Ljava/lang/String;

.field public final preferredTextLanguage:Ljava/lang/String;

.field public final viewportHeight:I

.field public final viewportWidth:I


# direct methods
.method public constructor <init>()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const v5, 0x7fffffff

    .line 75
    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, v1

    move v6, v5

    move v7, v4

    move v8, v5

    move v9, v5

    move v10, v4

    invoke-direct/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIZIIZ)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZIIZIIZ)V
    .locals 0
    .param p1, "preferredAudioLanguage"    # Ljava/lang/String;
    .param p2, "preferredTextLanguage"    # Ljava/lang/String;
    .param p3, "allowMixedMimeAdaptiveness"    # Z
    .param p4, "allowNonSeamlessAdaptiveness"    # Z
    .param p5, "maxVideoWidth"    # I
    .param p6, "maxVideoHeight"    # I
    .param p7, "exceedVideoConstraintsIfNecessary"    # Z
    .param p8, "viewportWidth"    # I
    .param p9, "viewportHeight"    # I
    .param p10, "orientationMayChange"    # Z

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    .line 101
    iput-boolean p3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    .line 102
    iput-boolean p4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    .line 103
    iput p5, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    .line 104
    iput p6, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    .line 105
    iput-boolean p7, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    .line 106
    iput p8, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    .line 107
    iput p9, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    .line 108
    iput-boolean p10, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    .line 109
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 281
    if-ne p0, p1, :cond_1

    .line 295
    :cond_0
    :goto_0
    return v1

    .line 284
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 285
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 287
    check-cast v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 288
    .local v0, "other":Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    if-ne v3, v4, :cond_4

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    if-ne v3, v4, :cond_4

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    .line 294
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    .line 295
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 300
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 301
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v1, v4

    .line 302
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v4, v1

    .line 303
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v4, v1

    .line 304
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    add-int v0, v1, v4

    .line 305
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    add-int v0, v1, v4

    .line 306
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v4, v1

    .line 307
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    if-eqz v4, :cond_3

    :goto_3
    add-int v0, v1, v2

    .line 308
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    add-int v0, v1, v2

    .line 309
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    add-int v0, v1, v2

    .line 310
    return v0

    :cond_0
    move v1, v3

    .line 302
    goto :goto_0

    :cond_1
    move v1, v3

    .line 303
    goto :goto_1

    :cond_2
    move v1, v3

    .line 306
    goto :goto_2

    :cond_3
    move v2, v3

    .line 307
    goto :goto_3
.end method

.method public withAllowMixedMimeAdaptiveness(Z)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 11
    .param p1, "allowMixedMimeAdaptiveness"    # Z

    .prologue
    .line 155
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    if-ne p1, v0, :cond_0

    .line 158
    .end local p0    # "this":Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iget-boolean v7, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v10, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    move v3, p1

    invoke-direct/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIZIIZ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withAllowNonSeamlessAdaptiveness(Z)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 11
    .param p1, "allowNonSeamlessAdaptiveness"    # Z

    .prologue
    .line 171
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    if-ne p1, v0, :cond_0

    .line 174
    .end local p0    # "this":Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iget-boolean v7, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v10, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    move v4, p1

    invoke-direct/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIZIIZ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withExceedVideoConstraintsIfNecessary(Z)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 11
    .param p1, "exceedVideoConstraintsIfNecessary"    # Z

    .prologue
    .line 226
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    if-ne p1, v0, :cond_0

    .line 229
    .end local p0    # "this":Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v10, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    move v7, p1

    invoke-direct/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIZIIZ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withMaxVideoSize(II)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 11
    .param p1, "maxVideoWidth"    # I
    .param p2, "maxVideoHeight"    # I

    .prologue
    .line 188
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    if-ne p2, v0, :cond_0

    .line 191
    .end local p0    # "this":Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    iget-boolean v7, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v10, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIZIIZ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withMaxVideoSizeSd()Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 2

    .prologue
    .line 203
    const/16 v0, 0x4ff

    const/16 v1, 0x2cf

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->withMaxVideoSize(II)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public withPreferredAudioLanguage(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 11
    .param p1, "preferredAudioLanguage"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 122
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    .end local p0    # "this":Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iget-boolean v7, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v10, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIZIIZ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withPreferredTextLanguage(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 11
    .param p1, "preferredTextLanguage"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 139
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    .end local p0    # "this":Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iget-boolean v7, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v10, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    move-object v2, p1

    invoke-direct/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIZIIZ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withViewportSize(IIZ)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 11
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "orientationMayChange"    # Z

    .prologue
    .line 245
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    if-ne p3, v0, :cond_0

    .line 249
    .end local p0    # "this":Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iget-boolean v7, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    move v8, p1

    move v9, p2

    move v10, p3

    invoke-direct/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIZIIZ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withViewportSizeFromContext(Landroid/content/Context;Z)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientationMayChange"    # Z

    .prologue
    .line 266
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Util;->getPhysicalDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 267
    .local v0, "viewportSize":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2, p2}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->withViewportSize(IIZ)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v1

    return-object v1
.end method

.method public withoutVideoSizeConstraints()Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 1

    .prologue
    const v0, 0x7fffffff

    .line 212
    invoke-virtual {p0, v0, v0}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->withMaxVideoSize(II)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public withoutViewportSizeConstraints()Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 2

    .prologue
    const v1, 0x7fffffff

    .line 276
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v1, v0}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->withViewportSize(IIZ)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    return-object v0
.end method

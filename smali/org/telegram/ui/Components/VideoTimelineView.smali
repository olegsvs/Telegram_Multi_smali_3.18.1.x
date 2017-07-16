.class public Lorg/telegram/ui/Components/VideoTimelineView;
.super Landroid/view/View;
.source "VideoTimelineView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xa
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;
    }
.end annotation


# static fields
.field private static final sync:Ljava/lang/Object;


# instance fields
.field private currentTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

.field private frameHeight:I

.field private frameTimeOffset:J

.field private frameWidth:I

.field private frames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private framesToLoad:I

.field private maxProgressDiff:F

.field private mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

.field private paint:Landroid/graphics/Paint;

.field private paint2:Landroid/graphics/Paint;

.field private pressDx:F

.field private pressedLeft:Z

.field private pressedRight:Z

.field private progressLeft:F

.field private progressRight:F

.field private videoLength:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/VideoTimelineView;->sync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint:Landroid/graphics/Paint;

    .line 58
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint2:Landroid/graphics/Paint;

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint2:Landroid/graphics/Paint;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/VideoTimelineView;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/VideoTimelineView;

    .prologue
    .line 28
    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameTimeOffset:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/VideoTimelineView;)Landroid/media/MediaMetadataRetriever;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/VideoTimelineView;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/VideoTimelineView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/VideoTimelineView;

    .prologue
    .line 28
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameWidth:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/VideoTimelineView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/VideoTimelineView;

    .prologue
    .line 28
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameHeight:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/VideoTimelineView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/VideoTimelineView;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/VideoTimelineView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/VideoTimelineView;

    .prologue
    .line 28
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/VideoTimelineView;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/VideoTimelineView;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/VideoTimelineView;->reloadFrames(I)V

    return-void
.end method

.method private reloadFrames(I)V
    .locals 6
    .param p1, "frameNum"    # I

    .prologue
    const/4 v5, 0x0

    const/high16 v2, 0x41800000    # 16.0f

    .line 170
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-nez v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 173
    :cond_0
    if-nez p1, :cond_1

    .line 174
    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameHeight:I

    .line 175
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameHeight:I

    div-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I

    .line 176
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameWidth:I

    .line 177
    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->videoLength:J

    iget v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameTimeOffset:J

    .line 179
    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/VideoTimelineView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/VideoTimelineView$1;-><init>(Lorg/telegram/ui/Components/VideoTimelineView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v5, v2, v3

    const/4 v3, 0x2

    aput-object v5, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public clearFrames()V
    .locals 3

    .prologue
    .line 252
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 253
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 257
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 258
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_2

    .line 259
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 260
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    .line 262
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->invalidate()V

    .line 263
    return-void
.end method

.method public destroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 229
    sget-object v3, Lorg/telegram/ui/Components/VideoTimelineView;->sync:Ljava/lang/Object;

    monitor-enter v3

    .line 231
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v2, :cond_0

    .line 232
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 233
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 240
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 235
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 236
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 238
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 244
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 245
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    if-eqz v2, :cond_3

    .line 246
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 247
    iput-object v4, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    .line 249
    :cond_3
    return-void
.end method

.method public getLeftProgress()F
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    return v0
.end method

.method public getRightProgress()F
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 267
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x42100000    # 36.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v11, v0, v1

    .line 268
    .local v11, "width":I
    int-to-float v0, v11

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v10, v0, v1

    .line 269
    .local v10, "startX":I
    int-to-float v0, v11

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v8, v0, v1

    .line 271
    .local v8, "endX":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 272
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v11

    const/high16 v3, 0x42300000    # 44.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 273
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    if-nez v0, :cond_1

    .line 274
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/VideoTimelineView;->reloadFrames(I)V

    .line 286
    :cond_0
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    int-to-float v3, v10

    const/high16 v0, 0x42280000    # 42.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint2:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 287
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v11

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    const/high16 v0, 0x42280000    # 42.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint2:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 289
    int-to-float v1, v10

    const/4 v2, 0x0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v10

    int-to-float v3, v0

    const/high16 v0, 0x42300000    # 44.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 290
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v1, v0

    const/4 v2, 0x0

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v3, v0

    const/high16 v0, 0x42300000    # 44.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 291
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v10

    int-to-float v1, v0

    const/4 v2, 0x0

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v3, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 292
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v10

    int-to-float v1, v0

    const/high16 v0, 0x42280000    # 42.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v3, v0

    const/high16 v0, 0x42300000    # 44.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 293
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 295
    int-to-float v0, v10

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 296
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 297
    return-void

    .line 276
    :cond_1
    const/4 v9, 0x0

    .line 277
    .local v9, "offset":I
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 278
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 279
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_2

    .line 280
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameWidth:I

    mul-int/2addr v1, v9

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v7, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 282
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 277
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x0

    const/4 v6, 0x0

    const/high16 v10, 0x41800000    # 16.0f

    const/4 v7, 0x1

    .line 81
    if-nez p1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v6

    .line 84
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 85
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 87
    .local v5, "y":F
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredWidth()I

    move-result v8

    const/high16 v9, 0x42000000    # 32.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int v3, v8, v9

    .line 88
    .local v3, "width":I
    int-to-float v8, v3

    iget v9, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int v2, v8, v9

    .line 89
    .local v2, "startX":I
    int-to-float v8, v3

    iget v9, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int v1, v8, v9

    .line 91
    .local v1, "endX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_3

    .line 92
    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 93
    .local v0, "additionWidth":I
    sub-int v8, v2, v0

    int-to-float v8, v8

    cmpg-float v8, v8, v4

    if-gtz v8, :cond_2

    add-int v8, v2, v0

    int-to-float v8, v8

    cmpg-float v8, v4, v8

    if-gtz v8, :cond_2

    cmpl-float v8, v5, v11

    if-ltz v8, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v5, v8

    if-gtz v8, :cond_2

    .line 94
    iput-boolean v7, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedLeft:Z

    .line 95
    int-to-float v6, v2

    sub-float v6, v4, v6

    float-to-int v6, v6

    int-to-float v6, v6

    iput v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressDx:F

    .line 96
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 97
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->invalidate()V

    move v6, v7

    .line 98
    goto :goto_0

    .line 99
    :cond_2
    sub-int v8, v1, v0

    int-to-float v8, v8

    cmpg-float v8, v8, v4

    if-gtz v8, :cond_0

    add-int v8, v1, v0

    int-to-float v8, v8

    cmpg-float v8, v4, v8

    if-gtz v8, :cond_0

    cmpl-float v8, v5, v11

    if-ltz v8, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v5, v8

    if-gtz v8, :cond_0

    .line 100
    iput-boolean v7, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedRight:Z

    .line 101
    int-to-float v6, v1

    sub-float v6, v4, v6

    float-to-int v6, v6

    int-to-float v6, v6

    iput v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressDx:F

    .line 102
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 103
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->invalidate()V

    move v6, v7

    .line 104
    goto/16 :goto_0

    .line 106
    .end local v0    # "additionWidth":I
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-eq v8, v7, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_6

    .line 107
    :cond_4
    iget-boolean v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedLeft:Z

    if-eqz v8, :cond_5

    .line 108
    iput-boolean v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedLeft:Z

    move v6, v7

    .line 109
    goto/16 :goto_0

    .line 110
    :cond_5
    iget-boolean v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedRight:Z

    if-eqz v8, :cond_0

    .line 111
    iput-boolean v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedRight:Z

    move v6, v7

    .line 112
    goto/16 :goto_0

    .line 114
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 115
    iget-boolean v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedLeft:Z

    if-eqz v8, :cond_b

    .line 116
    iget v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressDx:F

    sub-float v6, v4, v6

    float-to-int v2, v6

    .line 117
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    if-ge v2, v6, :cond_a

    .line 118
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 122
    :cond_7
    :goto_1
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, v2, v6

    int-to-float v6, v6

    int-to-float v8, v3

    div-float/2addr v6, v8

    iput v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    .line 123
    iget v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    sub-float/2addr v6, v8

    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->maxProgressDiff:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_8

    .line 124
    iget v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->maxProgressDiff:F

    add-float/2addr v6, v8

    iput v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    .line 126
    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    if-eqz v6, :cond_9

    .line 127
    iget-object v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    invoke-interface {v6, v8}, Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;->onLeftProgressChanged(F)V

    .line 129
    :cond_9
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->invalidate()V

    move v6, v7

    .line 130
    goto/16 :goto_0

    .line 119
    :cond_a
    if-le v2, v1, :cond_7

    .line 120
    move v2, v1

    goto :goto_1

    .line 131
    :cond_b
    iget-boolean v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedRight:Z

    if-eqz v8, :cond_0

    .line 132
    iget v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressDx:F

    sub-float v6, v4, v6

    float-to-int v1, v6

    .line 133
    if-ge v1, v2, :cond_f

    .line 134
    move v1, v2

    .line 138
    :cond_c
    :goto_2
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, v1, v6

    int-to-float v6, v6

    int-to-float v8, v3

    div-float/2addr v6, v8

    iput v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    .line 139
    iget v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    sub-float/2addr v6, v8

    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->maxProgressDiff:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_d

    .line 140
    iget v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->maxProgressDiff:F

    sub-float/2addr v6, v8

    iput v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    .line 142
    :cond_d
    iget-object v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    if-eqz v6, :cond_e

    .line 143
    iget-object v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    invoke-interface {v6, v8}, Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;->onRifhtProgressChanged(F)V

    .line 145
    :cond_e
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->invalidate()V

    move v6, v7

    .line 146
    goto/16 :goto_0

    .line 135
    :cond_f
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v3

    if-le v1, v6, :cond_c

    .line 136
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int v1, v3, v6

    goto :goto_2
.end method

.method public setDelegate(Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    .prologue
    .line 166
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    .line 167
    return-void
.end method

.method public setMaxProgressDiff(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 72
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->maxProgressDiff:F

    .line 73
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->maxProgressDiff:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 74
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->maxProgressDiff:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    .line 75
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->invalidate()V

    .line 77
    :cond_0
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 153
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 154
    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    .line 155
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    .line 157
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v2, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 158
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "duration":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->videoLength:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v0    # "duration":Ljava/lang/String;
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

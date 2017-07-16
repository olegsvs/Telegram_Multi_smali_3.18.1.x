.class public Lorg/telegram/ui/Components/AnimatedFileDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "AnimatedFileDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static final uiHandler:Landroid/os/Handler;


# instance fields
.field private actualDrawRect:Landroid/graphics/RectF;

.field private applyTransformation:Z

.field private backgroundBitmap:Landroid/graphics/Bitmap;

.field private backgroundShader:Landroid/graphics/BitmapShader;

.field private bitmapRect:Landroid/graphics/RectF;

.field private decoderCreated:Z

.field private destroyWhenDone:Z

.field private final dstRect:Landroid/graphics/Rect;

.field private invalidateAfter:I

.field private volatile isRecycled:Z

.field private volatile isRunning:Z

.field private lastFrameDecodeTime:J

.field private lastFrameTime:J

.field private lastTimeStamp:I

.field private loadFrameRunnable:Ljava/lang/Runnable;

.field private loadFrameTask:Ljava/lang/Runnable;

.field protected final mInvalidateTask:Ljava/lang/Runnable;

.field private final mStartTask:Ljava/lang/Runnable;

.field private final metaData:[I

.field private volatile nativePtr:I

.field private nextRenderingBitmap:Landroid/graphics/Bitmap;

.field private nextRenderingShader:Landroid/graphics/BitmapShader;

.field private parentView:Landroid/view/View;

.field private path:Ljava/io/File;

.field private recycleWithSecond:Z

.field private renderingBitmap:Landroid/graphics/Bitmap;

.field private renderingShader:Landroid/graphics/BitmapShader;

.field private roundRadius:I

.field private roundRect:Landroid/graphics/RectF;

.field private scaleX:F

.field private scaleY:F

.field private secondParentView:Landroid/view/View;

.field private shaderMatrix:Landroid/graphics/Matrix;

.field private uiRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->uiHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x2

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v2}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "createDecoder"    # Z

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 170
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 42
    const/16 v0, 0x32

    iput v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateAfter:I

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->actualDrawRect:Landroid/graphics/RectF;

    .line 62
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRect:Landroid/graphics/RectF;

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->bitmapRect:Landroid/graphics/RectF;

    .line 64
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->shaderMatrix:Landroid/graphics/Matrix;

    .line 66
    iput v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleX:F

    .line 67
    iput v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleY:F

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRect:Landroid/graphics/Rect;

    .line 76
    iput-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parentView:Landroid/view/View;

    .line 77
    iput-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentView:Landroid/view/View;

    .line 79
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFileDrawable$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable$1;-><init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->mInvalidateTask:Ljava/lang/Runnable;

    .line 90
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;-><init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->uiRunnable:Ljava/lang/Runnable;

    .line 127
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;-><init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameRunnable:Ljava/lang/Runnable;

    .line 159
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;-><init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->mStartTask:Ljava/lang/Runnable;

    .line 171
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->path:Ljava/io/File;

    .line 172
    if-eqz p2, :cond_0

    .line 173
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->createDecoder(Ljava/lang/String;[I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:I

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    .line 176
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/BitmapShader;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundShader:Landroid/graphics/BitmapShader;

    return-object v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;
    .param p1, "x1"    # Landroid/graphics/BitmapShader;

    .prologue
    .line 34
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundShader:Landroid/graphics/BitmapShader;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .prologue
    .line 34
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastTimeStamp:I

    return v0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastTimeStamp:I

    return p1
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateAfter:I

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduleNextGetFrame()V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .prologue
    .line 34
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRecycled:Z

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .prologue
    .line 34
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    return v0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/Components/AnimatedFileDrawable;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    return p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->path:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1800(Ljava/lang/String;[I)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [I

    .prologue
    .line 34
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->createDecoder(Ljava/lang/String;[I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .prologue
    .line 34
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadius:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .prologue
    .line 34
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyWhenDone:Z

    return v0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/Components/AnimatedFileDrawable;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;
    .param p1, "x1"    # J

    .prologue
    .line 34
    iput-wide p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastFrameDecodeTime:J

    return-wide p1
.end method

.method static synthetic access$2100(ILandroid/graphics/Bitmap;[I)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # [I

    .prologue
    .line 34
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoFrame(ILandroid/graphics/Bitmap;[I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->uiRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .prologue
    .line 34
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:I

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:I

    return p1
.end method

.method static synthetic access$400(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 34
    invoke-static {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyDecoder(I)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 34
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 34
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/AnimatedFileDrawable;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 34
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameTask:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 34
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;
    .param p1, "x1"    # Landroid/graphics/BitmapShader;

    .prologue
    .line 34
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingShader:Landroid/graphics/BitmapShader;

    return-object p1
.end method

.method private static native createDecoder(Ljava/lang/String;[I)I
.end method

.method private static native destroyDecoder(I)V
.end method

.method private static native getVideoFrame(ILandroid/graphics/Bitmap;[I)I
.end method

.method protected static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 215
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 216
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private scheduleNextGetFrame()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 247
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-nez v2, :cond_1

    iget v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:I

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    if-nez v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyWhenDone:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    if-nez v2, :cond_2

    .line 255
    :cond_1
    :goto_0
    return-void

    .line 250
    :cond_2
    const-wide/16 v0, 0x0

    .line 251
    .local v0, "ms":J
    iget-wide v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastFrameDecodeTime:J

    cmp-long v2, v2, v10

    if-eqz v2, :cond_3

    .line 252
    iget v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateAfter:I

    int-to-long v2, v2

    iget v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateAfter:I

    int-to-long v4, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastFrameDecodeTime:J

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 254
    :cond_3
    sget-object v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameRunnable:Ljava/lang/Runnable;

    iput-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameTask:Ljava/lang/Runnable;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 285
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:I

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    if-nez v12, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyWhenDone:Z

    if-eqz v12, :cond_2

    .line 366
    :cond_1
    :goto_0
    return-void

    .line 288
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 289
    .local v6, "now":J
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    if-eqz v12, :cond_3

    .line 290
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-nez v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-nez v12, :cond_9

    .line 291
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduleNextGetFrame()V

    .line 303
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v12, :cond_1

    .line 304
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->applyTransformation:Z

    if-eqz v12, :cond_6

    .line 305
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 306
    .local v3, "bitmapW":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 307
    .local v2, "bitmapH":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    const/16 v13, 0x5a

    if-eq v12, v13, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    const/16 v13, 0x10e

    if-ne v12, v13, :cond_5

    .line 308
    :cond_4
    move v8, v3

    .line 309
    .local v8, "temp":I
    move v3, v2

    .line 310
    move v2, v8

    .line 312
    .end local v8    # "temp":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v3

    div-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleX:F

    .line 314
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v2

    div-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleY:F

    .line 315
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->applyTransformation:Z

    .line 317
    .end local v2    # "bitmapH":I
    .end local v3    # "bitmapW":I
    :cond_6
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadius:I

    if-eqz v12, :cond_c

    .line 318
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleX:F

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleY:F

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 320
    .local v5, "scale":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingShader:Landroid/graphics/BitmapShader;

    if-nez v12, :cond_7

    .line 321
    new-instance v12, Landroid/graphics/BitmapShader;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v12, v13, v14, v15}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingShader:Landroid/graphics/BitmapShader;

    .line 323
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 324
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v12}, Landroid/graphics/Matrix;->reset()V

    .line 326
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleX:F

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleY:F

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const v13, 0x3727c5ac    # 1.0E-5f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_b

    .line 329
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    const/16 v13, 0x5a

    if-eq v12, v13, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    const/16 v13, 0x10e

    if-ne v12, v13, :cond_a

    .line 330
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v5

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v9, v12

    .line 331
    .local v9, "w":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v5

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v4, v12

    .line 336
    .local v4, "h":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->bitmapRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    sub-int/2addr v13, v9

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    sub-int/2addr v14, v4

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    int-to-float v15, v9

    int-to-float v0, v4

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 337
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->shaderMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->bitmapRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/16 v16, 0x2

    aget v15, v15, v16

    sget-object v16, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-static/range {v12 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->setRectToRect(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;ILandroid/graphics/Matrix$ScaleToFit;)V

    .line 342
    .end local v4    # "h":I
    .end local v9    # "w":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingShader:Landroid/graphics/BitmapShader;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v12, v13}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->actualDrawRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadius:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadius:I

    int-to-float v14, v14

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 360
    .end local v5    # "scale":F
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    if-eqz v12, :cond_1

    .line 361
    const-wide/16 v12, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateAfter:I

    int-to-long v14, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastFrameTime:J

    move-wide/from16 v16, v0

    sub-long v16, v6, v16

    sub-long v14, v14, v16

    const-wide/16 v16, 0x11

    sub-long v14, v14, v16

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 362
    .local v10, "timeToNextFrame":J
    sget-object v12, Lorg/telegram/ui/Components/AnimatedFileDrawable;->uiHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->mInvalidateTask:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 363
    sget-object v12, Lorg/telegram/ui/Components/AnimatedFileDrawable;->uiHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->mInvalidateTask:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateAfter:I

    int-to-long v14, v14

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 292
    .end local v10    # "timeToNextFrame":J
    :cond_9
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastFrameTime:J

    sub-long v12, v6, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateAfter:I

    int-to-long v14, v14

    cmp-long v12, v12, v14

    if-ltz v12, :cond_3

    .line 293
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v12, :cond_3

    .line 294
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    .line 295
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingShader:Landroid/graphics/BitmapShader;

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingShader:Landroid/graphics/BitmapShader;

    .line 296
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    .line 297
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingShader:Landroid/graphics/BitmapShader;

    .line 298
    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastFrameTime:J

    goto/16 :goto_1

    .line 333
    .restart local v5    # "scale":F
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v5

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v9, v12

    .line 334
    .restart local v9    # "w":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v5

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v4, v12

    .restart local v4    # "h":I
    goto/16 :goto_2

    .line 339
    .end local v4    # "h":I
    .end local v9    # "w":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->bitmapRect:Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 340
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->shaderMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->bitmapRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/16 v16, 0x2

    aget v15, v15, v16

    sget-object v16, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-static/range {v12 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->setRectToRect(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;ILandroid/graphics/Matrix$ScaleToFit;)V

    goto/16 :goto_3

    .line 346
    .end local v5    # "scale":F
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 347
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    const/16 v13, 0x5a

    if-ne v12, v13, :cond_e

    .line 348
    const/high16 v12, 0x42b40000    # 90.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->rotate(F)V

    .line 349
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    neg-int v13, v13

    int-to-float v13, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 357
    :cond_d
    :goto_5
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleX:F

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleY:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->scale(FF)V

    .line 358
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 350
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    const/16 v13, 0xb4

    if-ne v12, v13, :cond_f

    .line 351
    const/high16 v12, 0x43340000    # 180.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->rotate(F)V

    .line 352
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    neg-int v12, v12

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    neg-int v13, v13

    int-to-float v13, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_5

    .line 353
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    const/16 v13, 0x10e

    if-ne v12, v13, :cond_d

    .line 354
    const/high16 v12, 0x43870000    # 270.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->rotate(F)V

    .line 355
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    neg-int v12, v12

    int-to-float v12, v12

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_5
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 225
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 229
    return-void

    .line 227
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAnimatedBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    .line 384
    :goto_0
    return-object v0

    .line 381
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 384
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 269
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v0, v0, v2

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v0, v0, v2

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0

    :cond_2
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 274
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v0, v0, v2

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v0, v0, v2

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_0

    :cond_2
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0
.end method

.method public getMinimumHeight()I
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 370
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v0, v0, v2

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v0, v0, v2

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0

    :cond_2
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0
.end method

.method public getMinimumWidth()I
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 375
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v0, v0, v2

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v0, v0, v2

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_0

    :cond_2
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 233
    const/4 v0, -0x2

    return v0
.end method

.method public getOrientation()I
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public hasBitmap()Z
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    return v0
.end method

.method public makeCopy()Lorg/telegram/ui/Components/AnimatedFileDrawable;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 405
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->path:Ljava/io/File;

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;Z)V

    .line 406
    .local v0, "drawable":Lorg/telegram/ui/Components/AnimatedFileDrawable;
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v2, v2, v3

    aput v2, v1, v3

    .line 407
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v2, v2, v4

    aput v2, v1, v4

    .line 408
    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->applyTransformation:Z

    .line 281
    return-void
.end method

.method public recycle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 190
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 191
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycleWithSecond:Z

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    .line 195
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRecycled:Z

    .line 196
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-nez v0, :cond_4

    .line 197
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:I

    if-eqz v0, :cond_2

    .line 198
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:I

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyDecoder(I)V

    .line 199
    iput v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:I

    .line 201
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 202
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 203
    iput-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    .line 205
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 207
    iput-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 210
    :cond_4
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyWhenDone:Z

    goto :goto_0
.end method

.method public setActualDrawRect(IIII)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 388
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->actualDrawRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    add-int v4, p2, p4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 389
    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 179
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parentView:Landroid/view/View;

    .line 180
    return-void
.end method

.method public setRoundRadius(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 392
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadius:I

    .line 393
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 394
    return-void
.end method

.method public setSecondParentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 183
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentView:Landroid/view/View;

    .line 184
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycleWithSecond:Z

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V

    .line 187
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    if-eqz v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 241
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    .line 242
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduleNextGetFrame()V

    .line 243
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->mStartTask:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    .line 260
    return-void
.end method

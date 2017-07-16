.class Lorg/telegram/ui/Components/WebPlayerView$ControlsView;
.super Landroid/widget/FrameLayout;
.source "WebPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/WebPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControlsView"
.end annotation


# instance fields
.field private bufferedPercentage:I

.field private bufferedPosition:I

.field private currentAnimation:Landroid/animation/AnimatorSet;

.field private currentProgressX:I

.field private duration:I

.field private durationLayout:Landroid/text/StaticLayout;

.field private durationWidth:I

.field private hideRunnable:Ljava/lang/Runnable;

.field private imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private isVisible:Z

.field private lastProgressX:I

.field private progress:I

.field private progressBufferedPaint:Landroid/graphics/Paint;

.field private progressInnerPaint:Landroid/graphics/Paint;

.field private progressLayout:Landroid/text/StaticLayout;

.field private progressPaint:Landroid/graphics/Paint;

.field private progressPressed:Z

.field private textPaint:Landroid/text/TextPaint;

.field final synthetic this$0:Lorg/telegram/ui/Components/WebPlayerView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/WebPlayerView;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 1032
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    .line 1033
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1021
    iput-boolean v2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->isVisible:Z

    .line 1025
    new-instance v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView$1;-><init>(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->hideRunnable:Ljava/lang/Runnable;

    .line 1034
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->setWillNotDraw(Z)V

    .line 1036
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->textPaint:Landroid/text/TextPaint;

    .line 1037
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 1038
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->textPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1040
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPaint:Landroid/graphics/Paint;

    .line 1041
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPaint:Landroid/graphics/Paint;

    const v1, -0xe65818

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1043
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressInnerPaint:Landroid/graphics/Paint;

    .line 1044
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressInnerPaint:Landroid/graphics/Paint;

    const v1, -0x6a6e69

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1046
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressBufferedPaint:Landroid/graphics/Paint;

    .line 1047
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressBufferedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1049
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 1050
    return-void
.end method

.method static synthetic access$4202(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView$ControlsView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 1006
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)Lorg/telegram/messenger/ImageReceiver;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    .prologue
    .line 1006
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    .prologue
    .line 1006
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->checkNeedHide()V

    return-void
.end method

.method private checkNeedHide()V
    .locals 4

    .prologue
    .line 1122
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->hideRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1123
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->isVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$000(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1124
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->hideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1126
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1212
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$4400(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1213
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$4500(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$4600(Lorg/telegram/ui/Components/WebPlayerView;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 1214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1215
    .local v14, "newTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$4700(Lorg/telegram/ui/Components/WebPlayerView;)J

    move-result-wide v2

    sub-long v10, v14, v2

    .line 1216
    .local v10, "dt":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v2, v14, v15}, Lorg/telegram/ui/Components/WebPlayerView;->access$4702(Lorg/telegram/ui/Components/WebPlayerView;J)J

    .line 1217
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v3}, Lorg/telegram/ui/Components/WebPlayerView;->access$4600(Lorg/telegram/ui/Components/WebPlayerView;)F

    move-result v3

    long-to-float v4, v10

    const/high16 v5, 0x43160000    # 150.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/WebPlayerView;->access$4602(Lorg/telegram/ui/Components/WebPlayerView;F)F

    .line 1218
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$4600(Lorg/telegram/ui/Components/WebPlayerView;)F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 1219
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/WebPlayerView;->access$4602(Lorg/telegram/ui/Components/WebPlayerView;F)F

    .line 1221
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->invalidate()V

    .line 1223
    .end local v10    # "dt":J
    .end local v14    # "newTime":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v3}, Lorg/telegram/ui/Components/WebPlayerView;->access$4600(Lorg/telegram/ui/Components/WebPlayerView;)F

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1224
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1226
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$000(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer;->isPlayerPrepared()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1227
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->getMeasuredWidth()I

    move-result v21

    .line 1228
    .local v21, "width":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->getMeasuredHeight()I

    move-result v12

    .line 1229
    .local v12, "height":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$3500(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1230
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_3

    .line 1231
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1232
    const/high16 v2, 0x42680000    # 58.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v21, v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationWidth:I

    sub-int/2addr v2, v3

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$4300(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x6

    :goto_0
    add-int/lit8 v2, v2, 0x1d

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v12, v2

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1233
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1234
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1237
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_4

    .line 1238
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1239
    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$4300(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x6

    :goto_1
    add-int/lit8 v2, v2, 0x1d

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v12, v2

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1240
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1241
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1245
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    if-eqz v2, :cond_8

    .line 1251
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$3500(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1252
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v17, v12, v2

    .line 1253
    .local v17, "progressLineY":I
    const/16 v16, 0x0

    .line 1254
    .local v16, "progressLineX":I
    move/from16 v13, v21

    .line 1255
    .local v13, "progressLineEndX":I
    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v9, v12, v2

    .line 1267
    .local v9, "cy":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$4300(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1268
    move/from16 v0, v16

    int-to-float v3, v0

    move/from16 v0, v17

    int-to-float v4, v0

    int-to-float v5, v13

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v2, v2, v17

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressInnerPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1271
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPressed:Z

    if-eqz v2, :cond_d

    .line 1272
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    move/from16 v18, v0

    .line 1276
    .local v18, "progressX":I
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->bufferedPercentage:I

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    if-eqz v2, :cond_7

    .line 1277
    sub-int v2, v13, v16

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    div-int v19, v2, v3

    .line 1278
    .local v19, "pxPerS":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->bufferedPosition:I

    mul-int v2, v2, v19

    add-int v20, v16, v2

    .line 1279
    .local v20, "start":I
    const/4 v8, 0x0

    .line 1280
    .local v8, "additional":I
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    .line 1281
    sub-int v8, v20, v18

    .line 1283
    :cond_6
    sub-int v2, v20, v8

    int-to-float v3, v2

    move/from16 v0, v17

    int-to-float v4, v0

    move/from16 v0, v20

    int-to-float v2, v0

    sub-int v5, v13, v20

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->bufferedPercentage:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    add-float/2addr v5, v2

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v2, v2, v17

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$4300(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressBufferedPaint:Landroid/graphics/Paint;

    :goto_4
    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1285
    .end local v8    # "additional":I
    .end local v19    # "pxPerS":I
    .end local v20    # "start":I
    :cond_7
    move/from16 v0, v16

    int-to-float v3, v0

    move/from16 v0, v17

    int-to-float v4, v0

    move/from16 v0, v18

    int-to-float v5, v0

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v2, v2, v17

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1286
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$3500(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1287
    move/from16 v0, v18

    int-to-float v3, v0

    int-to-float v4, v9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPressed:Z

    if-eqz v2, :cond_f

    const/high16 v2, 0x40e00000    # 7.0f

    :goto_5
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1291
    .end local v9    # "cy":I
    .end local v12    # "height":I
    .end local v13    # "progressLineEndX":I
    .end local v16    # "progressLineX":I
    .end local v17    # "progressLineY":I
    .end local v18    # "progressX":I
    .end local v21    # "width":I
    :cond_8
    return-void

    .line 1232
    .restart local v12    # "height":I
    .restart local v21    # "width":I
    :cond_9
    const/16 v2, 0xa

    goto/16 :goto_0

    .line 1239
    :cond_a
    const/16 v2, 0xa

    goto/16 :goto_1

    .line 1256
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$4300(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1257
    const/high16 v2, 0x41e80000    # 29.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v17, v12, v2

    .line 1258
    .restart local v17    # "progressLineY":I
    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationWidth:I

    add-int v16, v2, v3

    .line 1259
    .restart local v16    # "progressLineX":I
    const/high16 v2, 0x42980000    # 76.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v21, v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationWidth:I

    sub-int v13, v2, v3

    .line 1260
    .restart local v13    # "progressLineEndX":I
    const/high16 v2, 0x41e00000    # 28.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v9, v12, v2

    .restart local v9    # "cy":I
    goto/16 :goto_2

    .line 1262
    .end local v9    # "cy":I
    .end local v13    # "progressLineEndX":I
    .end local v16    # "progressLineX":I
    .end local v17    # "progressLineY":I
    :cond_c
    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v17, v12, v2

    .line 1263
    .restart local v17    # "progressLineY":I
    const/16 v16, 0x0

    .line 1264
    .restart local v16    # "progressLineX":I
    move/from16 v13, v21

    .line 1265
    .restart local v13    # "progressLineEndX":I
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v9, v12, v2

    .restart local v9    # "cy":I
    goto/16 :goto_2

    .line 1274
    :cond_d
    sub-int v2, v13, v16

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progress:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int v18, v16, v2

    .restart local v18    # "progressX":I
    goto/16 :goto_3

    .line 1283
    .restart local v8    # "additional":I
    .restart local v19    # "pxPerS":I
    .restart local v20    # "start":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressInnerPaint:Landroid/graphics/Paint;

    goto/16 :goto_4

    .line 1287
    .end local v8    # "additional":I
    .end local v19    # "pxPerS":I
    .end local v20    # "start":I
    :cond_f
    const/high16 v2, 0x40a00000    # 5.0f

    goto :goto_5
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 1130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 1131
    iget-boolean v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->isVisible:Z

    if-nez v1, :cond_0

    .line 1132
    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    .line 1138
    :goto_0
    return v0

    .line 1135
    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1136
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPressed:Z

    goto :goto_0

    .line 1138
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/high16 v10, 0x41200000    # 10.0f

    const/4 v12, 0x1

    .line 1152
    iget-object v6, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v6}, Lorg/telegram/ui/Components/WebPlayerView;->access$4300(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1153
    const/high16 v6, 0x42100000    # 36.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iget v8, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationWidth:I

    add-int v1, v6, v8

    .line 1154
    .local v1, "progressLineX":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->getMeasuredWidth()I

    move-result v6

    const/high16 v8, 0x42980000    # 76.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v6, v8

    iget v8, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationWidth:I

    sub-int v0, v6, v8

    .line 1155
    .local v0, "progressLineEndX":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->getMeasuredHeight()I

    move-result v6

    const/high16 v8, 0x41e00000    # 28.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int v3, v6, v8

    .line 1162
    .local v3, "progressY":I
    :goto_0
    iget v6, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    if-eqz v6, :cond_3

    sub-int v6, v0, v1

    int-to-float v6, v6

    iget v8, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progress:I

    int-to-float v8, v8

    iget v9, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float/2addr v6, v8

    float-to-int v6, v6

    :goto_1
    add-int v2, v1, v6

    .line 1164
    .local v2, "progressX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_5

    .line 1165
    iget-boolean v6, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->isVisible:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v6}, Lorg/telegram/ui/Components/WebPlayerView;->access$3500(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1166
    iget v6, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    if-eqz v6, :cond_0

    .line 1167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 1168
    .local v4, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 1169
    .local v5, "y":I
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, v2, v6

    if-lt v4, v6, :cond_0

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v2

    if-gt v4, v6, :cond_0

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, v3, v6

    if-lt v5, v6, :cond_0

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v3

    if-gt v5, v6, :cond_0

    .line 1170
    iput-boolean v12, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPressed:Z

    .line 1171
    iput v4, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->lastProgressX:I

    .line 1172
    iput v2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    .line 1173
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v12}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1174
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->invalidate()V

    .line 1180
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_0
    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->hideRunnable:Ljava/lang/Runnable;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1206
    :cond_1
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1207
    return v12

    .line 1157
    .end local v0    # "progressLineEndX":I
    .end local v1    # "progressLineX":I
    .end local v2    # "progressX":I
    .end local v3    # "progressY":I
    :cond_2
    const/4 v1, 0x0

    .line 1158
    .restart local v1    # "progressLineX":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->getMeasuredWidth()I

    move-result v0

    .line 1159
    .restart local v0    # "progressLineEndX":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->getMeasuredHeight()I

    move-result v6

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int v3, v6, v8

    .restart local v3    # "progressY":I
    goto :goto_0

    :cond_3
    move v6, v7

    .line 1162
    goto :goto_1

    .line 1178
    .restart local v2    # "progressX":I
    :cond_4
    invoke-virtual {p0, v12, v12}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    goto :goto_2

    .line 1181
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v12, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_8

    .line 1182
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v6}, Lorg/telegram/ui/Components/WebPlayerView;->access$1700(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v6}, Lorg/telegram/ui/Components/WebPlayerView;->access$000(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1183
    iget-object v6, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->hideRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0xbb8

    invoke-static {v6, v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1185
    :cond_7
    iget-boolean v6, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPressed:Z

    if-eqz v6, :cond_1

    .line 1186
    iput-boolean v7, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPressed:Z

    .line 1187
    iget-object v6, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v6}, Lorg/telegram/ui/Components/WebPlayerView;->access$1700(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1188
    iget v6, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    sub-int/2addr v7, v1

    int-to-float v7, v7

    sub-int v8, v0, v1

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progress:I

    .line 1189
    iget-object v6, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v6}, Lorg/telegram/ui/Components/WebPlayerView;->access$000(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progress:I

    int-to-long v8, v7

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    goto :goto_3

    .line 1192
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 1193
    iget-boolean v6, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPressed:Z

    if-eqz v6, :cond_1

    .line 1194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 1195
    .restart local v4    # "x":I
    iget v6, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    iget v7, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->lastProgressX:I

    sub-int/2addr v7, v4

    sub-int/2addr v6, v7

    iput v6, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    .line 1196
    iput v4, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->lastProgressX:I

    .line 1197
    iget v6, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    if-ge v6, v1, :cond_a

    .line 1198
    iput v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    .line 1202
    :cond_9
    :goto_4
    iget v6, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    mul-int/lit16 v6, v6, 0x3e8

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    sub-int/2addr v7, v1

    int-to-float v7, v7

    sub-int v8, v0, v1

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->setProgress(I)V

    .line 1203
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->invalidate()V

    goto/16 :goto_3

    .line 1199
    :cond_a
    iget v6, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    if-le v6, v0, :cond_9

    .line 1200
    iput v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    goto :goto_4
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 1143
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 1144
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->checkNeedHide()V

    .line 1145
    return-void
.end method

.method public setBufferedProgress(II)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "percentage"    # I

    .prologue
    .line 1065
    iput p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->bufferedPosition:I

    .line 1066
    iput p2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->bufferedPercentage:I

    .line 1067
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->invalidate()V

    .line 1068
    return-void
.end method

.method public setDuration(I)V
    .locals 8
    .param p1, "value"    # I

    .prologue
    const/4 v7, 0x0

    .line 1053
    iget v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    if-eq v0, p1, :cond_0

    if-gez p1, :cond_1

    .line 1062
    :cond_0
    :goto_0
    return-void

    .line 1056
    :cond_1
    iput p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    .line 1057
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x1

    iget v5, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->textPaint:Landroid/text/TextPaint;

    const/high16 v3, 0x447a0000    # 1000.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationLayout:Landroid/text/StaticLayout;

    .line 1058
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1059
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v7}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationWidth:I

    .line 1061
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->invalidate()V

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 8
    .param p1, "value"    # I

    .prologue
    const/4 v7, 0x0

    .line 1071
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPressed:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_1

    .line 1077
    :cond_0
    :goto_0
    return-void

    .line 1074
    :cond_1
    iput p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progress:I

    .line 1075
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progress:I

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x1

    iget v5, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progress:I

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->textPaint:Landroid/text/TextPaint;

    const/high16 v3, 0x447a0000    # 1000.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressLayout:Landroid/text/StaticLayout;

    .line 1076
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->invalidate()V

    goto :goto_0
.end method

.method public show(ZZ)V
    .locals 10
    .param p1, "value"    # Z
    .param p2, "animated"    # Z

    .prologue
    const-wide/16 v8, 0x96

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1080
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->isVisible:Z

    if-ne v0, p1, :cond_0

    .line 1119
    :goto_0
    return-void

    .line 1083
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->isVisible:Z

    .line 1084
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 1085
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1087
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->isVisible:Z

    if-eqz v0, :cond_3

    .line 1088
    if-eqz p2, :cond_2

    .line 1089
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 1090
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    new-array v1, v3, [Landroid/animation/Animator;

    const-string/jumbo v2, "alpha"

    new-array v3, v3, [F

    aput v6, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1091
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1092
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/WebPlayerView$ControlsView$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView$2;-><init>(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1098
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1118
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->checkNeedHide()V

    goto :goto_0

    .line 1100
    :cond_2
    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->setAlpha(F)V

    goto :goto_1

    .line 1103
    :cond_3
    if-eqz p2, :cond_4

    .line 1104
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 1105
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    new-array v1, v3, [Landroid/animation/Animator;

    const-string/jumbo v2, "alpha"

    new-array v3, v3, [F

    aput v5, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1106
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1107
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/WebPlayerView$ControlsView$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView$3;-><init>(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1113
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 1115
    :cond_4
    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->setAlpha(F)V

    goto :goto_1
.end method

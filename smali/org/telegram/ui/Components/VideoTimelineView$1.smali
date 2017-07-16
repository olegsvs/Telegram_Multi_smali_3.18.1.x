.class Lorg/telegram/ui/Components/VideoTimelineView$1;
.super Landroid/os/AsyncTask;
.source "VideoTimelineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/VideoTimelineView;->reloadFrames(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

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


# instance fields
.field private frameNum:I

.field final synthetic this$0:Lorg/telegram/ui/Components/VideoTimelineView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/VideoTimelineView;)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/ui/Components/VideoTimelineView;

    .prologue
    .line 179
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->frameNum:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "objects"    # [Ljava/lang/Integer;

    .prologue
    .line 184
    const/4 v13, 0x0

    aget-object v13, p1, v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/VideoTimelineView$1;->frameNum:I

    .line 185
    const/4 v2, 0x0

    .line 186
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/VideoTimelineView$1;->isCancelled()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 187
    const/4 v13, 0x0

    .line 211
    :goto_0
    return-object v13

    .line 190
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-static {v13}, Lorg/telegram/ui/Components/VideoTimelineView;->access$100(Lorg/telegram/ui/Components/VideoTimelineView;)Landroid/media/MediaMetadataRetriever;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-static {v14}, Lorg/telegram/ui/Components/VideoTimelineView;->access$000(Lorg/telegram/ui/Components/VideoTimelineView;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/VideoTimelineView$1;->frameNum:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 191
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/VideoTimelineView$1;->isCancelled()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 192
    const/4 v13, 0x0

    goto :goto_0

    .line 194
    :cond_1
    if-eqz v2, :cond_2

    .line 195
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-static {v13}, Lorg/telegram/ui/Components/VideoTimelineView;->access$200(Lorg/telegram/ui/Components/VideoTimelineView;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-static {v14}, Lorg/telegram/ui/Components/VideoTimelineView;->access$300(Lorg/telegram/ui/Components/VideoTimelineView;)I

    move-result v14

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v15

    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 196
    .local v7, "result":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 197
    .local v3, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-static {v13}, Lorg/telegram/ui/Components/VideoTimelineView;->access$200(Lorg/telegram/ui/Components/VideoTimelineView;)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float v9, v13, v14

    .line 198
    .local v9, "scaleX":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-static {v13}, Lorg/telegram/ui/Components/VideoTimelineView;->access$300(Lorg/telegram/ui/Components/VideoTimelineView;)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float v10, v13, v14

    .line 199
    .local v10, "scaleY":F
    cmpl-float v13, v9, v10

    if-lez v13, :cond_3

    move v8, v9

    .line 200
    .local v8, "scale":F
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v8

    float-to-int v12, v13

    .line 201
    .local v12, "w":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v8

    float-to-int v6, v13

    .line 202
    .local v6, "h":I
    new-instance v11, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v11, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 203
    .local v11, "srcRect":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-static {v13}, Lorg/telegram/ui/Components/VideoTimelineView;->access$200(Lorg/telegram/ui/Components/VideoTimelineView;)I

    move-result v13

    sub-int/2addr v13, v12

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-static {v14}, Lorg/telegram/ui/Components/VideoTimelineView;->access$300(Lorg/telegram/ui/Components/VideoTimelineView;)I

    move-result v14

    sub-int/2addr v14, v6

    div-int/lit8 v14, v14, 0x2

    invoke-direct {v4, v13, v14, v12, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 204
    .local v4, "destRect":Landroid/graphics/Rect;
    const/4 v13, 0x0

    invoke-virtual {v3, v2, v11, v4, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 205
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    move-object v2, v7

    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "destRect":Landroid/graphics/Rect;
    .end local v6    # "h":I
    .end local v7    # "result":Landroid/graphics/Bitmap;
    .end local v8    # "scale":F
    .end local v9    # "scaleX":F
    .end local v10    # "scaleY":F
    .end local v11    # "srcRect":Landroid/graphics/Rect;
    .end local v12    # "w":I
    :cond_2
    :goto_2
    move-object v13, v2

    .line 211
    goto/16 :goto_0

    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    .restart local v7    # "result":Landroid/graphics/Bitmap;
    .restart local v9    # "scaleX":F
    .restart local v10    # "scaleY":F
    :cond_3
    move v8, v10

    .line 199
    goto :goto_1

    .line 208
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "result":Landroid/graphics/Bitmap;
    .end local v9    # "scaleX":F
    .end local v10    # "scaleY":F
    :catch_0
    move-exception v5

    .line 209
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 179
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/VideoTimelineView$1;->doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 216
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView$1;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-static {v0}, Lorg/telegram/ui/Components/VideoTimelineView;->access$400(Lorg/telegram/ui/Components/VideoTimelineView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoTimelineView;->invalidate()V

    .line 219
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->frameNum:I

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-static {v1}, Lorg/telegram/ui/Components/VideoTimelineView;->access$500(Lorg/telegram/ui/Components/VideoTimelineView;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 220
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->frameNum:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/VideoTimelineView;->access$600(Lorg/telegram/ui/Components/VideoTimelineView;I)V

    .line 223
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 179
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/VideoTimelineView$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

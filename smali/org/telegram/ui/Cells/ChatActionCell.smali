.class public Lorg/telegram/ui/Cells/ChatActionCell;
.super Lorg/telegram/ui/Cells/BaseCell;
.source "ChatActionCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;
    }
.end annotation


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private customDate:I

.field private customText:Ljava/lang/CharSequence;

.field private delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

.field private hasReplyMessage:Z

.field private imagePressed:Z

.field private imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private pressedLink:Landroid/text/style/URLSpan;

.field private previousWidth:I

.field private textHeight:I

.field private textLayout:Landroid/text/StaticLayout;

.field private textWidth:I

.field private textX:I

.field private textXLeft:I

.field private textY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;-><init>(Landroid/content/Context;)V

    .line 61
    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    .line 62
    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    .line 63
    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textX:I

    .line 64
    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    .line 65
    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textXLeft:I

    .line 66
    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    .line 67
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    .line 83
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 84
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 85
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 87
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->chatAvatarRadius:I

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->chatAvatarRadius:I

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setRadius(I)V

    .line 91
    return-void
.end method

.method private createLayout(Ljava/lang/CharSequence;I)V
    .locals 12
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "width"    # I

    .prologue
    const/4 v7, 0x0

    .line 283
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v3, p2, v0

    .line 284
    .local v3, "maxWidth":I
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_actionTextPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    .line 285
    iput v7, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    .line 286
    iput v7, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    .line 288
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    .line 289
    .local v11, "linesCount":I
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_0
    if-ge v8, v11, :cond_1

    .line 292
    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v10

    .line 293
    .local v10, "lineWidth":F
    int-to-float v0, v3

    cmpl-float v0, v10, v0

    if-lez v0, :cond_0

    .line 294
    int-to-float v10, v3

    .line 296
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    int-to-double v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v8}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v2

    int-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 301
    :try_start_2
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    int-to-double v0, v0

    float-to-double v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    .line 289
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 297
    .end local v10    # "lineWidth":F
    :catch_0
    move-exception v9

    .line 298
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 309
    .end local v8    # "a":I
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "linesCount":I
    :goto_1
    return-void

    .line 303
    :catch_1
    move-exception v9

    .line 304
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 306
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    sub-int v0, p2, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textX:I

    .line 307
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    .line 308
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    sub-int v0, p2, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textXLeft:I

    goto :goto_1
.end method

.method private findMaxWidthAroundLine(I)I
    .locals 7
    .param p1, "line"    # I

    .prologue
    const/high16 v6, 0x41400000    # 12.0f

    .line 339
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, p1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 340
    .local v3, "width":I
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    .line 341
    .local v1, "count":I
    add-int/lit8 v0, p1, 0x1

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 342
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v0}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 343
    .local v2, "w":I
    sub-int v4, v2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 344
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 341
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    .end local v2    # "w":I
    :cond_0
    add-int/lit8 v0, p1, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 350
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v0}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 351
    .restart local v2    # "w":I
    sub-int v4, v2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 352
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 349
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 357
    .end local v2    # "w":I
    :cond_1
    return v3
.end method


# virtual methods
.method public getCustomDate()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customDate:I

    return v0
.end method

.method public getMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getPhotoImage()Lorg/telegram/messenger/ImageReceiver;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 369
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 370
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 373
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_e

    .line 374
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v10

    .line 375
    .local v10, "count":I
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    .line 376
    .local v9, "corner":I
    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v24

    .line 377
    .local v24, "y":I
    const/16 v21, 0x0

    .line 380
    .local v21, "previousLineBottom":I
    const/4 v7, 0x0

    .local v7, "a":I
    :goto_0
    if-ge v7, v10, :cond_d

    .line 381
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/ChatActionCell;->findMaxWidthAroundLine(I)I

    move-result v22

    .line 382
    .local v22, "width":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v1, v22

    div-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v23, v1, v2

    .line 383
    .local v23, "x":I
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v22, v22, v1

    .line 384
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v7}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v16

    .line 385
    .local v16, "lineBottom":I
    sub-int v15, v16, v21

    .line 386
    .local v15, "height":I
    const/4 v8, 0x0

    .line 387
    .local v8, "additionalHeight":I
    move/from16 v21, v16

    .line 389
    add-int/lit8 v1, v10, -0x1

    if-ne v7, v1, :cond_7

    const/4 v11, 0x1

    .line 390
    .local v11, "drawBottomCorners":Z
    :goto_1
    if-nez v7, :cond_8

    const/4 v12, 0x1

    .line 392
    .local v12, "drawTopCorners":Z
    :goto_2
    if-eqz v12, :cond_1

    .line 393
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v24, v24, v1

    .line 394
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v15, v1

    .line 396
    :cond_1
    if-eqz v11, :cond_2

    .line 397
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v15, v1

    .line 400
    :cond_2
    move/from16 v0, v23

    int-to-float v2, v0

    move/from16 v0, v24

    int-to-float v3, v0

    add-int v1, v23, v22

    int-to-float v4, v1

    add-int v1, v24, v15

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 402
    if-nez v11, :cond_3

    add-int/lit8 v1, v7, 0x1

    if-ge v1, v10, :cond_3

    .line 403
    add-int/lit8 v1, v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->findMaxWidthAroundLine(I)I

    move-result v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v17, v1, v2

    .line 404
    .local v17, "nextLineWidth":I
    mul-int/lit8 v1, v9, 0x2

    add-int v1, v1, v17

    move/from16 v0, v22

    if-ge v1, v0, :cond_9

    .line 405
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v1, v17

    div-int/lit8 v18, v1, 0x2

    .line 406
    .local v18, "nextX":I
    const/4 v11, 0x1

    .line 407
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    .line 409
    move/from16 v0, v23

    int-to-float v2, v0

    add-int v1, v24, v15

    int-to-float v3, v1

    move/from16 v0, v18

    int-to-float v4, v0

    add-int v1, v24, v15

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 410
    add-int v1, v18, v17

    int-to-float v2, v1

    add-int v1, v24, v15

    int-to-float v3, v1

    add-int v1, v23, v22

    int-to-float v4, v1

    add-int v1, v24, v15

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 430
    .end local v17    # "nextLineWidth":I
    .end local v18    # "nextX":I
    :cond_3
    :goto_3
    if-nez v12, :cond_4

    if-lez v7, :cond_4

    .line 431
    add-int/lit8 v1, v7, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->findMaxWidthAroundLine(I)I

    move-result v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v19, v1, v2

    .line 432
    .local v19, "prevLineWidth":I
    mul-int/lit8 v1, v9, 0x2

    add-int v1, v1, v19

    move/from16 v0, v22

    if-ge v1, v0, :cond_b

    .line 433
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v1, v19

    div-int/lit8 v20, v1, 0x2

    .line 434
    .local v20, "prevX":I
    const/4 v12, 0x1

    .line 435
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v24, v24, v1

    .line 436
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v15, v1

    .line 438
    move/from16 v0, v23

    int-to-float v2, v0

    move/from16 v0, v24

    int-to-float v3, v0

    move/from16 v0, v20

    int-to-float v4, v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v1, v1, v24

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 439
    add-int v1, v20, v19

    int-to-float v2, v1

    move/from16 v0, v24

    int-to-float v3, v0

    add-int v1, v23, v22

    int-to-float v4, v1

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v1, v1, v24

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 462
    .end local v19    # "prevLineWidth":I
    .end local v20    # "prevX":I
    :cond_4
    :goto_4
    sub-int v1, v23, v9

    int-to-float v2, v1

    add-int v1, v24, v9

    int-to-float v3, v1

    move/from16 v0, v23

    int-to-float v4, v0

    add-int v1, v24, v15

    add-int/2addr v1, v8

    sub-int/2addr v1, v9

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 463
    add-int v1, v23, v22

    int-to-float v2, v1

    add-int v1, v24, v9

    int-to-float v3, v1

    add-int v1, v23, v22

    add-int/2addr v1, v9

    int-to-float v4, v1

    add-int v1, v24, v15

    add-int/2addr v1, v8

    sub-int/2addr v1, v9

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 465
    if-eqz v12, :cond_5

    .line 470
    sub-int v13, v23, v9

    .line 471
    .local v13, "dx":I
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerOuter:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    add-int v2, v13, v9

    add-int v3, v24, v9

    move/from16 v0, v24

    invoke-virtual {v1, v13, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 472
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerOuter:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 474
    add-int v13, v23, v22

    .line 475
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerOuter:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    add-int v2, v13, v9

    add-int v3, v24, v9

    move/from16 v0, v24

    invoke-virtual {v1, v13, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 476
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerOuter:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 479
    .end local v13    # "dx":I
    :cond_5
    if-eqz v11, :cond_6

    .line 480
    add-int v1, v24, v15

    add-int/2addr v1, v8

    sub-int v14, v1, v9

    .line 485
    .local v14, "dy":I
    add-int v13, v23, v22

    .line 486
    .restart local v13    # "dx":I
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerOuter:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    add-int v2, v13, v9

    add-int v3, v14, v9

    invoke-virtual {v1, v13, v14, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 487
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerOuter:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 489
    sub-int v13, v23, v9

    .line 490
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerOuter:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    add-int v2, v13, v9

    add-int v3, v14, v9

    invoke-virtual {v1, v13, v14, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 491
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerOuter:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 494
    .end local v13    # "dx":I
    .end local v14    # "dy":I
    :cond_6
    add-int v24, v24, v15

    .line 380
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 389
    .end local v11    # "drawBottomCorners":Z
    .end local v12    # "drawTopCorners":Z
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 390
    .restart local v11    # "drawBottomCorners":Z
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 411
    .restart local v12    # "drawTopCorners":Z
    .restart local v17    # "nextLineWidth":I
    :cond_9
    mul-int/lit8 v1, v9, 0x2

    add-int v1, v1, v22

    move/from16 v0, v17

    if-ge v1, v0, :cond_a

    .line 412
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    .line 414
    add-int v1, v24, v15

    const/high16 v2, 0x41100000    # 9.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v14, v1, v2

    .line 419
    .restart local v14    # "dy":I
    mul-int/lit8 v1, v9, 0x2

    sub-int v13, v23, v1

    .line 420
    .restart local v13    # "dx":I
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerInner:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    add-int v2, v13, v9

    add-int v3, v14, v9

    invoke-virtual {v1, v13, v14, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 421
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerInner:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 423
    add-int v1, v23, v22

    add-int v13, v1, v9

    .line 424
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerInner:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    add-int v2, v13, v9

    add-int v3, v14, v9

    invoke-virtual {v1, v13, v14, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 425
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerInner:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_3

    .line 427
    .end local v13    # "dx":I
    .end local v14    # "dy":I
    :cond_a
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    goto/16 :goto_3

    .line 440
    .end local v17    # "nextLineWidth":I
    .restart local v19    # "prevLineWidth":I
    :cond_b
    mul-int/lit8 v1, v9, 0x2

    add-int v1, v1, v22

    move/from16 v0, v19

    if-ge v1, v0, :cond_c

    .line 441
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v24, v24, v1

    .line 442
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v15, v1

    .line 444
    add-int v14, v24, v9

    .line 449
    .restart local v14    # "dy":I
    mul-int/lit8 v1, v9, 0x2

    sub-int v13, v23, v1

    .line 450
    .restart local v13    # "dx":I
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerInner:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    add-int v2, v13, v9

    add-int v3, v14, v9

    invoke-virtual {v1, v13, v14, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 451
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerInner:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 453
    add-int v1, v23, v22

    add-int v13, v1, v9

    .line 454
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerInner:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    add-int v2, v13, v9

    add-int v3, v14, v9

    invoke-virtual {v1, v13, v14, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 455
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerInner:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    .line 457
    .end local v13    # "dx":I
    .end local v14    # "dy":I
    :cond_c
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v24, v24, v1

    .line 458
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v15, v1

    goto/16 :goto_4

    .line 497
    .end local v8    # "additionalHeight":I
    .end local v11    # "drawBottomCorners":Z
    .end local v12    # "drawTopCorners":Z
    .end local v15    # "height":I
    .end local v16    # "lineBottom":I
    .end local v19    # "prevLineWidth":I
    .end local v22    # "width":I
    .end local v23    # "x":I
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 498
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textXLeft:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 499
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 500
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 502
    .end local v7    # "a":I
    .end local v9    # "corner":I
    .end local v10    # "count":I
    .end local v21    # "previousLineBottom":I
    .end local v24    # "y":I
    :cond_e
    return-void
.end method

.method protected onLongPress()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->didLongPressed(Lorg/telegram/ui/Cells/ChatActionCell;)V

    .line 172
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/16 v7, 0xb

    const/high16 v6, 0x42800000    # 64.0f

    .line 313
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    if-nez v2, :cond_0

    .line 314
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->setMeasuredDimension(II)V

    .line 332
    :goto_0
    return-void

    .line 317
    :cond_0
    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 318
    .local v1, "width":I
    iget v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    if-eq v1, v2, :cond_1

    .line 320
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_2

    .line 321
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 325
    .local v0, "text":Ljava/lang/CharSequence;
    :goto_1
    iput v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    .line 326
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->createLayout(Ljava/lang/CharSequence;I)V

    .line 327
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v2, v7, :cond_1

    .line 328
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v1, v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 331
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_1
    iget v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v2, v7, :cond_3

    const/16 v2, 0x46

    :goto_2
    add-int/lit8 v2, v2, 0xe

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->setMeasuredDimension(II)V

    goto :goto_0

    .line 323
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    .restart local v0    # "text":Ljava/lang/CharSequence;
    goto :goto_1

    .line 331
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 176
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v9, :cond_1

    .line 177
    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 279
    :cond_0
    :goto_0
    return v5

    .line 179
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 180
    .local v7, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 182
    .local v8, "y":F
    const/4 v5, 0x0

    .line 183
    .local v5, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_6

    .line 184
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v9, :cond_3

    .line 185
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v9, v9, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v10, 0xb

    if-ne v9, v10, :cond_2

    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9, v7, v8}, Lorg/telegram/messenger/ImageReceiver;->isInsideImage(FF)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 186
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    .line 187
    const/4 v5, 0x1

    .line 189
    :cond_2
    if-eqz v5, :cond_3

    .line 190
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->startCheckLongPress()V

    .line 213
    :cond_3
    :goto_1
    if-nez v5, :cond_5

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    if-eqz v9, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 215
    :cond_4
    iget v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textX:I

    int-to-float v9, v9

    cmpl-float v9, v7, v9

    if-ltz v9, :cond_f

    iget v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-ltz v9, :cond_f

    iget v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textX:I

    iget v10, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    cmpg-float v9, v7, v9

    if-gtz v9, :cond_f

    iget v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v10, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    cmpg-float v9, v8, v9

    if-gtz v9, :cond_f

    .line 216
    iget v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    .line 217
    iget v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textXLeft:I

    int-to-float v9, v9

    sub-float/2addr v7, v9

    .line 219
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    float-to-int v10, v8

    invoke-virtual {v9, v10}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v2

    .line 220
    .local v2, "line":I
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v2, v7}, Landroid/text/StaticLayout;->getOffsetForHorizontal(IF)I

    move-result v4

    .line 221
    .local v4, "off":I
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v1

    .line 222
    .local v1, "left":F
    cmpg-float v9, v1, v7

    if-gtz v9, :cond_e

    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v9

    add-float/2addr v9, v1

    cmpl-float v9, v9, v7

    if-ltz v9, :cond_e

    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v9, v9, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    instance-of v9, v9, Landroid/text/Spannable;

    if-eqz v9, :cond_e

    .line 223
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v9, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    .line 224
    .local v0, "buffer":Landroid/text/Spannable;
    const-class v9, Landroid/text/style/URLSpan;

    invoke-interface {v0, v4, v4, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/URLSpan;

    .line 226
    .local v3, "link":[Landroid/text/style/URLSpan;
    array-length v9, v3

    if-eqz v9, :cond_d

    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_a

    .line 228
    const/4 v9, 0x0

    aget-object v9, v3, v9

    iput-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    .line 229
    const/4 v5, 0x1

    .line 275
    .end local v0    # "buffer":Landroid/text/Spannable;
    .end local v1    # "left":F
    .end local v2    # "line":I
    .end local v3    # "link":[Landroid/text/style/URLSpan;
    .end local v4    # "off":I
    :cond_5
    :goto_2
    if-nez v5, :cond_0

    .line 276
    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto/16 :goto_0

    .line 194
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_7

    .line 195
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->cancelCheckLongPress()V

    .line 197
    :cond_7
    iget-boolean v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    if-eqz v9, :cond_3

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    .line 199
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    .line 200
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v9, :cond_3

    .line 201
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    invoke-interface {v9, p0}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->didClickedImage(Lorg/telegram/ui/Cells/ChatActionCell;)V

    .line 202
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lorg/telegram/ui/Cells/ChatActionCell;->playSoundEffect(I)V

    goto/16 :goto_1

    .line 204
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_9

    .line 205
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    goto/16 :goto_1

    .line 206
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 207
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9, v7, v8}, Lorg/telegram/messenger/ImageReceiver;->isInsideImage(FF)Z

    move-result v9

    if-nez v9, :cond_3

    .line 208
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    goto/16 :goto_1

    .line 231
    .restart local v0    # "buffer":Landroid/text/Spannable;
    .restart local v1    # "left":F
    .restart local v2    # "line":I
    .restart local v3    # "link":[Landroid/text/style/URLSpan;
    .restart local v4    # "off":I
    :cond_a
    const/4 v9, 0x0

    aget-object v9, v3, v9

    iget-object v10, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    if-ne v9, v10, :cond_5

    .line 232
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v9, :cond_b

    .line 233
    const/4 v9, 0x0

    aget-object v9, v3, v9

    invoke-virtual {v9}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v6

    .line 234
    .local v6, "url":Ljava/lang/String;
    const-string/jumbo v9, "game"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 235
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    iget-object v10, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v10, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    invoke-interface {v9, p0, v10}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->didPressedReplyMessage(Lorg/telegram/ui/Cells/ChatActionCell;I)V

    .line 260
    .end local v6    # "url":Ljava/lang/String;
    :cond_b
    :goto_3
    const/4 v5, 0x1

    goto :goto_2

    .line 257
    .restart local v6    # "url":Ljava/lang/String;
    :cond_c
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->needOpenUserProfile(I)V

    goto :goto_3

    .line 264
    .end local v6    # "url":Ljava/lang/String;
    :cond_d
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    goto/16 :goto_2

    .line 267
    .end local v0    # "buffer":Landroid/text/Spannable;
    .end local v3    # "link":[Landroid/text/style/URLSpan;
    :cond_e
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    goto/16 :goto_2

    .line 270
    .end local v1    # "left":F
    .end local v2    # "line":I
    .end local v4    # "off":I
    :cond_f
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    goto/16 :goto_2
.end method

.method public setCustomDate(I)V
    .locals 4
    .param p1, "date"    # I

    .prologue
    .line 98
    iget v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customDate:I

    if-ne v1, p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    int-to-long v2, p1

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "newText":Ljava/lang/CharSequence;
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    .line 106
    iput p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customDate:I

    .line 107
    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    .line 108
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMeasuredWidth()I

    move-result v1

    if-eqz v1, :cond_3

    .line 109
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMeasuredWidth()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->createLayout(Ljava/lang/CharSequence;I)V

    .line 110
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->invalidate()V

    .line 112
    :cond_3
    new-instance v1, Lorg/telegram/ui/Cells/ChatActionCell$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Cells/ChatActionCell$1;-><init>(Lorg/telegram/ui/Cells/ChatActionCell;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setDelegate(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    .line 95
    return-void
.end method

.method public setMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .locals 9
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 121
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->hasReplyMessage:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 125
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_3

    move v0, v8

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->hasReplyMessage:Z

    .line 126
    iput v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_9

    .line 128
    const/4 v6, 0x0

    .line 129
    .local v6, "id":I
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v0, :cond_4

    .line 131
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    .line 141
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v6, v4, v4, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 142
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;

    if-eqz v0, :cond_6

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->newUserPhoto:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v2, "50_50"

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    .line 152
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_4
    invoke-virtual {v0, v8, v5}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 156
    .end local v6    # "id":I
    :goto_5
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->requestLayout()V

    goto :goto_0

    :cond_3
    move v0, v5

    .line 125
    goto :goto_1

    .line 132
    .restart local v6    # "id":I
    :cond_4
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v0, :cond_5

    .line 133
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    goto :goto_2

    .line 135
    :cond_5
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 136
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v0

    if-ne v6, v0, :cond_2

    .line 137
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    goto :goto_2

    .line 145
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v7

    .line 146
    .local v7, "photo":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v7, :cond_7

    .line 147
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, v7, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v2, "50_50"

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    goto :goto_3

    .line 149
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .end local v7    # "photo":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_8
    move v8, v5

    .line 152
    goto :goto_4

    .line 154
    .end local v6    # "id":I
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5
.end method

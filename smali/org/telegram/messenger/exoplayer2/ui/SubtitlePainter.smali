.class final Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;
.super Ljava/lang/Object;
.source "SubtitlePainter.java"


# static fields
.field private static final INNER_PADDING_RATIO:F = 0.125f

.field private static final TAG:Ljava/lang/String; = "SubtitlePainter"


# instance fields
.field private applyEmbeddedStyles:Z

.field private backgroundColor:I

.field private bottomPaddingFraction:F

.field private final cornerRadius:F

.field private cueLine:F

.field private cueLineAnchor:I

.field private cueLineType:I

.field private cuePosition:F

.field private cuePositionAnchor:I

.field private cueSize:F

.field private cueText:Ljava/lang/CharSequence;

.field private cueTextAlignment:Landroid/text/Layout$Alignment;

.field private edgeColor:I

.field private edgeType:I

.field private foregroundColor:I



.field private final paint:Landroid/graphics/Paint;

.field private parentBottom:I

.field private parentLeft:I

.field private parentRight:I

.field private parentTop:I

.field private final shadowOffset:F

.field private final shadowRadius:F

.field private final spacingAdd:F

.field private final spacingMult:F

.field private textLayout:Landroid/text/StaticLayout;

.field private textLeft:I

.field private textPaddingX:I

.field private final textPaint:Landroid/text/TextPaint;

.field private textSizePx:F

.field private textTop:I

.field private windowColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V


    const/4 v5, 0x2

    new-array v4, v5, [I

    fill-array-data v4, :array_0

    .local v4, "viewAttr":[I
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v4, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .local v2, "styledAttributes":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v6, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->spacingAdd:F

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v7, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->spacingMult:F

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    const/high16 v5, 0x40000000    # 2.0f

    iget v6, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    const/high16 v6, 0x43200000    # 160.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .local v3, "twoDpInPx":I
    int-to-float v5, v3

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cornerRadius:F

    int-to-float v5, v3


    int-to-float v5, v3

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->shadowRadius:F

    int-to-float v5, v3

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->shadowOffset:F

    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->paint:Landroid/graphics/Paint;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->paint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1010217
        0x1010218
    .end array-data
.end method

.method private static areCharSequencesEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "first"    # Ljava/lang/CharSequence;
    .param p1, "second"    # Ljava/lang/CharSequence;

    .prologue
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawLayout(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    .local v10, "layout":Landroid/text/StaticLayout;
    if-nez v10, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v15

    .local v15, "saveCount":I
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textLeft:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textTop:I

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->windowColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-lez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->windowColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaddingX:I

    neg-int v1, v1

    int-to-float v2, v1

    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaddingX:I

    add-int/2addr v1, v4

    int-to-float v4, v1

    invoke-virtual {v10}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->backgroundColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->backgroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v1

    int-to-float v13, v1

    .local v13, "previousBottom":F
    invoke-virtual {v10}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v11

    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v11, :cond_2

    move-object/from16 v0, p0


    invoke-virtual {v10, v9}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaddingX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0


    invoke-virtual {v10, v9}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaddingX:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0


    iput v13, v1, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0


    invoke-virtual {v10, v9}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0


    iget v13, v1, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0


    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cornerRadius:F

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cornerRadius:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .end local v9    # "i":I
    .end local v13    # "previousBottom":F
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0


    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->foregroundColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->shadowRadius:F

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->shadowOffset:F

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->shadowOffset:F

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    const/4 v14, 0x1

    .local v14, "raised":Z
    :goto_3
    if-eqz v14, :cond_8

    const/4 v8, -0x1

    .local v8, "colorUp":I
    :goto_4
    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    .local v7, "colorDown":I
    :goto_5
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->shadowRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v12, v1, v2

    .local v12, "offset":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->foregroundColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->shadowRadius:F

    neg-float v3, v12

    neg-float v4, v12

    invoke-virtual {v1, v2, v3, v4, v8}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->shadowRadius:F

    invoke-virtual {v1, v2, v12, v12, v7}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto/16 :goto_2

    .end local v7    # "colorDown":I
    .end local v8    # "colorUp":I
    .end local v12    # "offset":F
    .end local v14    # "raised":Z
    :cond_7
    const/4 v14, 0x0

    goto :goto_3

    .restart local v14    # "raised":Z
    :cond_8
    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    goto :goto_4

    .restart local v8    # "colorUp":I
    :cond_9
    const/4 v7, -0x1

    goto :goto_5
.end method


# virtual methods
.method public draw(Lorg/telegram/messenger/exoplayer2/text/Cue;ZLorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;FFLandroid/graphics/Canvas;IIII)V
    .locals 26
    .param p1, "cue"    # Lorg/telegram/messenger/exoplayer2/text/Cue;
    .param p2, "applyEmbeddedStyles"    # Z
    .param p3, "style"    # Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;
    .param p4, "textSizePx"    # F
    .param p5, "bottomPaddingFraction"    # F
    .param p6, "canvas"    # Landroid/graphics/Canvas;
    .param p7, "cueBoxLeft"    # I
    .param p8, "cueBoxTop"    # I
    .param p9, "cueBoxRight"    # I
    .param p10, "cueBoxBottom"    # I

    .prologue
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/text/Cue;->text:Ljava/lang/CharSequence;

    .local v3, "cueText":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->areCharSequencesEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    invoke-static {v2, v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLine:F

    move-object/from16 v0, p1


    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLineType:I

    move-object/from16 v0, p1


    if-ne v2, v4, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLineAnchor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p1


    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cuePosition:F

    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/text/Cue;->position:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cuePositionAnchor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/text/Cue;->positionAnchor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueSize:F

    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/text/Cue;->size:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->applyEmbeddedStyles:Z

    move/from16 v0, p2

    if-ne v2, v0, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->foregroundColor:I

    move-object/from16 v0, p3

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->foregroundColor:I

    if-ne v2, v4, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->backgroundColor:I

    move-object/from16 v0, p3

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->backgroundColor:I

    if-ne v2, v4, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->windowColor:I

    move-object/from16 v0, p3

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->windowColor:I

    if-ne v2, v4, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeType:I

    move-object/from16 v0, p3

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->edgeType:I

    if-ne v2, v4, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    move-object/from16 v0, p3

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->edgeColor:I

    if-ne v2, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    invoke-static {v2, v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textSizePx:F

    cmpl-float v2, v2, p4

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->bottomPaddingFraction:F

    cmpl-float v2, v2, p5

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    move/from16 v0, p7

    if-ne v2, v0, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentTop:I

    move/from16 v0, p8

    if-ne v2, v0, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentRight:I

    move/from16 v0, p9

    if-ne v2, v0, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    move/from16 v0, p10

    if-ne v2, v0, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->drawLayout(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p1


    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLine:F

    move-object/from16 v0, p1


    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLineType:I

    move-object/from16 v0, p1


    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLineAnchor:I

    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/text/Cue;->position:F

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cuePosition:F

    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/text/Cue;->positionAnchor:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cuePositionAnchor:I

    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/text/Cue;->size:F

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueSize:F

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->applyEmbeddedStyles:Z

    move-object/from16 v0, p3

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->foregroundColor:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->foregroundColor:I

    move-object/from16 v0, p3

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->backgroundColor:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->backgroundColor:I

    move-object/from16 v0, p3

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->windowColor:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->windowColor:I

    move-object/from16 v0, p3

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->edgeType:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeType:I

    move-object/from16 v0, p3

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->edgeColor:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textSizePx:F

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->bottomPaddingFraction:F

    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentTop:I

    move/from16 v0, p9

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentRight:I

    move/from16 v0, p10

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentRight:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    sub-int v20, v2, v4

    .local v20, "parentWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentTop:I

    sub-int v19, v2, v4

    .local v19, "parentHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    const/high16 v2, 0x3e000000    # 0.125f

    mul-float v2, v2, p4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v0, v2

    move/from16 v23, v0

    .local v23, "textPaddingX":I
    mul-int/lit8 v2, v23, 0x2

    sub-int v5, v20, v2

    .local v5, "availableWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueSize:F

    const/4 v4, 0x1

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_3

    int-to-float v2, v5

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueSize:F

    mul-float/2addr v2, v4

    float-to-int v5, v2

    :cond_3
    if-gtz v5, :cond_4

    const-string/jumbo v2, "SubtitlePainter"

    const-string/jumbo v4, "Skipped drawing subtitle cue (insufficient space)"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    if-nez v2, :cond_5

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .local v6, "textAlignment":Landroid/text/Layout$Alignment;
    :goto_1
    new-instance v2, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->spacingMult:F

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->spacingAdd:F

    const/4 v9, 0x1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v21

    .local v21, "textHeight":I
    const/4 v10, 0x0

    .local v10, "textWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v18

    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v2, v8

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .end local v6    # "textAlignment":Landroid/text/Layout$Alignment;
    .end local v10    # "textWidth":I
    .end local v17    # "i":I
    .end local v21    # "textHeight":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    goto :goto_1

    .restart local v6    # "textAlignment":Landroid/text/Layout$Alignment;
    .restart local v10    # "textWidth":I
    .restart local v17    # "i":I
    .restart local v21    # "textHeight":I
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueSize:F

    const/4 v4, 0x1

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_7

    if-ge v10, v5, :cond_7

    move v10, v5

    :cond_7
    mul-int/lit8 v2, v23, 0x2

    add-int/2addr v10, v2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cuePosition:F

    const/4 v4, 0x1

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_b

    move/from16 v0, v20

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cuePosition:F

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    add-int v15, v2, v4

    .local v15, "anchorPosition":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cuePositionAnchor:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_9

    sub-int v22, v15, v10

    .local v22, "textLeft":I
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    add-int v2, v22, v10

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentRight:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v24

    .end local v15    # "anchorPosition":I
    .local v24, "textRight":I
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLine:F

    const/4 v4, 0x1

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLineType:I

    if-nez v2, :cond_c

    move/from16 v0, v19

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLine:F

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentTop:I

    add-int v15, v2, v4

    .restart local v15    # "anchorPosition":I
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLineAnchor:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_e

    sub-int v25, v15, v21

    .local v25, "textTop":I
    :goto_6
    add-int v2, v25, v21

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    if-le v2, v4, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    sub-int v25, v2, v21

    .end local v15    # "anchorPosition":I
    :cond_8
    :goto_7
    sub-int v10, v24, v22

    new-instance v7, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->spacingMult:F

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->spacingAdd:F

    const/4 v14, 0x1

    move-object v8, v3

    move-object v11, v6

    invoke-direct/range {v7 .. v14}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textLeft:I

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textTop:I

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaddingX:I

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->drawLayout(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .end local v22    # "textLeft":I
    .end local v24    # "textRight":I
    .end local v25    # "textTop":I
    .restart local v15    # "anchorPosition":I
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cuePositionAnchor:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_a

    mul-int/lit8 v2, v15, 0x2

    sub-int/2addr v2, v10

    div-int/lit8 v22, v2, 0x2

    goto/16 :goto_3

    :cond_a
    move/from16 v22, v15

    goto/16 :goto_3

    .end local v15    # "anchorPosition":I
    :cond_b
    sub-int v2, v20, v10

    div-int/lit8 v22, v2, 0x2

    .restart local v22    # "textLeft":I
    add-int v24, v22, v10

    .restart local v24    # "textRight":I
    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v4

    sub-int v16, v2, v4

    .local v16, "firstLineHeight":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLine:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLine:F

    move/from16 v0, v16

    int-to-float v4, v0

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentTop:I

    add-int v15, v2, v4

    .restart local v15    # "anchorPosition":I
    goto/16 :goto_5

    .end local v15    # "anchorPosition":I
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLine:F

    move/from16 v0, v16

    int-to-float v4, v0

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    add-int v15, v2, v4

    .restart local v15    # "anchorPosition":I
    goto/16 :goto_5

    .end local v16    # "firstLineHeight":I
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLineAnchor:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_f

    mul-int/lit8 v2, v15, 0x2

    sub-int v2, v2, v21

    div-int/lit8 v25, v2, 0x2

    goto/16 :goto_6

    :cond_f
    move/from16 v25, v15

    goto/16 :goto_6

    .restart local v25    # "textTop":I
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentTop:I

    move/from16 v0, v25

    if-ge v0, v2, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentTop:I

    move/from16 v25, v0

    goto/16 :goto_7

    .end local v15    # "anchorPosition":I
    .end local v25    # "textTop":I
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    sub-int v2, v2, v21

    move/from16 v0, v19

    int-to-float v4, v0

    mul-float v4, v4, p5

    float-to-int v4, v4

    sub-int v25, v2, v4

    .restart local v25    # "textTop":I
    goto/16 :goto_7
.end method

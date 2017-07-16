.class Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;
.super Landroid/view/View;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockParagraphCell"
.end annotation


# instance fields
.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

.field private lastCreatedWidth:I

.field private textLayout:Landroid/text/StaticLayout;

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 3004
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 3005
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3006
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3061
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    if-nez v0, :cond_1

    .line 3074
    :cond_0
    :goto_0
    return-void

    .line 3064
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_2

    .line 3065
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3066
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3067
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textLayout:Landroid/text/StaticLayout;

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ArticleViewer;->access$6800(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V

    .line 3068
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3069
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3071
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;->level:I

    if-lez v0, :cond_0

    .line 3072
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    const/4 v2, 0x0

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->getMeasuredHeight()I

    move-result v4

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;->bottom:Z

    if-eqz v0, :cond_3

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_1
    sub-int v0, v4, v0

    int-to-float v4, v0

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$6900()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x41000000    # 8.0f

    const/high16 v4, 0x41900000    # 18.0f

    .line 3021
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 3022
    .local v1, "width":I
    const/4 v0, 0x0

    .line 3024
    .local v0, "height":I
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    if-eqz v2, :cond_6

    .line 3025
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;->level:I

    if-nez v2, :cond_3

    .line 3026
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    if-eqz v2, :cond_2

    .line 3027
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textY:I

    .line 3031
    :goto_0
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textX:I

    .line 3036
    :goto_1
    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->lastCreatedWidth:I

    if-eq v2, v1, :cond_1

    .line 3037
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-eqz v2, :cond_4

    .line 3038
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v1, v4

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textX:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    invoke-static {v2, v7, v3, v4, v5}, Lorg/telegram/ui/ArticleViewer;->access$6700(Lorg/telegram/ui/ArticleViewer;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textLayout:Landroid/text/StaticLayout;

    .line 3042
    :cond_0
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_1

    .line 3043
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    .line 3044
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;->level:I

    if-lez v2, :cond_5

    .line 3045
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 3056
    :cond_1
    :goto_3
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->setMeasuredDimension(II)V

    .line 3057
    return-void

    .line 3029
    :cond_2
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textY:I

    goto :goto_0

    .line 3033
    :cond_3
    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textY:I

    .line 3034
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;->level:I

    mul-int/lit8 v2, v2, 0xe

    add-int/lit8 v2, v2, 0x12

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textX:I

    goto :goto_1

    .line 3039
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    if-eqz v2, :cond_0

    .line 3040
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v1, v4

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textX:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    invoke-static {v2, v7, v3, v4, v5}, Lorg/telegram/ui/ArticleViewer;->access$6700(Lorg/telegram/ui/ArticleViewer;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textLayout:Landroid/text/StaticLayout;

    goto :goto_2

    .line 3047
    :cond_5
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_3

    .line 3053
    :cond_6
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3016
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textLayout:Landroid/text/StaticLayout;

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textX:I

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textY:I

    move-object v1, p1

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->access$6600(Lorg/telegram/ui/ArticleViewer;Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;)V
    .locals 1
    .param p1, "block"    # Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    .prologue
    .line 3009
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    .line 3010
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->lastCreatedWidth:I

    .line 3011
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->requestLayout()V

    .line 3012
    return-void
.end method

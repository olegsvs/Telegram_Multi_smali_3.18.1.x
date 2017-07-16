.class Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;
.super Landroid/view/View;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockPreformattedCell"
.end annotation


# instance fields
.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

.field private lastCreatedWidth:I

.field private textLayout:Landroid/text/StaticLayout;

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 4572
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 4573
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4574
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x41000000    # 8.0f

    .line 4604
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    if-nez v0, :cond_1

    .line 4614
    :cond_0
    :goto_0
    return-void

    .line 4607
    :cond_1
    const/4 v1, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->getMeasuredHeight()I

    move-result v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$9300()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4608
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    .line 4609
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4610
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4611
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4612
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 4584
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 4585
    .local v1, "width":I
    const/4 v0, 0x0

    .line 4587
    .local v0, "height":I
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    if-eqz v2, :cond_1

    .line 4588
    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->lastCreatedWidth:I

    if-eq v2, v1, :cond_0

    .line 4589
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v5, v1, v5

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    invoke-static {v2, v3, v4, v5, v6}, Lorg/telegram/ui/ArticleViewer;->access$6700(Lorg/telegram/ui/ArticleViewer;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->textLayout:Landroid/text/StaticLayout;

    .line 4590
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_0

    .line 4591
    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 4599
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->setMeasuredDimension(II)V

    .line 4600
    return-void

    .line 4596
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;)V
    .locals 1
    .param p1, "block"    # Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    .prologue
    .line 4577
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    .line 4578
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->lastCreatedWidth:I

    .line 4579
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->requestLayout()V

    .line 4580
    return-void
.end method

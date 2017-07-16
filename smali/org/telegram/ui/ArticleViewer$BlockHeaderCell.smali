.class Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;
.super Landroid/view/View;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockHeaderCell"
.end annotation


# instance fields
.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

.field private lastCreatedWidth:I

.field private textLayout:Landroid/text/StaticLayout;

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 3901
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 3902
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3896
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->textX:I

    .line 3897
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->textY:I

    .line 3903
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3938
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    if-nez v0, :cond_1

    .line 3948
    :cond_0
    :goto_0
    return-void

    .line 3941
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    .line 3942
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3943
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->textX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3944
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->textLayout:Landroid/text/StaticLayout;

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ArticleViewer;->access$6800(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V

    .line 3945
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3946
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 3918
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 3919
    .local v1, "width":I
    const/4 v0, 0x0

    .line 3921
    .local v0, "height":I
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    if-eqz v2, :cond_1

    .line 3922
    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->lastCreatedWidth:I

    if-eq v2, v1, :cond_0

    .line 3923
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    const/high16 v5, 0x42100000    # 36.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v5, v1, v5

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    invoke-static {v2, v3, v4, v5, v6}, Lorg/telegram/ui/ArticleViewer;->access$6700(Lorg/telegram/ui/ArticleViewer;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->textLayout:Landroid/text/StaticLayout;

    .line 3924
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_0

    .line 3925
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 3933
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->setMeasuredDimension(II)V

    .line 3934
    return-void

    .line 3930
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3913
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->textLayout:Landroid/text/StaticLayout;

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->textX:I

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->textY:I

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

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;)V
    .locals 1
    .param p1, "block"    # Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    .prologue
    .line 3906
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    .line 3907
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->lastCreatedWidth:I

    .line 3908
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->requestLayout()V

    .line 3909
    return-void
.end method

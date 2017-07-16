.class Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;
.super Landroid/view/View;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockBlockquoteCell"
.end annotation


# instance fields
.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

.field private lastCreatedWidth:I

.field private textLayout:Landroid/text/StaticLayout;

.field private textLayout2:Landroid/text/StaticLayout;

.field private textX:I

.field private textY:I

.field private textY2:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 4122
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 4123
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4117
    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textX:I

    .line 4118
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textY:I

    .line 4124
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x40c00000    # 6.0f

    .line 4167
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    if-nez v0, :cond_0

    .line 4185
    :goto_0
    return-void

    .line 4170
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1

    .line 4171
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4172
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4173
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout:Landroid/text/StaticLayout;

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ArticleViewer;->access$6800(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V

    .line 4174
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4175
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4177
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout2:Landroid/text/StaticLayout;

    if-eqz v0, :cond_2

    .line 4178
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4179
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textY2:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4180
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout2:Landroid/text/StaticLayout;

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ArticleViewer;->access$6800(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V

    .line 4181
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout2:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4182
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4184
    :cond_2
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->getMeasuredHeight()I

    move-result v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$6900()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x42480000    # 50.0f

    const/high16 v6, 0x41000000    # 8.0f

    .line 4139
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 4140
    .local v1, "width":I
    const/4 v0, 0x0

    .line 4142
    .local v0, "height":I
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    if-eqz v2, :cond_3

    .line 4143
    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->lastCreatedWidth:I

    if-eq v2, v1, :cond_2

    .line 4144
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v1, v4

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    invoke-static {v2, v8, v3, v4, v5}, Lorg/telegram/ui/ArticleViewer;->access$6700(Lorg/telegram/ui/ArticleViewer;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout:Landroid/text/StaticLayout;

    .line 4145
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_0

    .line 4146
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 4148
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v1, v4

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    invoke-static {v2, v8, v3, v4, v5}, Lorg/telegram/ui/ArticleViewer;->access$6700(Lorg/telegram/ui/ArticleViewer;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout2:Landroid/text/StaticLayout;

    .line 4149
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout2:Landroid/text/StaticLayout;

    if-eqz v2, :cond_1

    .line 4150
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textY2:I

    .line 4151
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout2:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 4153
    :cond_1
    if-eqz v0, :cond_2

    .line 4154
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 4162
    :cond_2
    :goto_0
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->setMeasuredDimension(II)V

    .line 4163
    return-void

    .line 4159
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4134
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout:Landroid/text/StaticLayout;

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textX:I

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textY:I

    move-object v1, p1

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->access$6600(Lorg/telegram/ui/ArticleViewer;Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout2:Landroid/text/StaticLayout;

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textX:I

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textY2:I

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

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;)V
    .locals 1
    .param p1, "block"    # Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    .prologue
    .line 4127
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    .line 4128
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->lastCreatedWidth:I

    .line 4129
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->requestLayout()V

    .line 4130
    return-void
.end method

.class public Lorg/telegram/ui/Cells/HashtagSearchCell;
.super Landroid/widget/TextView;
.source "HashtagSearchCell.java"


# instance fields
.field private needDivider:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x41800000    # 16.0f

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 29
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/HashtagSearchCell;->setGravity(I)V

    .line 30
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p0, v0, v2, v1, v2}, Lorg/telegram/ui/Cells/HashtagSearchCell;->setPadding(IIII)V

    .line 31
    const/4 v0, 0x1

    const/high16 v1, 0x41880000    # 17.0f

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/HashtagSearchCell;->setTextSize(IF)V

    .line 32
    const-string/jumbo v0, "windowBackgroundWhiteBlackText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/HashtagSearchCell;->setTextColor(I)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 55
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/HashtagSearchCell;->needDivider:Z

    if-eqz v0, :cond_0

    .line 56
    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/HashtagSearchCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/HashtagSearchCell;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/HashtagSearchCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 58
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 49
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/HashtagSearchCell;->setMeasuredDimension(II)V

    .line 50
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/HashtagSearchCell;->setBackgroundColor(I)V

    .line 37
    return-void
.end method

.method public setDividerColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 41
    return-void
.end method

.method public setNeedDivider(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/HashtagSearchCell;->needDivider:Z

    .line 45
    return-void
.end method

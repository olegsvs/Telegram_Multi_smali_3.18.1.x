.class Lorg/telegram/ui/ArticleViewer$BlockDividerCell;
.super Landroid/view/View;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockDividerCell"
.end annotation


# instance fields
.field private rect:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 3955
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockDividerCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 3956
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3953
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockDividerCell;->rect:Landroid/graphics/RectF;

    .line 3957
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$9100()Landroid/graphics/Paint;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3958
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$9102(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 3959
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$9100()Landroid/graphics/Paint;

    move-result-object v0

    const v1, -0x322e2b

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3961
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 3970
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockDividerCell;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v0, v1, 0x3

    .line 3971
    .local v0, "width":I
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockDividerCell;->rect:Landroid/graphics/RectF;

    int-to-float v2, v0

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    mul-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3972
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockDividerCell;->rect:Landroid/graphics/RectF;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$9100()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3973
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 3965
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ArticleViewer$BlockDividerCell;->setMeasuredDimension(II)V

    .line 3966
    return-void
.end method

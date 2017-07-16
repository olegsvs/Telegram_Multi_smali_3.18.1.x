.class Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$4;
.super Landroid/view/View;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

.field final synthetic val$this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 3715
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$4;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$4;->val$this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x40a00000    # 5.0f

    .line 3718
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$4;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$8500(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    move-result-object v4

    if-nez v4, :cond_1

    .line 3728
    :cond_0
    return-void

    .line 3721
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$4;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$8800(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Landroid/support/v4/view/ViewPager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    .line 3722
    .local v3, "selected":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$4;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$8500(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 3723
    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41500000    # 13.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    mul-int/2addr v5, v0

    add-int v1, v4, v5

    .line 3724
    .local v1, "cx":I
    if-ne v3, v0, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$4;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    iget-object v4, v4, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->access$8900(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3725
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v1, v4

    const/4 v5, 0x0

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v1

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3726
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3722
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3724
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$4;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    iget-object v4, v4, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->access$9000(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1
.end method

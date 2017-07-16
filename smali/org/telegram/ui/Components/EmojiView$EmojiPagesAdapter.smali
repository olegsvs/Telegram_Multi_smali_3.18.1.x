.class Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "EmojiView.java"

# interfaces
.implements Lorg/telegram/ui/Components/PagerSlidingTabStrip$IconTabProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmojiPagesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .prologue
    .line 2289
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p2, "x1"    # Lorg/telegram/ui/Components/EmojiView$1;

    .prologue
    .line 2289
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    return-void
.end method


# virtual methods
.method public customOnDraw(Landroid/graphics/Canvas;I)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "position"    # I

    .prologue
    .line 2311
    const/4 v2, 0x6

    if-ne p2, v2, :cond_0

    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getUnreadStickerSets()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$7000(Lorg/telegram/ui/Components/EmojiView;)Landroid/graphics/Paint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2312
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/high16 v3, 0x41100000    # 9.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int v0, v2, v3

    .line 2313
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v1, v2, v3

    .line 2314
    .local v1, "y":I
    int-to-float v2, v0

    int-to-float v3, v1

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$7000(Lorg/telegram/ui/Components/EmojiView;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2316
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_0
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 2293
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 2294
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$6700(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;

    move-result-object v0

    .line 2298
    .local v0, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2299
    return-void

    .line 2296
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$6800(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 2302
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6800(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPageIconDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2306
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6900(Lorg/telegram/ui/Components/EmojiView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 2320
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 2321
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$6700(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;

    move-result-object v0

    .line 2325
    .local v0, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2326
    return-object v0

    .line 2323
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$6800(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 2330
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 2335
    if-eqz p1, :cond_0

    .line 2336
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2338
    :cond_0
    return-void
.end method

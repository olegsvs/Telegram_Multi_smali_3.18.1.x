.class Lorg/telegram/ui/Components/TabsView$5;
.super Ljava/lang/Object;
.source "TabsView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TabsView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private loop:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/TabsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/TabsView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/TabsView;

    .prologue
    .line 336
    iput-object p1, p0, Lorg/telegram/ui/Components/TabsView$5;->this$0:Lorg/telegram/ui/Components/TabsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 357
    if-nez p1, :cond_1

    .line 358
    iget-boolean v0, p0, Lorg/telegram/ui/Components/TabsView$5;->loop:Z

    if-eqz v0, :cond_0

    .line 359
    new-instance v0, Lorg/telegram/ui/Components/TabsView$5$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/TabsView$5$1;-><init>(Lorg/telegram/ui/Components/TabsView$5;)V

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 372
    iput-boolean v1, p0, Lorg/telegram/ui/Components/TabsView$5;->loop:Z

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    if-ne p1, v0, :cond_4

    .line 375
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->plusInfiniteTabsSwipe:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/TabsView$5;->this$0:Lorg/telegram/ui/Components/TabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/TabsView;->access$400(Lorg/telegram/ui/Components/TabsView;)I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/TabsView$5;->this$0:Lorg/telegram/ui/Components/TabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/TabsView;->access$400(Lorg/telegram/ui/Components/TabsView;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/TabsView$5;->this$0:Lorg/telegram/ui/Components/TabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/TabsView;->access$600(Lorg/telegram/ui/Components/TabsView;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_3

    :cond_2
    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/Components/TabsView$5;->loop:Z

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 376
    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 377
    iput-boolean v1, p0, Lorg/telegram/ui/Components/TabsView$5;->loop:Z

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 342
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 347
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView$5;->this$0:Lorg/telegram/ui/Components/TabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/TabsView;->access$100(Lorg/telegram/ui/Components/TabsView;)Lorg/telegram/ui/Components/TabsView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView$5;->this$0:Lorg/telegram/ui/Components/TabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/TabsView;->access$100(Lorg/telegram/ui/Components/TabsView;)Lorg/telegram/ui/Components/TabsView$Listener;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView$5;->this$0:Lorg/telegram/ui/Components/TabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/TabsView;->access$200(Lorg/telegram/ui/Components/TabsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/TabsView$Tab;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TabsView$Tab;->getType()I

    move-result v0

    invoke-interface {v1, p1, v0}, Lorg/telegram/ui/Components/TabsView$Listener;->onPageSelected(II)V

    .line 350
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView$5;->this$0:Lorg/telegram/ui/Components/TabsView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/TabsView;->access$402(Lorg/telegram/ui/Components/TabsView;I)I

    .line 351
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView$5;->this$0:Lorg/telegram/ui/Components/TabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/TabsView;->access$500(Lorg/telegram/ui/Components/TabsView;)V

    .line 352
    return-void
.end method

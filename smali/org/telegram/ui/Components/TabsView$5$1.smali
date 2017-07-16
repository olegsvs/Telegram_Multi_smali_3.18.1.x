.class Lorg/telegram/ui/Components/TabsView$5$1;
.super Ljava/lang/Object;
.source "TabsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TabsView$5;->onPageScrollStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/TabsView$5;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/TabsView$5;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/TabsView$5;

    .prologue
    .line 359
    iput-object p1, p0, Lorg/telegram/ui/Components/TabsView$5$1;->this$1:Lorg/telegram/ui/Components/TabsView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView$5$1;->this$1:Lorg/telegram/ui/Components/TabsView$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/TabsView$5;->this$0:Lorg/telegram/ui/Components/TabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/TabsView;->access$600(Lorg/telegram/ui/Components/TabsView;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView$5$1;->this$1:Lorg/telegram/ui/Components/TabsView$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/TabsView$5;->this$0:Lorg/telegram/ui/Components/TabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/TabsView;->access$400(Lorg/telegram/ui/Components/TabsView;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView$5$1;->this$1:Lorg/telegram/ui/Components/TabsView$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/TabsView$5;->this$0:Lorg/telegram/ui/Components/TabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/TabsView;->access$600(Lorg/telegram/ui/Components/TabsView;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 363
    return-void

    .line 362
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

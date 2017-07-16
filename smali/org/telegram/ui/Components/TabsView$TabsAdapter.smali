.class Lorg/telegram/ui/Components/TabsView$TabsAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "TabsView.java"

# interfaces
.implements Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$IconTabProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/TabsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/TabsView;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/TabsView;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lorg/telegram/ui/Components/TabsView$TabsAdapter;->this$0:Lorg/telegram/ui/Components/TabsView;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/TabsView;Lorg/telegram/ui/Components/TabsView$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/ui/Components/TabsView;
    .param p2, "x1"    # Lorg/telegram/ui/Components/TabsView$1;

    .prologue
    .line 555
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TabsView$TabsAdapter;-><init>(Lorg/telegram/ui/Components/TabsView;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 585
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 586
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView$TabsAdapter;->this$0:Lorg/telegram/ui/Components/TabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/TabsView;->access$200(Lorg/telegram/ui/Components/TabsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPageIconResId(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 602
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView$TabsAdapter;->this$0:Lorg/telegram/ui/Components/TabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/TabsView;->access$200(Lorg/telegram/ui/Components/TabsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/TabsView$Tab;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TabsView$Tab;->getRes()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 555
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/TabsView$TabsAdapter;->getPageTitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 607
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView$TabsAdapter;->this$0:Lorg/telegram/ui/Components/TabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/TabsView;->access$200(Lorg/telegram/ui/Components/TabsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/TabsView$Tab;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TabsView$Tab;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 578
    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 579
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 580
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 590
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 570
    invoke-super {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 571
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView$TabsAdapter;->this$0:Lorg/telegram/ui/Components/TabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/TabsView;->access$700(Lorg/telegram/ui/Components/TabsView;)Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView$TabsAdapter;->this$0:Lorg/telegram/ui/Components/TabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/TabsView;->access$700(Lorg/telegram/ui/Components/TabsView;)Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 574
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 595
    if-eqz p1, :cond_0

    .line 596
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 598
    :cond_0
    return-void
.end method

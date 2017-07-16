.class Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PageListener;
.super Ljava/lang/Object;
.source "PlusPagerSlidingTabStrip.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;
    .param p2, "x1"    # Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$1;

    .prologue
    .line 556
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PageListener;-><init>(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 579
    if-nez p1, :cond_0

    .line 581
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusTabTitlesMode:Z

    if-eqz v0, :cond_2

    .line 582
    iget-object v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    iget-object v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    invoke-static {v1}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->access$200(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->access$400(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;IF)V

    .line 587
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    iget-object v0, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 588
    iget-object v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    iget-object v0, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 590
    :cond_1
    return-void

    .line 584
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    iget-object v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    invoke-static {v1}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->access$200(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->access$500(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;II)V

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 562
    iget-object v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->access$102(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;I)I

    .line 563
    iget-object v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->access$702(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;F)F

    .line 565
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusTabTitlesMode:Z

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->access$400(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;IF)V

    .line 570
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->invalidate()V

    .line 571
    iget-object v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    iget-object v0, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    iget-object v0, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 574
    :cond_0
    return-void

    .line 568
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    iget-object v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    invoke-static {v1}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->access$800(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->access$500(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;II)V

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 595
    iget-object v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    iget-object v0, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    iget-object v0, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 602
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->changeTabsColor(I)V

    .line 603
    iget-object v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->access$302(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;I)I

    .line 604
    return-void
.end method

.class Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$2;
.super Ljava/lang/Object;
.source "PlusPagerSlidingTabStrip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->addTabWithCounter(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$2;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    iput p2, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$2;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    invoke-static {v0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->access$200(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$2;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    invoke-static {v0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->access$200(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$2;->val$position:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method

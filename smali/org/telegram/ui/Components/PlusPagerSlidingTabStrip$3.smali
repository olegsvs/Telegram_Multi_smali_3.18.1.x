.class Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$3;
.super Ljava/lang/Object;
.source "PlusPagerSlidingTabStrip.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 262
    iput-object p1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$3;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    iput p2, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 264
    iget-object v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$3;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    invoke-static {v0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->access$600(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;)Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PlusScrollSlidingTabStripDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$3;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    invoke-static {v0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->access$600(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;)Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PlusScrollSlidingTabStripDelegate;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$3;->val$position:I

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PlusScrollSlidingTabStripDelegate;->onTabLongClick(I)V

    .line 267
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

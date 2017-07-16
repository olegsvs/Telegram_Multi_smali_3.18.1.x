.class Lorg/telegram/ui/Components/TabsView$4;
.super Ljava/lang/Object;
.source "TabsView.java"

# interfaces
.implements Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PlusScrollSlidingTabStripDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TabsView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/TabsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/TabsView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/TabsView;

    .prologue
    .line 318
    iput-object p1, p0, Lorg/telegram/ui/Components/TabsView$4;->this$0:Lorg/telegram/ui/Components/TabsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabLongClick(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 322
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->plusSelectedTab:I

    if-ne v0, p1, :cond_0

    .line 323
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView$4;->this$0:Lorg/telegram/ui/Components/TabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/TabsView;->access$100(Lorg/telegram/ui/Components/TabsView;)Lorg/telegram/ui/Components/TabsView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView$4;->this$0:Lorg/telegram/ui/Components/TabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/TabsView;->access$100(Lorg/telegram/ui/Components/TabsView;)Lorg/telegram/ui/Components/TabsView$Listener;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView$4;->this$0:Lorg/telegram/ui/Components/TabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/TabsView;->access$200(Lorg/telegram/ui/Components/TabsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/TabsView$Tab;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TabsView$Tab;->getType()I

    move-result v0

    invoke-interface {v1, p1, v0}, Lorg/telegram/ui/Components/TabsView$Listener;->onTabLongClick(II)V

    .line 327
    :cond_0
    return-void
.end method

.method public onTabsUpdated()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView$4;->this$0:Lorg/telegram/ui/Components/TabsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TabsView;->forceUpdateTabCounters()V

    .line 332
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView$4;->this$0:Lorg/telegram/ui/Components/TabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/TabsView;->access$300(Lorg/telegram/ui/Components/TabsView;)V

    .line 333
    return-void
.end method

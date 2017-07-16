.class Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate$1;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "RecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;

    .prologue
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getLayoutManager()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getLayoutManager()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getLayoutManager()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getLayoutManager()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

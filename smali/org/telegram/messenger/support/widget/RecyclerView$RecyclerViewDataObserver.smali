.class Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;
.super Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerViewDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/widget/RecyclerView;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 4892
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 4893
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 4897
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4898
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z

    .line 4900
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->setDataSetChangedAfterLayout()V

    .line 4901
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4902
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    .line 4904
    :cond_0
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 4908
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4909
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/AdapterHelper;->onItemRangeChanged(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4910
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 4912
    :cond_0
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 4916
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4917
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/widget/AdapterHelper;->onItemRangeInserted(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4918
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 4920
    :cond_0
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 2
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 4932
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4933
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/AdapterHelper;->onItemRangeMoved(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4934
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 4936
    :cond_0
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 4924
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4925
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/widget/AdapterHelper;->onItemRangeRemoved(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4926
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 4928
    :cond_0
    return-void
.end method

.method triggerUpdateProcessor()V
    .locals 2

    .prologue
    .line 4939
    sget-boolean v0, Lorg/telegram/messenger/support/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 4940
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 4945
    :goto_0
    return-void

    .line 4942
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 4943
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    goto :goto_0
.end method

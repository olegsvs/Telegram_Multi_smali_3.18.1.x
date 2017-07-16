.class Lorg/telegram/ui/PlusManageTabsActivity$SimpleItemTouchHelperCallback;
.super Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;
.source "PlusManageTabsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PlusManageTabsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleItemTouchHelperCallback"
.end annotation


# instance fields
.field private final mAdapter:Lorg/telegram/ui/PlusManageTabsActivity$ItemTouchHelperAdapter;

.field final synthetic this$0:Lorg/telegram/ui/PlusManageTabsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PlusManageTabsActivity;Lorg/telegram/ui/PlusManageTabsActivity$ItemTouchHelperAdapter;)V
    .locals 0
    .param p2, "adapter"    # Lorg/telegram/ui/PlusManageTabsActivity$ItemTouchHelperAdapter;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/PlusManageTabsActivity$SimpleItemTouchHelperCallback;->this$0:Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/PlusManageTabsActivity$SimpleItemTouchHelperCallback;->mAdapter:Lorg/telegram/ui/PlusManageTabsActivity$ItemTouchHelperAdapter;

    return-void
.end method


# virtual methods
.method public clearView(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->clearView(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/PlusManageTabsActivity$ItemTouchHelperViewHolder;

    .local v0, "itemViewHolder":Lorg/telegram/ui/PlusManageTabsActivity$ItemTouchHelperViewHolder;
    invoke-interface {v0}, Lorg/telegram/ui/PlusManageTabsActivity$ItemTouchHelperViewHolder;->onItemClear()V

    return-void
.end method

.method public getMovementFlags(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I
    .locals 3
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v0, 0x3

    .local v0, "dragFlags":I
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/PlusManageTabsActivity$SimpleItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result v1

    return v1
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public onMove(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 3
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "source"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$SimpleItemTouchHelperCallback;->mAdapter:Lorg/telegram/ui/PlusManageTabsActivity$ItemTouchHelperAdapter;

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/telegram/ui/PlusManageTabsActivity$ItemTouchHelperAdapter;->swapElements(II)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSelectedChanged(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .prologue
    if-eqz p2, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/PlusManageTabsActivity$ItemTouchHelperViewHolder;

    .local v0, "itemViewHolder":Lorg/telegram/ui/PlusManageTabsActivity$ItemTouchHelperViewHolder;
    invoke-interface {v0}, Lorg/telegram/ui/PlusManageTabsActivity$ItemTouchHelperViewHolder;->onItemSelected()V

    .end local v0    # "itemViewHolder":Lorg/telegram/ui/PlusManageTabsActivity$ItemTouchHelperViewHolder;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "i"    # I

    .prologue
    return-void
.end method

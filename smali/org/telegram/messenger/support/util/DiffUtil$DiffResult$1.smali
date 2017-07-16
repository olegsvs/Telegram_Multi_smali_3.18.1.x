.class Lorg/telegram/messenger/support/util/DiffUtil$DiffResult$1;
.super Ljava/lang/Object;
.source "DiffUtil.java"

# interfaces
.implements Lorg/telegram/messenger/support/util/ListUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;

.field final synthetic val$adapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;

    .prologue
    iput-object p1, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult$1;->this$0:Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;

    iput-object p2, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult$1;->val$adapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(IILjava/lang/Object;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult$1;->val$adapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onInserted(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult$1;->val$adapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onMoved(II)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult$1;->val$adapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult$1;->val$adapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

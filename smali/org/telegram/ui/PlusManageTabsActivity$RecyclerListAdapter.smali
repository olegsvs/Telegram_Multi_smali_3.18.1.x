.class Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;
.super Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
.source "PlusManageTabsActivity.java"

# interfaces
.implements Lorg/telegram/ui/PlusManageTabsActivity$ItemTouchHelperAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PlusManageTabsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/messenger/support/widget/RecyclerView$Adapter",
        "<",
        "Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;",
        ">;",
        "Lorg/telegram/ui/PlusManageTabsActivity$ItemTouchHelperAdapter;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PlusManageTabsActivity;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/PlusManageTabsActivity;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;->this$0:Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/PlusManageTabsActivity;Lorg/telegram/ui/PlusManageTabsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/ui/PlusManageTabsActivity;
    .param p2, "x1"    # Lorg/telegram/ui/PlusManageTabsActivity$1;

    .prologue
    invoke-direct {p0, p1}, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;-><init>(Lorg/telegram/ui/PlusManageTabsActivity;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;->this$0:Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusManageTabsActivity;->access$000(Lorg/telegram/ui/PlusManageTabsActivity;)[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    check-cast p1, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;->onBindViewHolder(Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;
    .param p2, "position"    # I

    .prologue
    iget-object v0, p1, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;->tabCell:Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->tabTitles:[Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;->this$0:Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-static {v2}, Lorg/telegram/ui/PlusManageTabsActivity;->access$000(Lorg/telegram/ui/PlusManageTabsActivity;)[I

    move-result-object v2

    aget v2, v2, p2

    aget-object v1, v1, v2

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->tabIcons:[I

    iget-object v3, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;->this$0:Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PlusManageTabsActivity;->access$000(Lorg/telegram/ui/PlusManageTabsActivity;)[I

    move-result-object v3

    aget v3, v3, p2

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->setTextAndIcon(Ljava/lang/String;I)V

    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;->this$0:Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusManageTabsActivity;->access$100(Lorg/telegram/ui/PlusManageTabsActivity;)[I

    move-result-object v0

    aget v0, v0, p2

    if-gez v0, :cond_0

    iget-object v0, p1, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;->tabCell:Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;

    iget-object v1, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;->this$0:Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusManageTabsActivity;->access$200(Lorg/telegram/ui/PlusManageTabsActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->setTextColor(I)V

    iget-object v0, p1, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;->tabCell:Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;

    iget-object v1, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;->this$0:Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusManageTabsActivity;->access$200(Lorg/telegram/ui/PlusManageTabsActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->setIconColor(I)V

    iget-object v0, p1, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;->tabCell:Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;->tabCell:Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;

    iget-object v1, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;->this$0:Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusManageTabsActivity;->access$300(Lorg/telegram/ui/PlusManageTabsActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->setTextColor(I)V

    iget-object v0, p1, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;->tabCell:Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;

    iget-object v1, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;->this$0:Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusManageTabsActivity;->access$300(Lorg/telegram/ui/PlusManageTabsActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->setIconColor(I)V

    iget-object v0, p1, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;->tabCell:Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->setChecked(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    new-instance v0, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;

    iget-object v1, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;->this$0:Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;-><init>(Lorg/telegram/ui/PlusManageTabsActivity;Landroid/content/Context;)V

    .local v0, "view":Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;-><init>(Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public swapElements(II)V
    .locals 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    const/4 v5, 0x1

    if-eq p1, p2, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;->this$0:Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-static {v4, v5}, Lorg/telegram/ui/PlusManageTabsActivity;->access$402(Lorg/telegram/ui/PlusManageTabsActivity;Z)Z

    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;->this$0:Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-static {v4}, Lorg/telegram/ui/PlusManageTabsActivity;->access$000(Lorg/telegram/ui/PlusManageTabsActivity;)[I

    move-result-object v4

    aget v1, v4, p2

    .local v1, "t2":I
    iget-object v4, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;->this$0:Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-static {v4}, Lorg/telegram/ui/PlusManageTabsActivity;->access$000(Lorg/telegram/ui/PlusManageTabsActivity;)[I

    move-result-object v4

    aget v0, v4, p1

    .local v0, "t1":I
    iget-object v4, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;->this$0:Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-static {v4}, Lorg/telegram/ui/PlusManageTabsActivity;->access$000(Lorg/telegram/ui/PlusManageTabsActivity;)[I

    move-result-object v4

    aput v1, v4, p1

    iget-object v4, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;->this$0:Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-static {v4}, Lorg/telegram/ui/PlusManageTabsActivity;->access$000(Lorg/telegram/ui/PlusManageTabsActivity;)[I

    move-result-object v4

    aput v0, v4, p2

    iget-object v4, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;->this$0:Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-static {v4}, Lorg/telegram/ui/PlusManageTabsActivity;->access$100(Lorg/telegram/ui/PlusManageTabsActivity;)[I

    move-result-object v4

    aget v3, v4, p2

    .local v3, "v2":I
    iget-object v4, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;->this$0:Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-static {v4}, Lorg/telegram/ui/PlusManageTabsActivity;->access$100(Lorg/telegram/ui/PlusManageTabsActivity;)[I

    move-result-object v4

    aget v2, v4, p1

    .local v2, "v1":I
    if-eq v2, v3, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;->this$0:Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-static {v4, v5}, Lorg/telegram/ui/PlusManageTabsActivity;->access$502(Lorg/telegram/ui/PlusManageTabsActivity;Z)Z

    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;->this$0:Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-static {v4}, Lorg/telegram/ui/PlusManageTabsActivity;->access$100(Lorg/telegram/ui/PlusManageTabsActivity;)[I

    move-result-object v4

    aput v3, v4, p1

    iget-object v4, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;->this$0:Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-static {v4}, Lorg/telegram/ui/PlusManageTabsActivity;->access$100(Lorg/telegram/ui/PlusManageTabsActivity;)[I

    move-result-object v4

    aput v2, v4, p2

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;->notifyItemMoved(II)V

    return-void
.end method

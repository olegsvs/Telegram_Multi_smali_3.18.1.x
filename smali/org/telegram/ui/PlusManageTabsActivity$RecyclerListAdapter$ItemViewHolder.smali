.class public Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;
.super Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.source "PlusManageTabsActivity.java"

# interfaces
.implements Lorg/telegram/ui/PlusManageTabsActivity$ItemTouchHelperViewHolder;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemViewHolder"
.end annotation


# instance fields
.field public final tabCell:Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;

.field final synthetic this$1:Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;Landroid/view/View;)V
    .locals 2
    .param p1, "this$1"    # Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 410
    iput-object p1, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;->this$1:Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;

    .line 411
    invoke-direct {p0, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 412
    check-cast p2, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;

    .end local p2    # "itemView":Landroid/view/View;
    iput-object p2, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;->tabCell:Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;

    .line 413
    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;->tabCell:Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/CheckBoxSquare;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;->tabCell:Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 431
    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;->this$1:Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;->this$0:Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-static {v0, v4}, Lorg/telegram/ui/PlusManageTabsActivity;->access$502(Lorg/telegram/ui/PlusManageTabsActivity;Z)Z

    .line 432
    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;->this$1:Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;->this$0:Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusManageTabsActivity;->access$100(Lorg/telegram/ui/PlusManageTabsActivity;)[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;->getPosition()I

    move-result v1

    aget v0, v0, v1

    if-ne v0, v2, :cond_0

    .line 433
    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;->tabCell:Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;

    iget-object v1, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;->this$1:Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;

    iget-object v1, v1, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;->this$0:Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusManageTabsActivity;->access$300(Lorg/telegram/ui/PlusManageTabsActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->setTextColor(I)V

    .line 434
    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;->tabCell:Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;

    iget-object v1, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;->this$1:Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;

    iget-object v1, v1, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;->this$0:Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusManageTabsActivity;->access$300(Lorg/telegram/ui/PlusManageTabsActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->setIconColor(I)V

    .line 435
    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;->tabCell:Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->setChecked(Z)V

    .line 436
    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;->this$1:Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;->this$0:Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusManageTabsActivity;->access$100(Lorg/telegram/ui/PlusManageTabsActivity;)[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;->getPosition()I

    move-result v1

    aput v3, v0, v1

    .line 443
    :goto_0
    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;->tabCell:Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;

    iget-object v1, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;->this$1:Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;

    iget-object v1, v1, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;->this$0:Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusManageTabsActivity;->access$200(Lorg/telegram/ui/PlusManageTabsActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->setTextColor(I)V

    .line 439
    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;->tabCell:Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;

    iget-object v1, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;->this$1:Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;

    iget-object v1, v1, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;->this$0:Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusManageTabsActivity;->access$200(Lorg/telegram/ui/PlusManageTabsActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->setIconColor(I)V

    .line 440
    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;->tabCell:Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;->setChecked(Z)V

    .line 441
    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;->this$1:Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;->this$0:Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusManageTabsActivity;->access$100(Lorg/telegram/ui/PlusManageTabsActivity;)[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;->getPosition()I

    move-result v1

    aput v2, v0, v1

    goto :goto_0
.end method

.method public onItemClear()V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 426
    return-void
.end method

.method public onItemSelected()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 421
    return-void
.end method

.class Lorg/telegram/ui/ChatActivity$16;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1766
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    const/high16 v9, 0x42400000    # 48.0f

    .line 1789
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/RecyclerListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v4

    .line 1790
    .local v4, "result":Z
    instance-of v7, p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v7, :cond_0

    move-object v0, p2

    .line 1791
    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 1792
    .local v0, "chatMessageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAvatarImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    .line 1793
    .local v2, "imageReceiver":Lorg/telegram/messenger/ImageReceiver;
    if-eqz v2, :cond_0

    .line 1794
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1795
    .local v5, "top":I
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedBottom()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1796
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$5800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    invoke-virtual {v7, p2}, Lorg/telegram/ui/Components/RecyclerListView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1797
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_1

    .line 1798
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$5800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/RecyclerListView;->findViewHolderForAdapterPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1799
    if-eqz v1, :cond_1

    .line 1800
    const/high16 v7, 0x447a0000    # 1000.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/ImageReceiver;->setImageY(I)V

    .line 1801
    invoke-virtual {v2, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1834
    .end local v0    # "chatMessageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v2    # "imageReceiver":Lorg/telegram/messenger/ImageReceiver;
    .end local v5    # "top":I
    :cond_0
    :goto_0
    return v4

    .line 1806
    .restart local v0    # "chatMessageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    .restart local v2    # "imageReceiver":Lorg/telegram/messenger/ImageReceiver;
    .restart local v5    # "top":I
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedTop()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1807
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$5800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    invoke-virtual {v7, p2}, Lorg/telegram/ui/Components/RecyclerListView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1808
    .restart local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_3

    .line 1810
    :cond_2
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$5800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/RecyclerListView;->findViewHolderForAdapterPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1811
    if-eqz v1, :cond_3

    .line 1812
    iget-object v7, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1813
    iget-object v7, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v7, v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v7, :cond_3

    iget-object v7, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedTop()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1822
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getLayoutHeight()I

    move-result v8

    add-int v6, v7, v8

    .line 1823
    .local v6, "y":I
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$5800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/RecyclerListView;->getHeight()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$5800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingBottom()I

    move-result v8

    sub-int v3, v7, v8

    .line 1824
    .local v3, "maxY":I
    if-le v6, v3, :cond_4

    .line 1825
    move v6, v3

    .line 1827
    :cond_4
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int v7, v6, v7

    if-ge v7, v5, :cond_5

    .line 1828
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int v6, v5, v7

    .line 1830
    :cond_5
    const/high16 v7, 0x42300000    # 44.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int v7, v6, v7

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/ImageReceiver;->setImageY(I)V

    .line 1831
    invoke-virtual {v2, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v7, 0x0

    .line 1769
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    .line 1770
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5, v7}, Lorg/telegram/ui/ChatActivity;->access$7402(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 1771
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$7500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->access$7600(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1772
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$16;->getChildCount()I

    move-result v2

    .line 1773
    .local v2, "childCount":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1774
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChatActivity$16;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1775
    .local v1, "child":Landroid/view/View;
    instance-of v5, v1, Lorg/telegram/ui/Cells/BotHelpCell;

    if-eqz v5, :cond_1

    .line 1776
    sub-int v3, p5, p3

    .line 1777
    .local v3, "height":I
    div-int/lit8 v5, v3, 0x2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v4, v5, v6

    .line 1778
    .local v4, "top":I
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v4, :cond_0

    .line 1779
    sub-int v5, p4, p2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v1, v7, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 1785
    .end local v0    # "a":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childCount":I
    .end local v3    # "height":I
    .end local v4    # "top":I
    :cond_0
    return-void

    .line 1773
    .restart local v0    # "a":I
    .restart local v1    # "child":Landroid/view/View;
    .restart local v2    # "childCount":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

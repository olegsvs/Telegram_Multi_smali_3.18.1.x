.class Lorg/telegram/ui/Components/EmojiView$19;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(ZZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 960
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 6
    .param p1, "page"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 963
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$2800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 964
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$4400(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ne p1, v3, :cond_2

    .line 965
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$2800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 966
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lorg/telegram/ui/Components/EmojiView$Listener;->onGifTab(Z)V

    .line 967
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$4500(Lorg/telegram/ui/Components/EmojiView;)V

    .line 989
    :cond_0
    :goto_0
    if-nez p1, :cond_7

    .line 990
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1015
    :cond_1
    :goto_1
    return-void

    .line 969
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$4600(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ne p1, v3, :cond_3

    .line 970
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$2900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 971
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$4700(Lorg/telegram/ui/Components/EmojiView;)V

    goto :goto_0

    .line 974
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$2800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    .line 975
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/telegram/ui/Components/EmojiView$Listener;->onGifTab(Z)V

    .line 976
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$2800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 977
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$2600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 978
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$4800(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getItemCount()I

    move-result v4

    if-eqz v4, :cond_4

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 979
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$4900(Lorg/telegram/ui/Components/EmojiView;)V

    .line 980
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$5000(Lorg/telegram/ui/Components/EmojiView;)V

    goto :goto_0

    :cond_4
    move v1, v2

    .line 978
    goto :goto_2

    .line 981
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$2900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 982
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$2900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 983
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$2600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 984
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$4800(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getItemCount()I

    move-result v4

    if-eqz v4, :cond_6

    :goto_3
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 985
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$5000(Lorg/telegram/ui/Components/EmojiView;)V

    goto/16 :goto_0

    :cond_6
    move v1, v2

    .line 984
    goto :goto_3

    .line 993
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$4400(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$4600(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-eq p1, v1, :cond_1

    .line 995
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$5100(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne p1, v1, :cond_9

    .line 996
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/messenger/support/widget/GridLayoutManager;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->scrollToPositionWithOffset(II)V

    .line 997
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1, v5, v2}, Lorg/telegram/ui/Components/EmojiView;->access$3700(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;I)V

    .line 998
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$4300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    move-result-object v2

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$5100(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$5100(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v1

    if-lez v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$5100(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v1

    :goto_4
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    goto/16 :goto_1

    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$5200(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v1

    goto :goto_4

    .line 1002
    :cond_9
    add-int/lit8 v1, p1, -0x1

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$5200(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v3

    sub-int v0, v1, v3

    .line 1003
    .local v0, "index":I
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$5300(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_a

    .line 1004
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1005
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Components/EmojiView$Listener;->onStickersSettingsClick()V

    goto/16 :goto_1

    .line 1009
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$5300(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_b

    .line 1010
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$5300(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 1012
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/messenger/support/widget/GridLayoutManager;

    move-result-object v3

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v4

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$5300(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getPositionForPack(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)I

    move-result v1

    invoke-virtual {v3, v1, v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1013
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1, v5, v2}, Lorg/telegram/ui/Components/EmojiView;->access$3700(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;I)V

    .line 1014
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$4900(Lorg/telegram/ui/Components/EmojiView;)V

    goto/16 :goto_1
.end method

.class Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$2;
.super Ljava/lang/Object;
.source "ShareAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

.field final synthetic val$result:Ljava/util/ArrayList;

.field final synthetic val$searchId:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    .prologue
    .line 858
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$2;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    iput p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$2;->val$searchId:I

    iput-object p3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$2;->val$result:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 861
    iget v8, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$2;->val$searchId:I

    iget-object v9, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$2;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    invoke-static {v9}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->access$2600(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;)I

    move-result v9

    if-eq v8, v9, :cond_1

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 864
    :cond_1
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v8, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$2;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_4

    .line 865
    iget-object v8, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$2;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;

    .line 866
    .local v4, "obj":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    iget-object v8, v4, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v8, :cond_3

    .line 867
    iget-object v5, v4, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    .line 868
    .local v5, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 864
    .end local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 869
    :cond_3
    iget-object v8, v4, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v8, :cond_2

    .line 870
    iget-object v2, v4, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 871
    .local v2, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-virtual {v8, v2, v6}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto :goto_2

    .line 874
    .end local v2    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v4    # "obj":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    :cond_4
    iget-object v8, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$2;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    invoke-static {v8}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->access$2900(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$2;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    move v1, v6

    .line 875
    .local v1, "becomeEmpty":Z
    :goto_3
    iget-object v8, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$2;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    invoke-static {v8}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->access$2900(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$2;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    move v3, v6

    .line 876
    .local v3, "isEmpty":Z
    :goto_4
    if-eqz v1, :cond_5

    .line 877
    iget-object v6, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$2;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    iget-object v6, v6, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object v8, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$2;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    iget-object v8, v8, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v8}, Lorg/telegram/ui/Components/ShareAlert;->access$2100(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v8

    invoke-static {v6, v8}, Lorg/telegram/ui/Components/ShareAlert;->access$2002(Lorg/telegram/ui/Components/ShareAlert;I)I

    .line 879
    :cond_5
    iget-object v6, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$2;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    iget-object v8, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$2;->val$result:Ljava/util/ArrayList;

    invoke-static {v6, v8}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->access$2902(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 880
    iget-object v6, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$2;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->notifyDataSetChanged()V

    .line 881
    if-nez v3, :cond_0

    if-nez v1, :cond_0

    iget-object v6, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$2;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    iget-object v6, v6, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/ShareAlert;->access$2000(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v6

    if-lez v6, :cond_0

    .line 882
    iget-object v6, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$2;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    iget-object v6, v6, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/ShareAlert;->access$2300(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/messenger/support/widget/GridLayoutManager;

    move-result-object v6

    iget-object v8, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$2;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    iget-object v8, v8, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v8}, Lorg/telegram/ui/Components/ShareAlert;->access$2000(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v8

    neg-int v8, v8

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->scrollToPositionWithOffset(II)V

    .line 883
    iget-object v6, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$2;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    iget-object v6, v6, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    const/16 v7, -0x3e8

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/ShareAlert;->access$2002(Lorg/telegram/ui/Components/ShareAlert;I)I

    goto/16 :goto_0

    .end local v1    # "becomeEmpty":Z
    .end local v3    # "isEmpty":Z
    :cond_6
    move v1, v7

    .line 874
    goto :goto_3

    .restart local v1    # "becomeEmpty":Z
    :cond_7
    move v3, v7

    .line 875
    goto :goto_4
.end method

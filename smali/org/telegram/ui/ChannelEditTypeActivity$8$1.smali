.class Lorg/telegram/ui/ChannelEditTypeActivity$8$1;
.super Ljava/lang/Object;
.source "ChannelEditTypeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditTypeActivity$8;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelEditTypeActivity$8;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditTypeActivity$8;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelEditTypeActivity$8;

    .prologue
    .line 403
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditTypeActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$8;

    iput-object p2, p0, Lorg/telegram/ui/ChannelEditTypeActivity$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 406
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditTypeActivity$8;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v3, v5}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$1202(Lorg/telegram/ui/ChannelEditTypeActivity;Z)Z

    .line 407
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-eqz v3, :cond_0

    .line 408
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditTypeActivity$8;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChannelEditTypeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditTypeActivity$8;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$1300(Lorg/telegram/ui/ChannelEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 412
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditTypeActivity$8;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$1400(Lorg/telegram/ui/ChannelEditTypeActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditTypeActivity$8;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$1300(Lorg/telegram/ui/ChannelEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 414
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditTypeActivity$8;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$1300(Lorg/telegram/ui/ChannelEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 415
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditTypeActivity$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_chats;

    .line 417
    .local v2, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_chats;
    const/4 v0, 0x0

    :goto_2
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 418
    new-instance v1, Lorg/telegram/ui/Cells/AdminedChannelCell;

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditTypeActivity$8;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChannelEditTypeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChannelEditTypeActivity$8$1$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChannelEditTypeActivity$8$1$1;-><init>(Lorg/telegram/ui/ChannelEditTypeActivity$8$1;)V

    invoke-direct {v1, v3, v4}, Lorg/telegram/ui/Cells/AdminedChannelCell;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    .line 459
    .local v1, "adminedChannelCell":Lorg/telegram/ui/Cells/AdminedChannelCell;
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_3

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Cells/AdminedChannelCell;->setChannel(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 460
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditTypeActivity$8;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$1300(Lorg/telegram/ui/ChannelEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditTypeActivity$8;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$1400(Lorg/telegram/ui/ChannelEditTypeActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$8;

    iget-object v4, v4, Lorg/telegram/ui/ChannelEditTypeActivity$8;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$1400(Lorg/telegram/ui/ChannelEditTypeActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v6, -0x1

    const/16 v7, 0x48

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v1, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 417
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v4, v5

    .line 459
    goto :goto_3

    .line 463
    .end local v1    # "adminedChannelCell":Lorg/telegram/ui/Cells/AdminedChannelCell;
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditTypeActivity$8;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$900(Lorg/telegram/ui/ChannelEditTypeActivity;)V

    goto/16 :goto_0
.end method

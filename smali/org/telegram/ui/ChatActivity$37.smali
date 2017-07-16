.class Lorg/telegram/ui/ChatActivity$37;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


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
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 2670
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$37;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 19
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 2673
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$37;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v14

    .line 2674
    .local v14, "object":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$37;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getResultStartPosition()I

    move-result v17

    .line 2675
    .local v17, "start":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$37;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getResultLength()I

    move-result v12

    .line 2676
    .local v12, "len":I
    instance-of v2, v14, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_4

    move-object/from16 v18, v14

    .line 2677
    check-cast v18, Lorg/telegram/tgnet/TLRPC$User;

    .line 2678
    .local v18, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v18, :cond_0

    .line 2679
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 2680
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$37;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v2, v0, v12, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->replaceWithText(IILjava/lang/CharSequence;)V

    .line 2716
    .end local v14    # "object":Ljava/lang/Object;
    .end local v18    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_0
    :goto_0
    return-void

    .line 2682
    .restart local v14    # "object":Ljava/lang/Object;
    .restart local v18    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1
    move-object/from16 v0, v18

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 2683
    .local v13, "name":Ljava/lang/String;
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 2684
    :cond_2
    move-object/from16 v0, v18

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 2686
    :cond_3
    new-instance v16, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2687
    .local v16, "spannable":Landroid/text/Spannable;
    new-instance v2, Lorg/telegram/ui/Components/URLSpanUserMention;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Lorg/telegram/ui/Components/URLSpanUserMention;-><init>(Ljava/lang/String;Z)V

    const/4 v4, 0x0

    invoke-interface/range {v16 .. v16}, Landroid/text/Spannable;->length()I

    move-result v5

    const/16 v6, 0x21

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v4, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2688
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$37;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v2, v0, v12, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->replaceWithText(IILjava/lang/CharSequence;)V

    goto :goto_0

    .line 2691
    .end local v13    # "name":Ljava/lang/String;
    .end local v16    # "spannable":Landroid/text/Spannable;
    .end local v18    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4
    instance-of v2, v14, Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 2692
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$37;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBotCommands()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2693
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    move-object v3, v14

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$37;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    .line 2694
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$37;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2696
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$37;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v2, v0, v12, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->replaceWithText(IILjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2698
    :cond_6
    instance-of v2, v14, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v2, :cond_b

    .line 2699
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$37;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getFieldText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v15, v14

    .line 2702
    check-cast v15, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 2703
    .local v15, "result":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_a

    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v4, "photo"

    .line 2704
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-nez v2, :cond_9

    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    if-nez v2, :cond_9

    :cond_7
    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v4, "gif"

    .line 2705
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v2, :cond_9

    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    if-nez v2, :cond_9

    :cond_8
    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v4, "video"

    .line 2706
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_a

    .line 2707
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$37;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$37;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getSearchResultBotContext()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v4}, Lorg/telegram/ui/ChatActivity;->access$402(Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2708
    .local v3, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$37;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 2709
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$37;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemPosition(I)I

    move-result v4

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$37;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$11100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/PhotoViewer;->openPhotoForSelect(Ljava/util/ArrayList;IILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z

    goto/16 :goto_0

    .line 2711
    .end local v3    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$37;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, v15}, Lorg/telegram/ui/ChatActivity;->access$600(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$BotInlineResult;)V

    goto/16 :goto_0

    .line 2713
    .end local v15    # "result":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    :cond_b
    instance-of v2, v14, Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-eqz v2, :cond_0

    .line 2714
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$37;->this$0:Lorg/telegram/ui/ChatActivity;

    check-cast v14, Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    .end local v14    # "object":Ljava/lang/Object;
    invoke-virtual {v2, v14}, Lorg/telegram/ui/ChatActivity;->processInlineBotContextPM(Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;)V

    goto/16 :goto_0
.end method

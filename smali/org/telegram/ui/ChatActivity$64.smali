.class Lorg/telegram/ui/ChatActivity$64;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->processSelectedAttach(I)V
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
    .line 4266
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;)V
    .locals 11
    .param p1, "location"    # Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 4269
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$2400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    move-object v1, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    .line 4270
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11200(Lorg/telegram/ui/ChatActivity;)V

    .line 4271
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    move v4, v9

    move-object v6, v5

    move-object v7, v5

    move v8, v9

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/ChatActivity;->showReplyPanel(ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$WebPage;Z)V

    .line 4272
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v0

    invoke-static {v0, v1, v10}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    .line 4273
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14600(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4274
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v10}, Lorg/telegram/ui/ChatActivity;->access$14702(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 4276
    :cond_0
    return-void
.end method

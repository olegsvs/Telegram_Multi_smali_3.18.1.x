.class Lorg/telegram/messenger/SecretChatHelper$2;
.super Ljava/lang/Object;
.source "SecretChatHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SecretChatHelper;->processUpdateEncryption(Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;Ljava/util/concurrent/ConcurrentHashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/SecretChatHelper;

.field final synthetic val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

.field final synthetic val$newChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/SecretChatHelper;

    .prologue
    .line 196
    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper$2;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    iput-object p2, p0, Lorg/telegram/messenger/SecretChatHelper$2;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iput-object p3, p0, Lorg/telegram/messenger/SecretChatHelper$2;->val$newChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 199
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper$2;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/SecretChatHelper$2;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper$2;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper$2;->val$newChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    .line 202
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Ljava/util/HashMap;)V

    .line 203
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 204
    return-void
.end method

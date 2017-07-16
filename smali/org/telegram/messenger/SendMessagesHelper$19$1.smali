.class Lorg/telegram/messenger/SendMessagesHelper$19$1;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/SendMessagesHelper$19;

.field final synthetic val$finalPath:Ljava/lang/String;

.field final synthetic val$params:Ljava/util/HashMap;

.field final synthetic val$videoFinal:Lorg/telegram/tgnet/TLRPC$TL_document;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$19;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/SendMessagesHelper$19;

    .prologue
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$19$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$19;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$19$1;->val$videoFinal:Lorg/telegram/tgnet/TLRPC$TL_document;

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$19$1;->val$finalPath:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$19$1;->val$params:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$19$1;->val$videoFinal:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$19$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$19;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$19$1;->val$finalPath:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$19$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$19;

    iget-wide v4, v4, Lorg/telegram/messenger/SendMessagesHelper$19;->val$dialog_id:J

    iget-object v6, p0, Lorg/telegram/messenger/SendMessagesHelper$19$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$19;

    iget-object v6, v6, Lorg/telegram/messenger/SendMessagesHelper$19;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/telegram/messenger/SendMessagesHelper$19$1;->val$params:Ljava/util/HashMap;

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    return-void
.end method

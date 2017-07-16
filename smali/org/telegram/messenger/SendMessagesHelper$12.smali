.class final Lorg/telegram/messenger/SendMessagesHelper$12;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocumentInternal(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog_id:J

.field final synthetic val$documentFinal:Lorg/telegram/tgnet/TLRPC$TL_document;

.field final synthetic val$params:Ljava/util/HashMap;

.field final synthetic val$pathFinal:Ljava/lang/String;

.field final synthetic val$reply_to_msg:Lorg/telegram/messenger/MessageObject;


# direct methods
.method constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/util/HashMap;)V
    .locals 1

    .prologue
    .line 2868
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$12;->val$documentFinal:Lorg/telegram/tgnet/TLRPC$TL_document;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$12;->val$pathFinal:Ljava/lang/String;

    iput-wide p3, p0, Lorg/telegram/messenger/SendMessagesHelper$12;->val$dialog_id:J

    iput-object p5, p0, Lorg/telegram/messenger/SendMessagesHelper$12;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    iput-object p6, p0, Lorg/telegram/messenger/SendMessagesHelper$12;->val$params:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 2871
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$12;->val$documentFinal:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$12;->val$pathFinal:Ljava/lang/String;

    iget-wide v4, p0, Lorg/telegram/messenger/SendMessagesHelper$12;->val$dialog_id:J

    iget-object v6, p0, Lorg/telegram/messenger/SendMessagesHelper$12;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    iget-object v8, p0, Lorg/telegram/messenger/SendMessagesHelper$12;->val$params:Ljava/util/HashMap;

    move-object v7, v2

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    .line 2872
    return-void
.end method

.class Lorg/telegram/messenger/MessagesController$24;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->loadDialogPhotos(IIIJZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$classGuid:I

.field final synthetic val$count:I

.field final synthetic val$did:I

.field final synthetic val$max_id:J

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;IIIJI)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$24;->this$0:Lorg/telegram/messenger/MessagesController;

    iput p2, p0, Lorg/telegram/messenger/MessagesController$24;->val$did:I

    iput p3, p0, Lorg/telegram/messenger/MessagesController$24;->val$offset:I

    iput p4, p0, Lorg/telegram/messenger/MessagesController$24;->val$count:I

    iput-wide p5, p0, Lorg/telegram/messenger/MessagesController$24;->val$max_id:J

    iput p7, p0, Lorg/telegram/messenger/MessagesController$24;->val$classGuid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 12
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    if-nez p2, :cond_3

    move-object v11, p1

    check-cast v11, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .local v11, "messages":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_photos_photos;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_photos_photos;-><init>()V

    .local v2, "res":Lorg/telegram/tgnet/TLRPC$TL_photos_photos;
    iget v1, v11, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_photos_photos;->count:I

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_photos_photos;->users:Ljava/util/ArrayList;

    iget-object v3, v11, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v1, v11, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, v11, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Message;

    .local v10, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-eqz v1, :cond_0

    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_photos_photos;->photos:Ljava/util/ArrayList;

    iget-object v3, v10, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v10    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$24;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v3, p0, Lorg/telegram/messenger/MessagesController$24;->val$did:I

    iget v4, p0, Lorg/telegram/messenger/MessagesController$24;->val$offset:I

    iget v5, p0, Lorg/telegram/messenger/MessagesController$24;->val$count:I

    iget-wide v6, p0, Lorg/telegram/messenger/MessagesController$24;->val$max_id:J

    const/4 v8, 0x0

    iget v9, p0, Lorg/telegram/messenger/MessagesController$24;->val$classGuid:I

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/messenger/MessagesController;->processLoadedUserPhotos(Lorg/telegram/tgnet/TLRPC$photos_Photos;IIIJZI)V

    .end local v0    # "a":I
    .end local v2    # "res":Lorg/telegram/tgnet/TLRPC$TL_photos_photos;
    .end local v11    # "messages":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    :cond_3
    return-void
.end method

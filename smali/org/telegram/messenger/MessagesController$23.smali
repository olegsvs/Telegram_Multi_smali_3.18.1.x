.class Lorg/telegram/messenger/MessagesController$23;
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
    .line 1660
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$23;->this$0:Lorg/telegram/messenger/MessagesController;

    iput p2, p0, Lorg/telegram/messenger/MessagesController$23;->val$did:I

    iput p3, p0, Lorg/telegram/messenger/MessagesController$23;->val$offset:I

    iput p4, p0, Lorg/telegram/messenger/MessagesController$23;->val$count:I

    iput-wide p5, p0, Lorg/telegram/messenger/MessagesController$23;->val$max_id:J

    iput p7, p0, Lorg/telegram/messenger/MessagesController$23;->val$classGuid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 1663
    if-nez p2, :cond_0

    move-object v2, p1

    .line 1664
    check-cast v2, Lorg/telegram/tgnet/TLRPC$photos_Photos;

    .line 1665
    .local v2, "res":Lorg/telegram/tgnet/TLRPC$photos_Photos;
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$23;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v3, p0, Lorg/telegram/messenger/MessagesController$23;->val$did:I

    iget v4, p0, Lorg/telegram/messenger/MessagesController$23;->val$offset:I

    iget v5, p0, Lorg/telegram/messenger/MessagesController$23;->val$count:I

    iget-wide v6, p0, Lorg/telegram/messenger/MessagesController$23;->val$max_id:J

    const/4 v8, 0x0

    iget v9, p0, Lorg/telegram/messenger/MessagesController$23;->val$classGuid:I

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/messenger/MessagesController;->processLoadedUserPhotos(Lorg/telegram/tgnet/TLRPC$photos_Photos;IIIJZI)V

    .line 1667
    .end local v2    # "res":Lorg/telegram/tgnet/TLRPC$photos_Photos;
    :cond_0
    return-void
.end method

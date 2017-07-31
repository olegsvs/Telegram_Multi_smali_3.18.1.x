.class Lorg/telegram/messenger/MessagesController$2;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessagesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/tgnet/TLRPC$Update;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 248
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$2;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 248
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Update;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Update;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/MessagesController$2;->compare(Lorg/telegram/tgnet/TLRPC$Update;Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$Update;Lorg/telegram/tgnet/TLRPC$Update;)I
    .locals 6
    .param p1, "lhs"    # Lorg/telegram/tgnet/TLRPC$Update;
    .param p2, "rhs"    # Lorg/telegram/tgnet/TLRPC$Update;

    .prologue
    .line 251
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$2;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v4, p1}, Lorg/telegram/messenger/MessagesController;->access$000(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v1

    .line 252
    .local v1, "ltype":I
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$2;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v4, p2}, Lorg/telegram/messenger/MessagesController;->access$000(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v3

    .line 253
    .local v3, "rtype":I
    if-eq v1, v3, :cond_0

    .line 254
    invoke-static {v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->compare(II)I

    move-result v4

    .line 268
    :goto_0
    return v4

    .line 255
    :cond_0
    if-nez v1, :cond_1

    .line 256
    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    iget v5, p2, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->compare(II)I

    move-result v4

    goto :goto_0

    .line 257
    :cond_1
    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    .line 258
    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Update;->qts:I

    iget v5, p2, Lorg/telegram/tgnet/TLRPC$Update;->qts:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->compare(II)I

    move-result v4

    goto :goto_0

    .line 259
    :cond_2
    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    .line 260
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$2;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v4, p1}, Lorg/telegram/messenger/MessagesController;->access$100(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v0

    .line 261
    .local v0, "lChannel":I
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$2;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v4, p2}, Lorg/telegram/messenger/MessagesController;->access$100(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v2

    .line 262
    .local v2, "rChannel":I
    if-ne v0, v2, :cond_3

    .line 263
    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    iget v5, p2, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->compare(II)I

    move-result v4

    goto :goto_0

    .line 265
    :cond_3
    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->compare(II)I

    move-result v4

    goto :goto_0

    .line 268
    .end local v0    # "lChannel":I
    .end local v2    # "rChannel":I
    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

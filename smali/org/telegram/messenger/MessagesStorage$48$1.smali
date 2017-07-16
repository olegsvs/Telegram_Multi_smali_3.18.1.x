.class Lorg/telegram/messenger/MessagesStorage$48$1;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage$48;->run()V
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
        "Lorg/telegram/tgnet/TLRPC$Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesStorage$48;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage$48;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesStorage$48;

    .prologue
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$48$1;->this$1:Lorg/telegram/messenger/MessagesStorage$48;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Message;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$48$1;->compare(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$Message;)I
    .locals 4
    .param p1, "lhs"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p2, "rhs"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-lez v2, :cond_2

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-lez v2, :cond_2

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v3, p2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-le v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v0, v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gez v2, :cond_3

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gez v2, :cond_3

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v3, p2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-lt v2, v3, :cond_0

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-le v0, v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget v3, p2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-gt v2, v3, :cond_0

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-ge v0, v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

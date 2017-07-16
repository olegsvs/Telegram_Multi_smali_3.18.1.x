.class Lorg/telegram/ui/Adapters/DialogsAdapter$5;
.super Ljava/lang/Object;
.source "DialogsAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Adapters/DialogsAdapter;
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
        "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/DialogsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Adapters/DialogsAdapter;

    .prologue
    .line 313
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$5;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 313
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsAdapter$5;->compare(Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$TL_dialog;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$TL_dialog;)I
    .locals 6
    .param p1, "dialog1"    # Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .param p2, "dialog2"    # Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .prologue
    .line 316
    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/query/DraftQuery;->getDraft(J)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object v2

    .line 317
    .local v2, "draftMessage":Lorg/telegram/tgnet/TLRPC$DraftMessage;
    if-eqz v2, :cond_0

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    if-lt v3, v4, :cond_0

    iget v0, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    .line 318
    .local v0, "date1":I
    :goto_0
    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/query/DraftQuery;->getDraft(J)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object v2

    .line 319
    if-eqz v2, :cond_1

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    iget v4, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    if-lt v3, v4, :cond_1

    iget v1, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    .line 320
    .local v1, "date2":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 321
    const/4 v3, 0x1

    .line 325
    :goto_2
    return v3

    .line 317
    .end local v0    # "date1":I
    .end local v1    # "date2":I
    :cond_0
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    goto :goto_0

    .line 319
    .restart local v0    # "date1":I
    :cond_1
    iget v1, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    goto :goto_1

    .line 322
    .restart local v1    # "date2":I
    :cond_2
    if-le v0, v1, :cond_3

    .line 323
    const/4 v3, -0x1

    goto :goto_2

    .line 325
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

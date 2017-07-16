.class Lorg/telegram/ui/Adapters/DialogsAdapter$3;
.super Ljava/lang/Object;
.source "DialogsAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/DialogsAdapter;->sortUnreadPinedOnTop(Ljava/util/ArrayList;)V
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
    .line 239
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$3;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 239
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsAdapter$3;->compare(Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$TL_dialog;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$TL_dialog;)I
    .locals 10
    .param p1, "dialog1"    # Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .param p2, "dialog2"    # Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 242
    iget-boolean v7, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-nez v7, :cond_1

    iget-boolean v7, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v7, :cond_1

    .line 274
    :cond_0
    :goto_0
    return v4

    .line 244
    :cond_1
    iget-boolean v7, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v7, :cond_2

    iget-boolean v7, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-nez v7, :cond_2

    move v4, v5

    .line 245
    goto :goto_0

    .line 246
    :cond_2
    iget-boolean v7, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v7, :cond_4

    iget-boolean v7, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v7, :cond_4

    .line 247
    iget v7, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    iget v8, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    if-lt v7, v8, :cond_0

    .line 249
    iget v4, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    iget v7, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    if-le v4, v7, :cond_3

    move v4, v5

    .line 250
    goto :goto_0

    :cond_3
    move v4, v6

    .line 252
    goto :goto_0

    .line 255
    :cond_4
    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Lorg/telegram/messenger/query/DraftQuery;->getDraft(J)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object v2

    .line 256
    .local v2, "draftMessage":Lorg/telegram/tgnet/TLRPC$DraftMessage;
    if-eqz v2, :cond_5

    iget v7, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    iget v8, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    if-lt v7, v8, :cond_5

    iget v0, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    .line 257
    .local v0, "date1":I
    :goto_1
    iget-wide v8, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Lorg/telegram/messenger/query/DraftQuery;->getDraft(J)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object v2

    .line 258
    if-eqz v2, :cond_6

    iget v7, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    iget v8, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    if-lt v7, v8, :cond_6

    iget v1, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    .line 259
    .local v1, "date2":I
    :goto_2
    if-lt v0, v1, :cond_0

    .line 261
    if-le v0, v1, :cond_7

    move v4, v5

    .line 262
    goto :goto_0

    .line 256
    .end local v0    # "date1":I
    .end local v1    # "date2":I
    :cond_5
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    goto :goto_1

    .line 258
    .restart local v0    # "date1":I
    :cond_6
    iget v1, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    goto :goto_2

    .line 265
    .restart local v1    # "date2":I
    :cond_7
    :try_start_0
    iget v7, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    iget v8, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    if-ne v7, v8, :cond_8

    move v4, v6

    .line 266
    goto :goto_0

    .line 267
    :cond_8
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    iget v7, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v6, v7, :cond_0

    move v4, v5

    .line 270
    goto :goto_0

    .line 272
    :catch_0
    move-exception v3

    .line 273
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move v4, v5

    .line 274
    goto :goto_0
.end method

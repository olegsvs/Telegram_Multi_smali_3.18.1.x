.class Lorg/telegram/ui/StickersActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "StickersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/StickersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/StickersActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/StickersActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 311
    iput-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 312
    iput-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 313
    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/StickersActivity$ListAdapter;ILorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/StickersActivity$ListAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .prologue
    .line 307
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/StickersActivity$ListAdapter;->processSelectionOption(ILorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    return-void
.end method

.method private processSelectionOption(ILorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 10
    .param p1, "which"    # I
    .param p2, "stickerSet"    # Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 332
    if-nez p1, :cond_2

    .line 333
    iget-object v6, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/StickersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v8, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    if-nez v8, :cond_0

    move v4, v5

    :cond_0
    iget-object v8, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v6, v7, v4, v8, v5}, Lorg/telegram/messenger/query/StickersQuery;->removeStickersSet(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$StickerSet;ILorg/telegram/ui/ActionBar/BaseFragment;Z)V

    .line 355
    :cond_1
    :goto_0
    return-void

    .line 334
    :cond_2
    if-ne p1, v5, :cond_3

    .line 335
    iget-object v4, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/StickersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v6, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v7, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v4, v6, v8, v7, v5}, Lorg/telegram/messenger/query/StickersQuery;->removeStickersSet(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$StickerSet;ILorg/telegram/ui/ActionBar/BaseFragment;Z)V

    goto :goto_0

    .line 336
    :cond_3
    if-ne p1, v4, :cond_4

    .line 338
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "text/plain"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string/jumbo v4, "android.intent.extra.TEXT"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "https://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/addstickers/%s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    iget-object v4, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/StickersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "StickersShare"

    const v6, 0x7f070603

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    const/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 342
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 343
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 345
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    .line 347
    :try_start_1
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "clipboard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 348
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    const-string/jumbo v4, "label"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "https://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/addstickers/%s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 349
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 350
    iget-object v4, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/StickersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "LinkCopied"

    const v6, 0x7f070349

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 351
    .end local v0    # "clip":Landroid/content/ClipData;
    .end local v1    # "clipboard":Landroid/content/ClipboardManager;
    :catch_1
    move-exception v2

    .line 352
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$900(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 322
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$200(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$300(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 323
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$500(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/query/StickersQuery;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 324
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$200(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    .line 328
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    :goto_0
    return-wide v2

    .line 325
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$700(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$1000(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$600(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$1100(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$800(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$1200(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 326
    :cond_1
    const-wide/32 v2, -0x80000000

    goto :goto_0

    .line 328
    :cond_2
    int-to-long v2, p1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x0

    .line 499
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$200(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    if-lt p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$300(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 508
    :cond_0
    :goto_0
    return v0

    .line 501
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$1100(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$1000(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$1200(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 502
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 503
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$600(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$700(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$800(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    if-ne p1, v1, :cond_5

    .line 504
    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    .line 505
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$1400(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 506
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 417
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 418
    .local v0, "type":I
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 16
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 359
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 361
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v10}, Lorg/telegram/ui/StickersActivity;->access$500(Lorg/telegram/ui/StickersActivity;)I

    move-result v10

    invoke-static {v10}, Lorg/telegram/messenger/query/StickersQuery;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 362
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v10}, Lorg/telegram/ui/StickersActivity;->access$200(Lorg/telegram/ui/StickersActivity;)I

    move-result v10

    sub-int v6, p2, v10

    .line 363
    .local v6, "row":I
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v10, Lorg/telegram/ui/Cells/StickerSetCell;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-eq v6, v12, :cond_1

    const/4 v12, 0x1

    :goto_1
    invoke-virtual {v10, v11, v12}, Lorg/telegram/ui/Cells/StickerSetCell;->setStickersSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Z)V

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 366
    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .end local v6    # "row":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v10}, Lorg/telegram/ui/StickersActivity;->access$1100(Lorg/telegram/ui/StickersActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_3

    .line 367
    const-string/jumbo v10, "FeaturedStickersInfo"

    const v11, 0x7f070248

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 368
    .local v9, "text":Ljava/lang/String;
    const-string/jumbo v2, "@stickers"

    .line 369
    .local v2, "botName":Ljava/lang/String;
    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 370
    .local v5, "index":I
    const/4 v10, -0x1

    if-eq v5, v10, :cond_2

    .line 372
    :try_start_0
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 373
    .local v8, "stringBuilder":Landroid/text/SpannableStringBuilder;
    new-instance v7, Lorg/telegram/ui/StickersActivity$ListAdapter$1;

    const-string/jumbo v10, "@stickers"

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v10}, Lorg/telegram/ui/StickersActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/StickersActivity$ListAdapter;Ljava/lang/String;)V

    .line 379
    .local v7, "spanNoUnderline":Lorg/telegram/ui/Components/URLSpanNoUnderline;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v5

    const/16 v11, 0x12

    invoke-virtual {v8, v7, v5, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 380
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v10, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v10, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    .end local v7    # "spanNoUnderline":Lorg/telegram/ui/Components/URLSpanNoUnderline;
    .end local v8    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :catch_0
    move-exception v4

    .line 382
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 383
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v10, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v10, v9}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 386
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v10, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v10, v9}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 388
    .end local v2    # "botName":Ljava/lang/String;
    .end local v5    # "index":I
    .end local v9    # "text":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v10}, Lorg/telegram/ui/StickersActivity;->access$1000(Lorg/telegram/ui/StickersActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_5

    .line 389
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v10}, Lorg/telegram/ui/StickersActivity;->access$500(Lorg/telegram/ui/StickersActivity;)I

    move-result v10

    if-nez v10, :cond_4

    .line 390
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v10, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v11, "ArchivedStickersInfo"

    const v12, 0x7f070087

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 392
    :cond_4
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v10, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v11, "ArchivedMasksInfo"

    const v12, 0x7f070082

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 394
    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v10}, Lorg/telegram/ui/StickersActivity;->access$1200(Lorg/telegram/ui/StickersActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_0

    .line 395
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v10, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v11, "MasksInfo"

    const v12, 0x7f07036c

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 399
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v10}, Lorg/telegram/ui/StickersActivity;->access$600(Lorg/telegram/ui/StickersActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_7

    .line 400
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getUnreadStickerSets()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 401
    .local v3, "count":I
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v10, Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string/jumbo v11, "FeaturedStickers"

    const v12, 0x7f070247

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    if-eqz v3, :cond_6

    const-string/jumbo v11, "%d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :goto_2
    const/4 v13, 0x0

    invoke-virtual {v10, v12, v11, v13}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v11, ""

    goto :goto_2

    .line 402
    .end local v3    # "count":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v10}, Lorg/telegram/ui/StickersActivity;->access$700(Lorg/telegram/ui/StickersActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_9

    .line 403
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v10}, Lorg/telegram/ui/StickersActivity;->access$500(Lorg/telegram/ui/StickersActivity;)I

    move-result v10

    if-nez v10, :cond_8

    .line 404
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v10, Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string/jumbo v11, "ArchivedStickers"

    const v12, 0x7f070083

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 406
    :cond_8
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v10, Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string/jumbo v11, "ArchivedMasks"

    const v12, 0x7f07007e

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 408
    :cond_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v10}, Lorg/telegram/ui/StickersActivity;->access$800(Lorg/telegram/ui/StickersActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_0

    .line 409
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v10, Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string/jumbo v11, "Masks"

    const v12, 0x7f07036b

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const v3, 0x7f0200af

    .line 423
    const/4 v0, 0x0

    .line 424
    .local v0, "view":Landroid/view/View;
    packed-switch p2, :pswitch_data_0

    .line 493
    :goto_0
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 494
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 426
    :pswitch_0
    new-instance v0, Lorg/telegram/ui/Cells/StickerSetCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/StickerSetCell;-><init>(Landroid/content/Context;)V

    .line 427
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    move-object v1, v0

    .line 428
    check-cast v1, Lorg/telegram/ui/Cells/StickerSetCell;

    new-instance v2, Lorg/telegram/ui/StickersActivity$ListAdapter$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/StickersActivity$ListAdapter$2;-><init>(Lorg/telegram/ui/StickersActivity$ListAdapter;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/StickerSetCell;->setOnOptionsClick(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 481
    :pswitch_1
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 482
    .restart local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "windowBackgroundGrayShadow"

    invoke-static {v1, v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 485
    :pswitch_2
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 486
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 489
    :pswitch_3
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 490
    .restart local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "windowBackgroundGrayShadow"

    invoke-static {v1, v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 424
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public swapElements(II)V
    .locals 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 512
    if-eq p1, p2, :cond_0

    .line 513
    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/telegram/ui/StickersActivity;->access$1502(Lorg/telegram/ui/StickersActivity;Z)Z

    .line 515
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v2}, Lorg/telegram/ui/StickersActivity;->access$500(Lorg/telegram/ui/StickersActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/query/StickersQuery;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 516
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v2}, Lorg/telegram/ui/StickersActivity;->access$200(Lorg/telegram/ui/StickersActivity;)I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 517
    .local v1, "from":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v2}, Lorg/telegram/ui/StickersActivity;->access$200(Lorg/telegram/ui/StickersActivity;)I

    move-result v2

    sub-int v2, p1, v2

    iget-object v3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v3}, Lorg/telegram/ui/StickersActivity;->access$200(Lorg/telegram/ui/StickersActivity;)I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 518
    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v2}, Lorg/telegram/ui/StickersActivity;->access$200(Lorg/telegram/ui/StickersActivity;)I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 519
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/StickersActivity$ListAdapter;->notifyItemMoved(II)V

    .line 520
    return-void
.end method

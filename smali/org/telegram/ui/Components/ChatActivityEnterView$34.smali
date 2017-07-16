.class Lorg/telegram/ui/Components/ChatActivityEnterView$34;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Lorg/telegram/ui/Components/EmojiView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->createEmojiView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 2516
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackspace()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2518
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextCaption;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 2522
    :goto_0
    return v0

    .line 2521
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    new-instance v2, Landroid/view/KeyEvent;

    const/16 v3, 0x43

    invoke-direct {v2, v0, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextCaption;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2522
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClearEmojiRecent()V
    .locals 3

    .prologue
    .line 2591
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2605
    :cond_0
    :goto_0
    return-void

    .line 2594
    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2595
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v1, "AppName"

    const v2, 0x7f070078

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2596
    const-string/jumbo v1, "ClearRecentEmoji"

    const v2, 0x7f07017e

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2597
    const-string/jumbo v1, "ClearButton"

    const v2, 0x7f070177

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$34$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$34$1;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$34;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2603
    const-string/jumbo v1, "Cancel"

    const v2, 0x7f0700f0

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2604
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onEmojiSelected(Ljava/lang/String;)V
    .locals 8
    .param p1, "symbol"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 2526
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EditTextCaption;->getSelectionEnd()I

    move-result v1

    .line 2527
    .local v1, "i":I
    if-gez v1, :cond_0

    .line 2528
    const/4 v1, 0x0

    .line 2531
    :cond_0
    :try_start_0
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3102(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    .line 2532
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EditTextCaption;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {p1, v4, v5, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2533
    .local v3, "localCharSequence":Ljava/lang/CharSequence;
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5, v1, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextCaption;->setText(Ljava/lang/CharSequence;)V

    .line 2534
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int v2, v1, v4

    .line 2535
    .local v2, "j":I
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v4

    invoke-virtual {v4, v2, v2}, Lorg/telegram/ui/Components/EditTextCaption;->setSelection(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2539
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3102(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    .line 2541
    .end local v2    # "j":I
    .end local v3    # "localCharSequence":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 2536
    :catch_0
    move-exception v0

    .line 2537
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2539
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3102(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3102(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    throw v4
.end method

.method public onGifSelected(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 4
    .param p1, "gif"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 2560
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v0, p1, v2, v3, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendSticker(Lorg/telegram/tgnet/TLRPC$Document;JLorg/telegram/messenger/MessageObject;)V

    .line 2561
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/query/StickersQuery;->addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;I)V

    .line 2562
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v0

    long-to-int v0, v0

    if-nez v0, :cond_0

    .line 2563
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->saveGif(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 2565
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2566
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;)V

    .line 2568
    :cond_1
    return-void
.end method

.method public onGifTab(Z)V
    .locals 2
    .param p1, "opened"    # Z

    .prologue
    .line 2572
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v0, :cond_0

    .line 2573
    if-eqz p1, :cond_1

    .line 2574
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 2575
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    const-string/jumbo v1, "@gif "

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->setText(Ljava/lang/CharSequence;)V

    .line 2576
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextCaption;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->setSelection(I)V

    .line 2582
    :cond_0
    :goto_0
    return-void

    .line 2578
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "@gif "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2579
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onShowStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V
    .locals 7
    .param p1, "stickerSet"    # Lorg/telegram/tgnet/TLRPC$StickerSet;
    .param p2, "inputStickerSet"    # Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .prologue
    .line 2609
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2618
    :cond_0
    :goto_0
    return-void

    .line 2612
    :cond_1
    if-eqz p1, :cond_2

    .line 2613
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    .end local p2    # "inputStickerSet":Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    .line 2614
    .restart local p2    # "inputStickerSet":Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    .line 2615
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    .line 2617
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v6

    new-instance v0, Lorg/telegram/ui/Components/StickersAlert;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;)V

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onStickerSelected(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 6
    .param p1, "sticker"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 2544
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onStickerSelected(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 2545
    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/query/StickersQuery;->addRecentSticker(ILorg/telegram/tgnet/TLRPC$Document;I)V

    .line 2546
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v0

    long-to-int v0, v0

    if-nez v0, :cond_0

    .line 2547
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->saveGif(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 2549
    :cond_0
    return-void
.end method

.method public onStickerSetAdd(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V
    .locals 5
    .param p1, "stickerSet"    # Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .prologue
    .line 2622
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/query/StickersQuery;->removeStickersSet(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$StickerSet;ILorg/telegram/ui/ActionBar/BaseFragment;Z)V

    .line 2623
    return-void
.end method

.method public onStickerSetRemove(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V
    .locals 4
    .param p1, "stickerSet"    # Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .prologue
    const/4 v3, 0x0

    .line 2627
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    invoke-static {v0, v1, v3, v2, v3}, Lorg/telegram/messenger/query/StickersQuery;->removeStickersSet(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$StickerSet;ILorg/telegram/ui/ActionBar/BaseFragment;Z)V

    .line 2628
    return-void
.end method

.method public onStickersSettingsClick()V
    .locals 3

    .prologue
    .line 2553
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2554
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/StickersActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/StickersActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 2556
    :cond_0
    return-void
.end method

.method public onStickersTab(Z)V
    .locals 1
    .param p1, "opened"    # Z

    .prologue
    .line 2586
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$34;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onStickersTab(Z)V

    .line 2587
    return-void
.end method

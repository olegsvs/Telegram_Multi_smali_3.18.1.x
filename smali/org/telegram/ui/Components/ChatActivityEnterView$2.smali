.class Lorg/telegram/ui/Components/ChatActivityEnterView$2;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;
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
    .line 290
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v8, 0x17

    const/4 v9, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 293
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v7

    if-nez v7, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$702(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 297
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 298
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v8, :cond_8

    .line 299
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "android.permission.RECORD_AUDIO"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3

    move v2, v5

    .line 300
    .local v2, "hasAudio":Z
    :goto_1
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "android.permission.CAMERA"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_4

    move v3, v5

    .line 301
    .local v3, "hasVideo":Z
    :goto_2
    if-eqz v2, :cond_2

    if-nez v3, :cond_8

    .line 302
    :cond_2
    if-nez v2, :cond_5

    if-nez v3, :cond_5

    const/4 v7, 0x2

    :goto_3
    new-array v4, v7, [Ljava/lang/String;

    .line 303
    .local v4, "permissions":[Ljava/lang/String;
    if-nez v2, :cond_6

    if-nez v3, :cond_6

    .line 304
    const-string/jumbo v7, "android.permission.RECORD_AUDIO"

    aput-object v7, v4, v6

    .line 305
    const-string/jumbo v6, "android.permission.CAMERA"

    aput-object v6, v4, v5

    .line 311
    :goto_4
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v4, v9}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .end local v2    # "hasAudio":Z
    .end local v3    # "hasVideo":Z
    .end local v4    # "permissions":[Ljava/lang/String;
    :cond_3
    move v2, v6

    .line 299
    goto :goto_1

    .restart local v2    # "hasAudio":Z
    :cond_4
    move v3, v6

    .line 300
    goto :goto_2

    .restart local v3    # "hasVideo":Z
    :cond_5
    move v7, v5

    .line 302
    goto :goto_3

    .line 306
    .restart local v4    # "permissions":[Ljava/lang/String;
    :cond_6
    if-nez v2, :cond_7

    .line 307
    const-string/jumbo v5, "android.permission.RECORD_AUDIO"

    aput-object v5, v4, v6

    goto :goto_4

    .line 309
    :cond_7
    const-string/jumbo v5, "android.permission.CAMERA"

    aput-object v5, v4, v6

    goto :goto_4

    .line 315
    .end local v2    # "hasAudio":Z
    .end local v3    # "hasVideo":Z
    .end local v4    # "permissions":[Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v5

    invoke-interface {v5, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(I)V

    goto :goto_0

    .line 317
    :cond_9
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 318
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v8, :cond_a

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "android.permission.RECORD_AUDIO"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_a

    .line 319
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v8, "android.permission.RECORD_AUDIO"

    aput-object v8, v5, v6

    invoke-virtual {v7, v5, v9}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 325
    :cond_a
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v6

    long-to-int v6, v6

    if-gez v6, :cond_d

    .line 326
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v8

    long-to-int v7, v8

    neg-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 327
    .local v1, "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v1, :cond_c

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget v7, v7, Lorg/telegram/messenger/MessagesController;->groupBigSize:I

    if-le v6, v7, :cond_c

    .line 328
    const-string/jumbo v0, "bigchat_upload_audio"

    .line 335
    .end local v1    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    .local v0, "action":Ljava/lang/String;
    :goto_5
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v6

    invoke-static {v0, v6}, Lorg/telegram/messenger/MessagesController;->isFeatureEnabled(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 339
    .end local v0    # "action":Ljava/lang/String;
    :cond_b
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/high16 v7, -0x40800000    # -1.0f

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1102(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 340
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v8

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    invoke-virtual {v6, v8, v9, v7}, Lorg/telegram/messenger/MediaController;->startRecording(JLorg/telegram/messenger/MessageObject;)V

    .line 341
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1300(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 342
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_0

    .line 330
    .restart local v1    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_c
    const-string/jumbo v0, "chat_upload_audio"

    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_5

    .line 333
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_d
    const-string/jumbo v0, "pm_upload_audio"

    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_5
.end method

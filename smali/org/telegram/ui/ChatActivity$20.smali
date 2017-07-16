.class Lorg/telegram/ui/ChatActivity$20;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 1982
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$20;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1985
    iget-object v10, p0, Lorg/telegram/ui/ChatActivity$20;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v10, v10, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lorg/telegram/ui/ChatActivity$20;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v10, v10, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isEditingMessage()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1986
    const/4 v10, 0x1

    .line 2038
    :goto_0
    return v10

    .line 1988
    :cond_0
    iget-object v10, p0, Lorg/telegram/ui/ChatActivity$20;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$9000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1989
    const/4 v10, 0x0

    goto :goto_0

    .line 1991
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_4

    .line 1992
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v8, v10

    .line 1993
    .local v8, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v9, v10

    .line 1994
    .local v9, "y":I
    iget-object v10, p0, Lorg/telegram/ui/ChatActivity$20;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$5800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v3

    .line 1995
    .local v3, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v3, :cond_4

    .line 1996
    iget-object v10, p0, Lorg/telegram/ui/ChatActivity$20;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$5800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v10

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1997
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1998
    .local v6, "top":I
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1999
    .local v1, "bottom":I
    if-gt v6, v9, :cond_2

    if-ge v1, v9, :cond_3

    .line 1995
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2002
    :cond_3
    instance-of v10, v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-nez v10, :cond_5

    .line 2038
    .end local v0    # "a":I
    .end local v1    # "bottom":I
    .end local v3    # "count":I
    .end local v6    # "top":I
    .end local v7    # "view":Landroid/view/View;
    .end local v8    # "x":I
    .end local v9    # "y":I
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .restart local v0    # "a":I
    .restart local v1    # "bottom":I
    .restart local v3    # "count":I
    .restart local v6    # "top":I
    .restart local v7    # "view":Landroid/view/View;
    .restart local v8    # "x":I
    .restart local v9    # "y":I
    :cond_5
    move-object v2, v7

    .line 2005
    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 2006
    .local v2, "cell":Lorg/telegram/ui/Cells/ChatMessageCell;
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    .line 2007
    .local v5, "messageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isSecretPhoto()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v10

    int-to-float v11, v8

    sub-int v12, v9, v6

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Lorg/telegram/messenger/ImageReceiver;->isInsideImage(FF)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2010
    iget-object v10, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v10}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v4

    .line 2011
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2014
    iget-object v10, p0, Lorg/telegram/ui/ChatActivity$20;->this$0:Lorg/telegram/ui/ChatActivity;

    int-to-float v11, v8

    invoke-static {v10, v11}, Lorg/telegram/ui/ChatActivity;->access$8802(Lorg/telegram/ui/ChatActivity;F)F

    .line 2015
    iget-object v10, p0, Lorg/telegram/ui/ChatActivity$20;->this$0:Lorg/telegram/ui/ChatActivity;

    int-to-float v11, v9

    invoke-static {v10, v11}, Lorg/telegram/ui/ChatActivity;->access$8902(Lorg/telegram/ui/ChatActivity;F)F

    .line 2016
    iget-object v10, p0, Lorg/telegram/ui/ChatActivity$20;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$5800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 2017
    iget-object v10, p0, Lorg/telegram/ui/ChatActivity$20;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v11, Lorg/telegram/ui/ChatActivity$20$1;

    invoke-direct {v11, p0, v5, v2}, Lorg/telegram/ui/ChatActivity$20$1;-><init>(Lorg/telegram/ui/ChatActivity$20;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    invoke-static {v10, v11}, Lorg/telegram/ui/ChatActivity;->access$8702(Lorg/telegram/ui/ChatActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 2034
    iget-object v10, p0, Lorg/telegram/ui/ChatActivity$20;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$8700(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Runnable;

    move-result-object v10

    const-wide/16 v12, 0x64

    invoke-static {v10, v12, v13}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 2035
    const/4 v10, 0x1

    goto/16 :goto_0
.end method

.class Lorg/telegram/ui/StickerPreviewViewer$3;
.super Ljava/lang/Object;
.source "StickerPreviewViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/StickerPreviewViewer;->onInterceptTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;ILorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/StickerPreviewViewer;

.field final synthetic val$height:I

.field final synthetic val$listView:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/telegram/ui/StickerPreviewViewer;Landroid/view/View;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/StickerPreviewViewer;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    iput-object p2, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->val$listView:Landroid/view/View;

    iput p3, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$600(Lorg/telegram/ui/StickerPreviewViewer;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->val$listView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->val$listView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->val$listView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-static {v0, v1}, Lorg/telegram/ui/StickerPreviewViewer;->access$602(Lorg/telegram/ui/StickerPreviewViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->val$listView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/StickerPreviewViewer;->setParentActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    iget v1, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->val$height:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/StickerPreviewViewer;->setKeyboardHeight(I)V

    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$700(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$700(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$700(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/StickerEmojiCell;->isRecent()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/StickerPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$700(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->val$listView:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->val$listView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->val$listView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$700(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$700(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/StickerCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/StickerCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/StickerPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$700(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/StickerCell;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/StickerCell;->setScaled(Z)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$700(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$700(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ContextLinkCell;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/StickerPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$3;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$700(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/ContextLinkCell;->setScaled(Z)V

    goto/16 :goto_0
.end method

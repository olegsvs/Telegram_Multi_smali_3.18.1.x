.class Lorg/telegram/ui/StickerPreviewViewer$1$1;
.super Ljava/lang/Object;
.source "StickerPreviewViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/StickerPreviewViewer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/StickerPreviewViewer$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/StickerPreviewViewer$1;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/StickerPreviewViewer$1;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/StickerPreviewViewer$1$1;->this$1:Lorg/telegram/ui/StickerPreviewViewer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$1$1;->this$1:Lorg/telegram/ui/StickerPreviewViewer$1;

    iget-object v0, v0, Lorg/telegram/ui/StickerPreviewViewer$1;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$100(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$1$1;->this$1:Lorg/telegram/ui/StickerPreviewViewer$1;

    iget-object v0, v0, Lorg/telegram/ui/StickerPreviewViewer$1;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$300(Lorg/telegram/ui/StickerPreviewViewer;)Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$1$1;->this$1:Lorg/telegram/ui/StickerPreviewViewer$1;

    iget-object v0, v0, Lorg/telegram/ui/StickerPreviewViewer$1;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$300(Lorg/telegram/ui/StickerPreviewViewer;)Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer$1$1;->this$1:Lorg/telegram/ui/StickerPreviewViewer$1;

    iget-object v1, v1, Lorg/telegram/ui/StickerPreviewViewer$1;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/StickerPreviewViewer;->access$400(Lorg/telegram/ui/StickerPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;->sentSticker(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$1$1;->this$1:Lorg/telegram/ui/StickerPreviewViewer$1;

    iget-object v0, v0, Lorg/telegram/ui/StickerPreviewViewer$1;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$300(Lorg/telegram/ui/StickerPreviewViewer;)Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer$1$1;->this$1:Lorg/telegram/ui/StickerPreviewViewer$1;

    iget-object v1, v1, Lorg/telegram/ui/StickerPreviewViewer$1;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/StickerPreviewViewer;->access$200(Lorg/telegram/ui/StickerPreviewViewer;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;->openSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V

    goto :goto_0
.end method

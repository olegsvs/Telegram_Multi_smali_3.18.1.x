.class Lorg/telegram/ui/StickerPreviewViewer$1;
.super Ljava/lang/Object;
.source "StickerPreviewViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/StickerPreviewViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/StickerPreviewViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/StickerPreviewViewer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/StickerPreviewViewer;

    .prologue
    .line 87
    iput-object p1, p0, Lorg/telegram/ui/StickerPreviewViewer$1;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 90
    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer$1;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/StickerPreviewViewer;->access$100(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer$1;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/StickerPreviewViewer;->access$200(Lorg/telegram/ui/StickerPreviewViewer;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v1

    if-nez v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer$1;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/StickerPreviewViewer;->access$100(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 94
    .local v0, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const-string/jumbo v2, "SendStickerPreview"

    const v3, 0x7f07059b

    .line 95
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    const-string/jumbo v3, "ViewPackPreview"

    const v4, 0x7f070675

    new-array v5, v5, [Ljava/lang/Object;

    .line 96
    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lorg/telegram/ui/StickerPreviewViewer$1$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/StickerPreviewViewer$1$1;-><init>(Lorg/telegram/ui/StickerPreviewViewer$1;)V

    .line 94
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 111
    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer$1;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/StickerPreviewViewer;->access$502(Lorg/telegram/ui/StickerPreviewViewer;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 112
    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer$1;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/StickerPreviewViewer;->access$500(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/app/Dialog;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/StickerPreviewViewer$1$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/StickerPreviewViewer$1$2;-><init>(Lorg/telegram/ui/StickerPreviewViewer$1;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 119
    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer$1;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/StickerPreviewViewer;->access$500(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

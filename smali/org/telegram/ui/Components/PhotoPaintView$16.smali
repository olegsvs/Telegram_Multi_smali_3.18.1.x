.class Lorg/telegram/ui/Components/PhotoPaintView$16;
.super Ljava/lang/Object;
.source "PhotoPaintView.java"

# interfaces
.implements Lorg/telegram/ui/Components/StickerMasksView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoPaintView;->openStickersView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoPaintView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 873
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoPaintView$16;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStickerSelected(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 1
    .param p1, "sticker"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 876
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$16;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$1700(Lorg/telegram/ui/Components/PhotoPaintView;)V

    .line 877
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$16;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/PhotoPaintView;->access$1800(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 878
    return-void
.end method

.method public onTypeChanged()V
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$16;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$1900(Lorg/telegram/ui/Components/PhotoPaintView;)V

    .line 883
    return-void
.end method

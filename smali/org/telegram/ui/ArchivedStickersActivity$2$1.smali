.class Lorg/telegram/ui/ArchivedStickersActivity$2$1;
.super Ljava/lang/Object;
.source "ArchivedStickersActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArchivedStickersActivity$2;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArchivedStickersActivity$2;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArchivedStickersActivity$2;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ArchivedStickersActivity$2;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/ArchivedStickersActivity$2$1;->this$1:Lorg/telegram/ui/ArchivedStickersActivity$2;

    iput-object p2, p0, Lorg/telegram/ui/ArchivedStickersActivity$2$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStickerSetInstalled()V
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity$2$1;->val$view:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;

    .local v0, "cell":Lorg/telegram/ui/Cells/ArchivedStickerSetCell;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->setChecked(Z)V

    return-void
.end method

.method public onStickerSetUninstalled()V
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity$2$1;->val$view:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;

    .local v0, "cell":Lorg/telegram/ui/Cells/ArchivedStickerSetCell;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->setChecked(Z)V

    return-void
.end method

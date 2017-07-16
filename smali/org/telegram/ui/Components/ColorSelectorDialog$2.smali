.class Lorg/telegram/ui/Components/ColorSelectorDialog$2;
.super Ljava/lang/Object;
.source "ColorSelectorDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ColorSelectorDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ColorSelectorDialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ColorSelectorDialog;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ColorSelectorDialog;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/ColorSelectorDialog$2;->this$0:Lorg/telegram/ui/Components/ColorSelectorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog$2;->this$0:Lorg/telegram/ui/Components/ColorSelectorDialog;

    invoke-static {v0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->access$000(Lorg/telegram/ui/Components/ColorSelectorDialog;)Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog$2;->this$0:Lorg/telegram/ui/Components/ColorSelectorDialog;

    invoke-static {v0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->access$000(Lorg/telegram/ui/Components/ColorSelectorDialog;)Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorSelectorDialog$2;->this$0:Lorg/telegram/ui/Components/ColorSelectorDialog;

    invoke-static {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->access$100(Lorg/telegram/ui/Components/ColorSelectorDialog;)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;->colorChanged(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog$2;->this$0:Lorg/telegram/ui/Components/ColorSelectorDialog;

    invoke-static {v0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->access$200(Lorg/telegram/ui/Components/ColorSelectorDialog;)Lorg/telegram/ui/Components/HistorySelectorView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorSelectorDialog$2;->this$0:Lorg/telegram/ui/Components/ColorSelectorDialog;

    invoke-static {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->access$100(Lorg/telegram/ui/Components/ColorSelectorDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HistorySelectorView;->selectColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog$2;->this$0:Lorg/telegram/ui/Components/ColorSelectorDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->dismiss()V

    return-void
.end method

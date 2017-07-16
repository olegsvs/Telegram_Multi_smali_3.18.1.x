.class Lorg/telegram/ui/Components/HexSelectorView$1;
.super Ljava/lang/Object;
.source "HexSelectorView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/HexSelectorView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/HexSelectorView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/HexSelectorView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/HexSelectorView;

    .prologue
    .line 73
    iput-object p1, p0, Lorg/telegram/ui/Components/HexSelectorView$1;->this$0:Lorg/telegram/ui/Components/HexSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 76
    if-eqz p2, :cond_0

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/HexSelectorView$1;->this$0:Lorg/telegram/ui/Components/HexSelectorView;

    invoke-static {v0}, Lorg/telegram/ui/Components/HexSelectorView;->access$000(Lorg/telegram/ui/Components/HexSelectorView;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/HexSelectorView$1;->this$0:Lorg/telegram/ui/Components/HexSelectorView;

    invoke-static {v0}, Lorg/telegram/ui/Components/HexSelectorView;->access$000(Lorg/telegram/ui/Components/HexSelectorView;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 79
    :cond_0
    return-void
.end method

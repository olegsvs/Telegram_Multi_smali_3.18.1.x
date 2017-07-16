.class Lorg/telegram/ui/Components/HexSelectorView$2;
.super Ljava/lang/Object;
.source "HexSelectorView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 81
    iput-object p1, p0, Lorg/telegram/ui/Components/HexSelectorView$2;->this$0:Lorg/telegram/ui/Components/HexSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 84
    const-string/jumbo v0, "HexSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onKey: keyCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lorg/telegram/ui/Components/HexSelectorView$2;->this$0:Lorg/telegram/ui/Components/HexSelectorView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/HexSelectorView;->validateColorInTextView()V

    .line 86
    const/4 v0, 0x0

    return v0
.end method

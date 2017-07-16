.class Lorg/telegram/ui/Components/HexSelectorView$3;
.super Ljava/lang/Object;
.source "HexSelectorView.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 89
    iput-object p1, p0, Lorg/telegram/ui/Components/HexSelectorView$3;->this$0:Lorg/telegram/ui/Components/HexSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/ui/Components/HexSelectorView$3;->this$0:Lorg/telegram/ui/Components/HexSelectorView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/HexSelectorView;->validateColorInTextView()V

    .line 100
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 96
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 92
    return-void
.end method

.class Lorg/telegram/ui/Components/ColorSelectorDialog$3;
.super Ljava/lang/Object;
.source "ColorSelectorDialog.java"

# interfaces
.implements Lorg/telegram/ui/Components/ColorSelectorView$OnColorChangedListener;


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
    .line 126
    iput-object p1, p0, Lorg/telegram/ui/Components/ColorSelectorDialog$3;->this$0:Lorg/telegram/ui/Components/ColorSelectorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog$3;->this$0:Lorg/telegram/ui/Components/ColorSelectorDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->access$300(Lorg/telegram/ui/Components/ColorSelectorDialog;I)V

    .line 130
    return-void
.end method

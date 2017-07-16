.class Lorg/telegram/ui/Components/ColorSelectorView$1;
.super Ljava/lang/Object;
.source "ColorSelectorView.java"

# interfaces
.implements Lorg/telegram/ui/Components/HsvSelectorView$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ColorSelectorView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ColorSelectorView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ColorSelectorView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ColorSelectorView;

    .prologue
    .line 97
    iput-object p1, p0, Lorg/telegram/ui/Components/ColorSelectorView$1;->this$0:Lorg/telegram/ui/Components/ColorSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorView$1;->this$0:Lorg/telegram/ui/Components/ColorSelectorView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ColorSelectorView;->setColor(I)V

    .line 101
    return-void
.end method

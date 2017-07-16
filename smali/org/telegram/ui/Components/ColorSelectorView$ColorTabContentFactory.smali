.class Lorg/telegram/ui/Components/ColorSelectorView$ColorTabContentFactory;
.super Ljava/lang/Object;
.source "ColorSelectorView.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ColorSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ColorTabContentFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ColorSelectorView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ColorSelectorView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ColorSelectorView;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/ColorSelectorView$ColorTabContentFactory;->this$0:Lorg/telegram/ui/Components/ColorSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v0, "HSV"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorView$ColorTabContentFactory;->this$0:Lorg/telegram/ui/Components/ColorSelectorView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ColorSelectorView;->access$000(Lorg/telegram/ui/Components/ColorSelectorView;)Lorg/telegram/ui/Components/HsvSelectorView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "RGB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorView$ColorTabContentFactory;->this$0:Lorg/telegram/ui/Components/ColorSelectorView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ColorSelectorView;->access$100(Lorg/telegram/ui/Components/ColorSelectorView;)Lorg/telegram/ui/Components/RgbSelectorView;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "HEX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorView$ColorTabContentFactory;->this$0:Lorg/telegram/ui/Components/ColorSelectorView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ColorSelectorView;->access$200(Lorg/telegram/ui/Components/ColorSelectorView;)Lorg/telegram/ui/Components/HexSelectorView;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

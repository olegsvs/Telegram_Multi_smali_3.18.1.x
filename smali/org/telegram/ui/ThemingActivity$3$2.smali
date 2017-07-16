.class Lorg/telegram/ui/ThemingActivity$3$2;
.super Ljava/lang/Object;
.source "ThemingActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ThemingActivity$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ThemingActivity$3;

    .prologue
    .line 220
    iput-object p1, p0, Lorg/telegram/ui/ThemingActivity$3$2;->this$1:Lorg/telegram/ui/ThemingActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 223
    sput p1, Lorg/telegram/ui/ActionBar/Theme;->dialogColor:I

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/ThemingActivity$3$2;->this$1:Lorg/telegram/ui/ThemingActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    const-string/jumbo v1, "dialogColor"

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/ThemingActivity;->access$500(Lorg/telegram/ui/ThemingActivity;Ljava/lang/String;I)V

    .line 225
    return-void
.end method

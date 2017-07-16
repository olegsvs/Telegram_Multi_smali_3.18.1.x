.class Lorg/telegram/ui/ThemingSettingsActivity$3$10;
.super Ljava/lang/Object;
.source "ThemingSettingsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingSettingsActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ThemingSettingsActivity$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingSettingsActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ThemingSettingsActivity$3;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3$10;->this$1:Lorg/telegram/ui/ThemingSettingsActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    sput p1, Lorg/telegram/ui/ActionBar/Theme;->prefSectionColor:I

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$3$10;->this$1:Lorg/telegram/ui/ThemingSettingsActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    const-string/jumbo v1, "prefSectionColor"

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/ThemingSettingsActivity;->access$300(Lorg/telegram/ui/ThemingSettingsActivity;Ljava/lang/String;I)V

    return-void
.end method

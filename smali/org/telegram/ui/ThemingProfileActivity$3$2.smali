.class Lorg/telegram/ui/ThemingProfileActivity$3$2;
.super Ljava/lang/Object;
.source "ThemingProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingProfileActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ThemingProfileActivity$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingProfileActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ThemingProfileActivity$3;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/ThemingProfileActivity$3$2;->this$1:Lorg/telegram/ui/ThemingProfileActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$3$2;->this$1:Lorg/telegram/ui/ThemingProfileActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    const-string/jumbo v1, "profileHeaderGradient"

    invoke-static {v0, v1, p2}, Lorg/telegram/ui/ThemingProfileActivity;->access$300(Lorg/telegram/ui/ThemingProfileActivity;Ljava/lang/String;I)V

    sput p2, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarGradientList:I

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$3$2;->this$1:Lorg/telegram/ui/ThemingProfileActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$500(Lorg/telegram/ui/ThemingProfileActivity;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$3$2;->this$1:Lorg/telegram/ui/ThemingProfileActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ThemingProfileActivity$3;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$500(Lorg/telegram/ui/ThemingProfileActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    :cond_0
    return-void
.end method

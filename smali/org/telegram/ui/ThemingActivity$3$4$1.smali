.class Lorg/telegram/ui/ThemingActivity$3$4$1;
.super Ljava/lang/Object;
.source "ThemingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingActivity$3$4;->didSelectFiles(Lorg/telegram/ui/DocumentSelectActivity;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ThemingActivity$3$4;

.field final synthetic val$wName:Ljava/lang/String;

.field final synthetic val$xmlFile:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingActivity$3$4;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/ThemingActivity$3$4;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/ThemingActivity$3$4$1;->this$2:Lorg/telegram/ui/ThemingActivity$3$4;

    iput-object p2, p0, Lorg/telegram/ui/ThemingActivity$3$4$1;->val$xmlFile:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/ThemingActivity$3$4$1;->val$wName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    new-instance v0, Lorg/telegram/ui/ThemingActivity$3$4$1$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ThemingActivity$3$4$1$1;-><init>(Lorg/telegram/ui/ThemingActivity$3$4$1;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

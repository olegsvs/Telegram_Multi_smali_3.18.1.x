.class Lorg/telegram/ui/PlusSettingsActivity$4;
.super Ljava/lang/Object;
.source "PlusSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PlusSettingsActivity;->restoreSettings(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PlusSettingsActivity;

.field final synthetic val$favExists:Z

.field final synthetic val$favFilePath:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$xmlFile:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PlusSettingsActivity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 1449
    iput-object p1, p0, Lorg/telegram/ui/PlusSettingsActivity$4;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    iput-object p2, p0, Lorg/telegram/ui/PlusSettingsActivity$4;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/PlusSettingsActivity$4;->val$xmlFile:Ljava/lang/String;

    iput-boolean p4, p0, Lorg/telegram/ui/PlusSettingsActivity$4;->val$favExists:Z

    iput-object p5, p0, Lorg/telegram/ui/PlusSettingsActivity$4;->val$favFilePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1452
    new-instance v0, Lorg/telegram/ui/PlusSettingsActivity$4$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PlusSettingsActivity$4$1;-><init>(Lorg/telegram/ui/PlusSettingsActivity$4;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1473
    return-void
.end method

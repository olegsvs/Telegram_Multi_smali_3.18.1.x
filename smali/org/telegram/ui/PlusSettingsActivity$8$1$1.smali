.class Lorg/telegram/ui/PlusSettingsActivity$8$1$1;
.super Ljava/lang/Object;
.source "PlusSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PlusSettingsActivity$8$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/PlusSettingsActivity$8$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PlusSettingsActivity$8$1;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/PlusSettingsActivity$8$1;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/PlusSettingsActivity$8$1$1;->this$2:Lorg/telegram/ui/PlusSettingsActivity$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$8$1$1;->this$2:Lorg/telegram/ui/PlusSettingsActivity$8$1;

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$8$1;->this$1:Lorg/telegram/ui/PlusSettingsActivity$8;

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$8;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PlusSettingsActivity;->getUserAbout()V

    return-void
.end method

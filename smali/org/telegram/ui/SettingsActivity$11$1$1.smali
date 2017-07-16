.class Lorg/telegram/ui/SettingsActivity$11$1$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SettingsActivity$11$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/SettingsActivity$11$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SettingsActivity$11$1;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/SettingsActivity$11$1;

    .prologue
    .line 1135
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$11$1$1;->this$2:Lorg/telegram/ui/SettingsActivity$11$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1138
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$11$1$1;->this$2:Lorg/telegram/ui/SettingsActivity$11$1;

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$11$1;->this$1:Lorg/telegram/ui/SettingsActivity$11;

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$11;->this$0:Lorg/telegram/ui/SettingsActivity;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$11$1$1;->this$2:Lorg/telegram/ui/SettingsActivity$11$1;

    iget-object v1, v1, Lorg/telegram/ui/SettingsActivity$11$1;->this$1:Lorg/telegram/ui/SettingsActivity$11;

    iget v1, v1, Lorg/telegram/ui/SettingsActivity$11;->val$uid:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/SettingsActivity;->getUserAbout(I)V

    .line 1139
    return-void
.end method

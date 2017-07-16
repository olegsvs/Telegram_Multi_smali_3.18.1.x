.class Lorg/telegram/ui/PlusSettingsActivity$9$1;
.super Ljava/lang/Object;
.source "PlusSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PlusSettingsActivity$9;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PlusSettingsActivity$9;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PlusSettingsActivity$9;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PlusSettingsActivity$9;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/PlusSettingsActivity$9$1;->this$1:Lorg/telegram/ui/PlusSettingsActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    return-void
.end method

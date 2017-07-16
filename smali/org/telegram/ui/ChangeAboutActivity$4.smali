.class Lorg/telegram/ui/ChangeAboutActivity$4;
.super Ljava/lang/Object;
.source "ChangeAboutActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeAboutActivity;->saveAbout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangeAboutActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeAboutActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChangeAboutActivity;

    .prologue
    .line 169
    iput-object p1, p0, Lorg/telegram/ui/ChangeAboutActivity$4;->this$0:Lorg/telegram/ui/ChangeAboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 172
    if-eqz p2, :cond_0

    .line 175
    :cond_0
    if-eqz p1, :cond_1

    .line 177
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChangeAboutActivity$4;->this$0:Lorg/telegram/ui/ChangeAboutActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChangeAboutActivity;->access$300(Lorg/telegram/ui/ChangeAboutActivity;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->loadFullUser(Lorg/telegram/tgnet/TLRPC$User;IZ)V

    .line 178
    new-instance v0, Lorg/telegram/ui/ChangeAboutActivity$4$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChangeAboutActivity$4$1;-><init>(Lorg/telegram/ui/ChangeAboutActivity$4;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 186
    :cond_1
    return-void
.end method

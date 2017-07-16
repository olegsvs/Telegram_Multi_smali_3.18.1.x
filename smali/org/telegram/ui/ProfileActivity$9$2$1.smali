.class Lorg/telegram/ui/ProfileActivity$9$2$1;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$9$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ProfileActivity$9$2;

.field final synthetic val$req:Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$9$2;Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/ProfileActivity$9$2;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$9$2$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$2;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$9$2$1;->val$req:Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    if-nez p2, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    .end local p1    # "response":Lorg/telegram/tgnet/TLObject;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    new-instance v0, Lorg/telegram/ui/ProfileActivity$9$2$1$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ProfileActivity$9$2$1$1;-><init>(Lorg/telegram/ui/ProfileActivity$9$2$1;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :goto_0
    return-void

    .restart local p1    # "response":Lorg/telegram/tgnet/TLObject;
    :cond_0
    new-instance v0, Lorg/telegram/ui/ProfileActivity$9$2$1$2;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/ProfileActivity$9$2$1$2;-><init>(Lorg/telegram/ui/ProfileActivity$9$2$1;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

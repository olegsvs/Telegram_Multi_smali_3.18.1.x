.class Lorg/telegram/ui/ProfileActivity$9$2$1$2;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$9$2$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/ui/ProfileActivity$9$2$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$9$2$1;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0
    .param p1, "this$3"    # Lorg/telegram/ui/ProfileActivity$9$2$1;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$9$2$1$2;->this$3:Lorg/telegram/ui/ProfileActivity$9$2$1;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$9$2$1$2;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$9$2$1$2;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$9$2$1$2;->this$3:Lorg/telegram/ui/ProfileActivity$9$2$1;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity$9$2$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$2;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity$9$2;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$9$2$1$2;->this$3:Lorg/telegram/ui/ProfileActivity$9$2$1;

    iget-object v2, v2, Lorg/telegram/ui/ProfileActivity$9$2$1;->val$req:Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Components/AlertsCreator;->processError(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

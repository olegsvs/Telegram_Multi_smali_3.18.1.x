.class Lorg/telegram/ui/PlusSettingsActivity$8$1;
.super Ljava/lang/Object;
.source "PlusSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PlusSettingsActivity$8;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PlusSettingsActivity$8;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PlusSettingsActivity$8;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PlusSettingsActivity$8;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/PlusSettingsActivity$8$1;->this$1:Lorg/telegram/ui/PlusSettingsActivity$8;

    iput-object p2, p0, Lorg/telegram/ui/PlusSettingsActivity$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/PlusSettingsActivity$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$8$1;->this$1:Lorg/telegram/ui/PlusSettingsActivity$8;

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$8;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$8202(Lorg/telegram/ui/PlusSettingsActivity;I)I

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$8$1;->this$1:Lorg/telegram/ui/PlusSettingsActivity$8;

    iget-object v1, v0, Lorg/telegram/ui/PlusSettingsActivity$8;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    invoke-static {v1, v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$8302(Lorg/telegram/ui/PlusSettingsActivity;Lorg/telegram/tgnet/TLRPC$WebPage;)Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$8$1;->this$1:Lorg/telegram/ui/PlusSettingsActivity$8;

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$8;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$8300(Lorg/telegram/ui/PlusSettingsActivity;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$8$1;->this$1:Lorg/telegram/ui/PlusSettingsActivity$8;

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$8;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$8$1;->this$1:Lorg/telegram/ui/PlusSettingsActivity$8;

    iget-object v1, v1, Lorg/telegram/ui/PlusSettingsActivity$8;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$8300(Lorg/telegram/ui/PlusSettingsActivity;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$8402(Lorg/telegram/ui/PlusSettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$8$1;->this$1:Lorg/telegram/ui/PlusSettingsActivity$8;

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$8;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PlusSettingsActivity;->setUserAbout()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$8$1;->this$1:Lorg/telegram/ui/PlusSettingsActivity$8;

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$8;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$8500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$8$1;->this$1:Lorg/telegram/ui/PlusSettingsActivity$8;

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$8;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/PlusSettingsActivity;->access$8502(Lorg/telegram/ui/PlusSettingsActivity;I)I

    new-instance v0, Lorg/telegram/ui/PlusSettingsActivity$8$1$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PlusSettingsActivity$8$1$1;-><init>(Lorg/telegram/ui/PlusSettingsActivity$8$1;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

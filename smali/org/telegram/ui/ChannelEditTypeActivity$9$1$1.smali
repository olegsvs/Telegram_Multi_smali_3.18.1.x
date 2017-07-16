.class Lorg/telegram/ui/ChannelEditTypeActivity$9$1$1;
.super Ljava/lang/Object;
.source "ChannelEditTypeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditTypeActivity$9$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChannelEditTypeActivity$9$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditTypeActivity$9$1;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/ChannelEditTypeActivity$9$1;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1$1;->this$2:Lorg/telegram/ui/ChannelEditTypeActivity$9$1;

    iput-object p2, p0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1$1;->this$2:Lorg/telegram/ui/ChannelEditTypeActivity$9$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$9;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$9;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v0, v5}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$1502(Lorg/telegram/ui/ChannelEditTypeActivity;I)I

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1$1;->this$2:Lorg/telegram/ui/ChannelEditTypeActivity$9$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$9;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$9;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$1600(Lorg/telegram/ui/ChannelEditTypeActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1$1;->this$2:Lorg/telegram/ui/ChannelEditTypeActivity$9$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$9;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$9;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$1600(Lorg/telegram/ui/ChannelEditTypeActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1$1;->this$2:Lorg/telegram/ui/ChannelEditTypeActivity$9$1;

    iget-object v1, v1, Lorg/telegram/ui/ChannelEditTypeActivity$9$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$9;

    iget-object v1, v1, Lorg/telegram/ui/ChannelEditTypeActivity$9;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1$1;->this$2:Lorg/telegram/ui/ChannelEditTypeActivity$9$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$9;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$9;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$800(Lorg/telegram/ui/ChannelEditTypeActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "LinkAvailable"

    const v2, 0x7f070347

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1$1;->this$2:Lorg/telegram/ui/ChannelEditTypeActivity$9$1;

    iget-object v4, v4, Lorg/telegram/ui/ChannelEditTypeActivity$9$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/ChannelEditTypeActivity$9;->val$name:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1$1;->this$2:Lorg/telegram/ui/ChannelEditTypeActivity$9$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$9;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$9;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$800(Lorg/telegram/ui/ChannelEditTypeActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "windowBackgroundWhiteGreenText"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1$1;->this$2:Lorg/telegram/ui/ChannelEditTypeActivity$9$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$9;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$9;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$800(Lorg/telegram/ui/ChannelEditTypeActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "windowBackgroundWhiteGreenText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1$1;->this$2:Lorg/telegram/ui/ChannelEditTypeActivity$9$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$9;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$9;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v0, v6}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$702(Lorg/telegram/ui/ChannelEditTypeActivity;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "CHANNELS_ADMIN_PUBLIC_TOO_MUCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1$1;->this$2:Lorg/telegram/ui/ChannelEditTypeActivity$9$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$9;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$9;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v0, v5}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$202(Lorg/telegram/ui/ChannelEditTypeActivity;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1$1;->this$2:Lorg/telegram/ui/ChannelEditTypeActivity$9$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$9;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$9;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$300(Lorg/telegram/ui/ChannelEditTypeActivity;)V

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1$1;->this$2:Lorg/telegram/ui/ChannelEditTypeActivity$9$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$9;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$9;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$1700(Lorg/telegram/ui/ChannelEditTypeActivity;)Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    move-result-object v0

    const-string/jumbo v1, "windowBackgroundWhiteRedText4"

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1$1;->this$2:Lorg/telegram/ui/ChannelEditTypeActivity$9$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$9;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$9;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$1700(Lorg/telegram/ui/ChannelEditTypeActivity;)Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    move-result-object v0

    const-string/jumbo v1, "windowBackgroundWhiteRedText4"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1$1;->this$2:Lorg/telegram/ui/ChannelEditTypeActivity$9$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$9;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$9;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v0, v5}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$702(Lorg/telegram/ui/ChannelEditTypeActivity;Z)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1$1;->this$2:Lorg/telegram/ui/ChannelEditTypeActivity$9$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$9;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditTypeActivity$9;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$800(Lorg/telegram/ui/ChannelEditTypeActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "LinkInUse"

    const v2, 0x7f07034a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

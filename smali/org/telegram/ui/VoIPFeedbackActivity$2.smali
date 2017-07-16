.class Lorg/telegram/ui/VoIPFeedbackActivity$2;
.super Ljava/lang/Object;
.source "VoIPFeedbackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPFeedbackActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VoIPFeedbackActivity;

.field final synthetic val$bar:Lorg/telegram/ui/Components/BetterRatingView;

.field final synthetic val$commentBox:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPFeedbackActivity;Lorg/telegram/ui/Components/BetterRatingView;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/VoIPFeedbackActivity;

    .prologue
    .line 66
    iput-object p1, p0, Lorg/telegram/ui/VoIPFeedbackActivity$2;->this$0:Lorg/telegram/ui/VoIPFeedbackActivity;

    iput-object p2, p0, Lorg/telegram/ui/VoIPFeedbackActivity$2;->val$bar:Lorg/telegram/ui/Components/BetterRatingView;

    iput-object p3, p0, Lorg/telegram/ui/VoIPFeedbackActivity$2;->val$commentBox:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 69
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;-><init>()V

    .line 70
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;
    iget-object v1, p0, Lorg/telegram/ui/VoIPFeedbackActivity$2;->val$bar:Lorg/telegram/ui/Components/BetterRatingView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BetterRatingView;->getRating()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;->rating:I

    .line 71
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;->rating:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 72
    iget-object v1, p0, Lorg/telegram/ui/VoIPFeedbackActivity$2;->val$commentBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;->comment:Ljava/lang/String;

    .line 75
    :goto_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 76
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    iget-object v2, p0, Lorg/telegram/ui/VoIPFeedbackActivity$2;->this$0:Lorg/telegram/ui/VoIPFeedbackActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/VoIPFeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "call_access_hash"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 77
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    iget-object v2, p0, Lorg/telegram/ui/VoIPFeedbackActivity$2;->this$0:Lorg/telegram/ui/VoIPFeedbackActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/VoIPFeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "call_id"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 78
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/VoIPFeedbackActivity$2$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPFeedbackActivity$2$1;-><init>(Lorg/telegram/ui/VoIPFeedbackActivity$2;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 87
    iget-object v1, p0, Lorg/telegram/ui/VoIPFeedbackActivity$2;->this$0:Lorg/telegram/ui/VoIPFeedbackActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/VoIPFeedbackActivity;->finish()V

    .line 88
    return-void

    .line 74
    :cond_0
    const-string/jumbo v1, ""

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;->comment:Ljava/lang/String;

    goto :goto_0
.end method

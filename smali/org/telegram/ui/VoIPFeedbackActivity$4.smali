.class Lorg/telegram/ui/VoIPFeedbackActivity$4;
.super Ljava/lang/Object;
.source "VoIPFeedbackActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/BetterRatingView$OnRatingChangeListener;


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

.field final synthetic val$btn:Landroid/view/View;

.field final synthetic val$commentBox:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPFeedbackActivity;Landroid/view/View;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/VoIPFeedbackActivity;

    .prologue
    .line 106
    iput-object p1, p0, Lorg/telegram/ui/VoIPFeedbackActivity$4;->this$0:Lorg/telegram/ui/VoIPFeedbackActivity;

    iput-object p2, p0, Lorg/telegram/ui/VoIPFeedbackActivity$4;->val$btn:Landroid/view/View;

    iput-object p3, p0, Lorg/telegram/ui/VoIPFeedbackActivity$4;->val$commentBox:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRatingChanged(I)V
    .locals 4
    .param p1, "rating"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 109
    iget-object v3, p0, Lorg/telegram/ui/VoIPFeedbackActivity$4;->val$btn:Landroid/view/View;

    if-lez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 110
    iget-object v3, p0, Lorg/telegram/ui/VoIPFeedbackActivity$4;->val$commentBox:Landroid/widget/EditText;

    const/4 v0, 0x5

    if-ge p1, v0, :cond_2

    if-lez p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lorg/telegram/ui/VoIPFeedbackActivity$4;->val$commentBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/VoIPFeedbackActivity$4;->this$0:Lorg/telegram/ui/VoIPFeedbackActivity;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v0, v2}, Lorg/telegram/ui/VoIPFeedbackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lorg/telegram/ui/VoIPFeedbackActivity$4;->val$commentBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 114
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 109
    goto :goto_0

    :cond_2
    move v0, v2

    .line 110
    goto :goto_1
.end method

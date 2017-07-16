.class Lorg/telegram/ui/ChangeNameActivity$3;
.super Ljava/lang/Object;
.source "ChangeNameActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeNameActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangeNameActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeNameActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChangeNameActivity;

    .prologue
    .line 114
    iput-object p1, p0, Lorg/telegram/ui/ChangeNameActivity$3;->this$0:Lorg/telegram/ui/ChangeNameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "i"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 117
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/telegram/ui/ChangeNameActivity$3;->this$0:Lorg/telegram/ui/ChangeNameActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChangeNameActivity;->access$200(Lorg/telegram/ui/ChangeNameActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ChangeNameActivity$3;->this$0:Lorg/telegram/ui/ChangeNameActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChangeNameActivity;->access$200(Lorg/telegram/ui/ChangeNameActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity$3;->this$0:Lorg/telegram/ui/ChangeNameActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChangeNameActivity;->access$200(Lorg/telegram/ui/ChangeNameActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 120
    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

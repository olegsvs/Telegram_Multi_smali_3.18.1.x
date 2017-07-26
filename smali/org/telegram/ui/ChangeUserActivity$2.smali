.class Lorg/telegram/ui/ChangeUserActivity$2;
.super Ljava/lang/Object;
.source "ChangeUserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeUserActivity;->showAlertDeleteUser(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangeUserActivity;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeUserActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChangeUserActivity;

    .prologue
    .line 150
    iput-object p1, p0, Lorg/telegram/ui/ChangeUserActivity$2;->this$0:Lorg/telegram/ui/ChangeUserActivity;

    iput p2, p0, Lorg/telegram/ui/ChangeUserActivity$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity$2;->this$0:Lorg/telegram/ui/ChangeUserActivity;

    iget v1, p0, Lorg/telegram/ui/ChangeUserActivity$2;->val$position:I

    invoke-static {v0, v1}, Lorg/telegram/ui/ChangeUserActivity;->access$100(Lorg/telegram/ui/ChangeUserActivity;I)V

    .line 153
    return-void
.end method

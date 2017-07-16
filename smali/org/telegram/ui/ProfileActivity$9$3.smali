.class Lorg/telegram/ui/ProfileActivity$9$3;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$9;->onItemClick(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileActivity$9;

.field final synthetic val$user:Lorg/telegram/tgnet/TLRPC$ChatParticipant;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$9;Lorg/telegram/tgnet/TLRPC$ChatParticipant;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ProfileActivity$9;

    .prologue
    .line 1211
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$9$3;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$9$3;->val$user:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1214
    if-nez p2, :cond_1

    .line 1215
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$9$3;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$9$3;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$4200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->access$4700(Lorg/telegram/ui/ProfileActivity;I)V

    .line 1223
    :cond_0
    :goto_0
    return-void

    .line 1218
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 1219
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$9$3;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$9$3;->val$user:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->access$4500(Lorg/telegram/ui/ProfileActivity;I)V

    goto :goto_0

    .line 1220
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 1221
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$9$3;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$9$3;->val$user:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->access$4600(Lorg/telegram/ui/ProfileActivity;I)V

    goto :goto_0
.end method

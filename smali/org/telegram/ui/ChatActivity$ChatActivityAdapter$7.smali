.class Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$7;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->createAvatarClickMenu(ILorg/telegram/tgnet/TLRPC$User;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

.field final synthetic val$fromId:I

.field final synthetic val$user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Lorg/telegram/tgnet/TLRPC$User;I)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    .prologue
    .line 11015
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$7;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$7;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iput p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$7;->val$fromId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 11018
    if-nez p2, :cond_1

    .line 11019
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$7;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$7;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->access$20300(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Lorg/telegram/tgnet/TLRPC$User;)V

    .line 11027
    :cond_0
    :goto_0
    return-void

    .line 11020
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 11021
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$7;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$7;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->access$20400(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_0

    .line 11022
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 11023
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$7;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$7;->val$fromId:I

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->access$20600(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;I)V

    goto :goto_0

    .line 11024
    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 11025
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$7;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$7;->val$fromId:I

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->access$20700(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;I)V

    goto :goto_0
.end method

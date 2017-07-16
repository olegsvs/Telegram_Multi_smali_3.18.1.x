.class Lorg/telegram/ui/ChatActivity$85;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->updateFavoriteTitle(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$isFav:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 8157
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$85;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/ChatActivity$85;->val$isFav:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 8160
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$85;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$85;->val$isFav:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "DeleteFromFavorites"

    const v2, 0x7f0701e7

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8161
    return-void

    .line 8160
    :cond_0
    const-string/jumbo v0, "AddToFavorites"

    const v2, 0x7f070054

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

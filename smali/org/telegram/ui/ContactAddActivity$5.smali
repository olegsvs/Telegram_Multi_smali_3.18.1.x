.class Lorg/telegram/ui/ContactAddActivity$5;
.super Ljava/lang/Object;
.source "ContactAddActivity.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ContactAddActivity;->getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ContactAddActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ContactAddActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ContactAddActivity;

    .prologue
    .line 272
    iput-object p1, p0, Lorg/telegram/ui/ContactAddActivity$5;->this$0:Lorg/telegram/ui/ContactAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSetColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 275
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ContactAddActivity$5;->this$0:Lorg/telegram/ui/ContactAddActivity;

    invoke-static {v2}, Lorg/telegram/ui/ContactAddActivity;->access$100(Lorg/telegram/ui/ContactAddActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 276
    .local v0, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ContactAddActivity$5;->this$0:Lorg/telegram/ui/ContactAddActivity;

    invoke-static {v1}, Lorg/telegram/ui/ContactAddActivity;->access$400(Lorg/telegram/ui/ContactAddActivity;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 280
    iget-object v1, p0, Lorg/telegram/ui/ContactAddActivity$5;->this$0:Lorg/telegram/ui/ContactAddActivity;

    invoke-static {v1}, Lorg/telegram/ui/ContactAddActivity;->access$500(Lorg/telegram/ui/ContactAddActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->invalidate()V

    goto :goto_0
.end method

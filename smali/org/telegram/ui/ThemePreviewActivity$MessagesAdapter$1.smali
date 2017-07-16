.class Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$1;
.super Ljava/lang/Object;
.source "ThemePreviewActivity.java"

# interfaces
.implements Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    .prologue
    .line 750
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$1;->this$1:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canPerformActions()Z
    .locals 1

    .prologue
    .line 798
    const/4 v0, 0x0

    return v0
.end method

.method public didLongPressed(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;

    .prologue
    .line 789
    return-void
.end method

.method public didLongPressedAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;
    .param p2, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 794
    return-void
.end method

.method public didPressedBotButton(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .locals 0
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;
    .param p2, "button"    # Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .prologue
    .line 779
    return-void
.end method

.method public didPressedCancelSendButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;

    .prologue
    .line 784
    return-void
.end method

.method public didPressedChannelAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;I)V
    .locals 0
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;
    .param p2, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;
    .param p3, "postId"    # I

    .prologue
    .line 764
    return-void
.end method

.method public didPressedImage(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;

    .prologue
    .line 824
    return-void
.end method

.method public didPressedInstantButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;

    .prologue
    .line 829
    return-void
.end method

.method public didPressedOther(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;

    .prologue
    .line 769
    return-void
.end method

.method public didPressedReplyMessage(Lorg/telegram/ui/Cells/ChatMessageCell;I)V
    .locals 0
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;
    .param p2, "id"    # I

    .prologue
    .line 814
    return-void
.end method

.method public didPressedShare(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;

    .prologue
    .line 754
    return-void
.end method

.method public didPressedUrl(Lorg/telegram/messenger/MessageObject;Landroid/text/style/CharacterStyle;Z)V
    .locals 0
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "url"    # Landroid/text/style/CharacterStyle;
    .param p3, "longPress"    # Z

    .prologue
    .line 804
    return-void
.end method

.method public didPressedUserAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;
    .param p2, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 774
    return-void
.end method

.method public didPressedViaBot(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/String;)V
    .locals 0
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;
    .param p2, "username"    # Ljava/lang/String;

    .prologue
    .line 819
    return-void
.end method

.method public needOpenWebView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "originalUrl"    # Ljava/lang/String;
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    .line 809
    return-void
.end method

.method public needPlayAudio(Lorg/telegram/messenger/MessageObject;)Z
    .locals 1
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 758
    const/4 v0, 0x0

    return v0
.end method

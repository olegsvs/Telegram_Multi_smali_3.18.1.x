.class Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$9;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->getChannelParticipants()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

.field final synthetic val$req:Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    .prologue
    .line 11079
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$9;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$9;->val$req:Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 11082
    new-instance v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$9$1;

    invoke-direct {v2, p0, p2, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$9$1;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$9;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const-wide/16 v0, 0x12c

    :goto_0
    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 11098
    return-void

    .line 11082
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

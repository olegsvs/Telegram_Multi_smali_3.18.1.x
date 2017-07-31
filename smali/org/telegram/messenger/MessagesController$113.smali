.class final Lorg/telegram/messenger/MessagesController$113;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field final synthetic val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field final synthetic val$type:I

.field final synthetic val$un:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/BaseFragment;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 8075
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$113;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$113;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput p3, p0, Lorg/telegram/messenger/MessagesController$113;->val$type:I

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$113;->val$un:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 8078
    new-instance v0, Lorg/telegram/messenger/MessagesController$113$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/messenger/MessagesController$113$1;-><init>(Lorg/telegram/messenger/MessagesController$113;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 8115
    return-void
.end method

.class final Lorg/telegram/messenger/AndroidUtilities$6;
.super Ljava/lang/Object;
.source "AndroidUtilities.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/AndroidUtilities;->checkForThemes(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$pck:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1945
    iput-object p1, p0, Lorg/telegram/messenger/AndroidUtilities$6;->val$pck:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/messenger/AndroidUtilities$6;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1948
    new-instance v0, Lorg/telegram/messenger/AndroidUtilities$6$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/AndroidUtilities$6$1;-><init>(Lorg/telegram/messenger/AndroidUtilities$6;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1962
    return-void
.end method

.class Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/util/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PostponedUpdate"
.end annotation


# instance fields
.field currentPos:I

.field posInOwnerList:I

.field removal:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0
    .param p1, "posInOwnerList"    # I
    .param p2, "currentPos"    # I
    .param p3, "removal"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;->posInOwnerList:I

    iput p2, p0, Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;->currentPos:I

    iput-boolean p3, p0, Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;->removal:Z

    return-void
.end method

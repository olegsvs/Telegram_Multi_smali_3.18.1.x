.class public Lorg/telegram/ui/Components/UserItems;
.super Ljava/lang/Object;
.source "UserItems.java"


# instance fields
.field currentUserPosition:I

.field userName:Ljava/lang/String;

.field userPhone:Ljava/lang/String;

.field userPhoto:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/UserItems;->currentUserPosition:I

    return-void
.end method


# virtual methods
.method public getCurrent()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lorg/telegram/ui/Components/UserItems;->currentUserPosition:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lorg/telegram/ui/Components/UserItems;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/telegram/ui/Components/UserItems;->userPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoto()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/telegram/ui/Components/UserItems;->userPhoto:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setCurrent(I)V
    .locals 0
    .param p1, "currentUserPosition"    # I

    .prologue
    .line 28
    iput p1, p0, Lorg/telegram/ui/Components/UserItems;->currentUserPosition:I

    .line 29
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lorg/telegram/ui/Components/UserItems;->userName:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "userPhone"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lorg/telegram/ui/Components/UserItems;->userPhone:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setPhoto(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "userPhoto"    # Landroid/graphics/Bitmap;

    .prologue
    .line 44
    iput-object p1, p0, Lorg/telegram/ui/Components/UserItems;->userPhoto:Landroid/graphics/Bitmap;

    .line 45
    return-void
.end method

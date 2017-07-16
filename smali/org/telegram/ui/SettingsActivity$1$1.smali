.class Lorg/telegram/ui/SettingsActivity$1$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SettingsActivity$1;->didUploadedPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SettingsActivity$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SettingsActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/SettingsActivity$1;

    .prologue
    .line 201
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$1$1;->this$1:Lorg/telegram/ui/SettingsActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 11
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    const/4 v10, 0x0

    .line 204
    if-nez p2, :cond_0

    .line 205
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 206
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v4, :cond_4

    .line 207
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 208
    if-nez v4, :cond_1

    .line 242
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_0
    :goto_0
    return-void

    .line 211
    .restart local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v6, v4, v10}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    :goto_1
    move-object v1, p1

    .line 215
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;

    .line 216
    .local v1, "photo":Lorg/telegram/tgnet/TLRPC$TL_photos_photo;
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v2, v6, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 217
    .local v2, "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    const/16 v6, 0x64

    invoke-static {v2, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    .line 218
    .local v3, "smallSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    const/16 v6, 0x3e8

    invoke-static {v2, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 219
    .local v0, "bigSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhoto;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhoto;-><init>()V

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 220
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_id:J

    .line 221
    if-eqz v3, :cond_2

    .line 222
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 224
    :cond_2
    if-eqz v0, :cond_5

    .line 225
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 229
    :cond_3
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    iget v7, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesStorage;->clearUserPhotos(I)V

    .line 230
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v5, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v5, v7, v10, v8}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 233
    new-instance v6, Lorg/telegram/ui/SettingsActivity$1$1$1;

    invoke-direct {v6, p0}, Lorg/telegram/ui/SettingsActivity$1$1$1;-><init>(Lorg/telegram/ui/SettingsActivity$1$1;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 213
    .end local v0    # "bigSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v1    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photos_photo;
    .end local v2    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    .end local v3    # "smallSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v5    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_4
    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_1

    .line 226
    .restart local v0    # "bigSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .restart local v1    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photos_photo;
    .restart local v2    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    .restart local v3    # "smallSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_5
    if-eqz v3, :cond_3

    .line 227
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_2
.end method

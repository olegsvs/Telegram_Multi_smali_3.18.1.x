.class public Lorg/telegram/ui/VendorChannelsActivity;
.super Landroid/app/Activity;
.source "VendorChannelsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field static ctx:Landroid/content/Context;

.field static prepareProgress:Landroid/app/ProgressDialog;


# instance fields
.field adapter:Lorg/telegram/ui/Adapters/UserItemsAdapter;

.field public currentUser:I

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field lvUserList:Landroid/widget/ListView;

.field private userItems:Lorg/telegram/ui/Components/UserItems;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    iput-object v0, p0, Lorg/telegram/ui/VendorChannelsActivity;->lvUserList:Landroid/widget/ListView;

    .line 37
    iput-object v0, p0, Lorg/telegram/ui/VendorChannelsActivity;->adapter:Lorg/telegram/ui/Adapters/UserItemsAdapter;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/VendorChannelsActivity;->currentUser:I

    return-void
.end method

.method public static convertDpToPixel(F)F
    .locals 4
    .param p0, "dp"    # F

    .prologue
    .line 189
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 190
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    mul-float v1, p0, v2

    .line 191
    .local v1, "px":F
    return v1
.end method


# virtual methods
.method public AddObjectToList(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .prologue
    .line 149
    const-string v0, "TGM"

    const-string v1, "AddObjectToList: called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v0, Lorg/telegram/ui/Components/UserItems;

    invoke-direct {v0}, Lorg/telegram/ui/Components/UserItems;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/VendorChannelsActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    .line 151
    iget-object v0, p0, Lorg/telegram/ui/VendorChannelsActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/UserItems;->setPhone(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/VendorChannelsActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/UserItems;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 153
    iget-object v0, p0, Lorg/telegram/ui/VendorChannelsActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/UserItems;->setName(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/VendorChannelsActivity;->itemList:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/VendorChannelsActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method

.method public createRoundBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 169
    if-eqz p1, :cond_0

    .line 170
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 172
    .local v1, "circleBitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/BitmapShader;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, p1, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 173
    .local v5, "shader":Landroid/graphics/BitmapShader;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 174
    .local v3, "paint":Landroid/graphics/Paint;
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 175
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 176
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 177
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {v0, v6, v7, v8, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 178
    const/high16 v6, 0x42480000    # 50.0f

    .line 179
    invoke-static {v6}, Lorg/telegram/ui/VendorChannelsActivity;->convertDpToPixel(F)F

    move-result v6

    float-to-int v6, v6

    const/high16 v7, 0x42480000    # 50.0f

    invoke-static {v7}, Lorg/telegram/ui/VendorChannelsActivity;->convertDpToPixel(F)F

    move-result v7

    float-to-int v7, v7

    const/4 v8, 0x0

    .line 178
    invoke-static {v1, v6, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 185
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "circleBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "paint":Landroid/graphics/Paint;
    .end local v5    # "shader":Landroid/graphics/BitmapShader;
    :goto_0
    return-object v4

    .line 182
    :catch_0
    move-exception v2

    .line 183
    .local v2, "e":Ljava/lang/Throwable;
    const-string v6, "TGM"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public drawableToBitmap(I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "drawable"    # I

    .prologue
    .line 158
    const-string v3, "TGM"

    const-string v4, "drawableToBitmap: called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lorg/telegram/ui/VendorChannelsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 161
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 162
    .local v1, "currentState":Landroid/graphics/drawable/Drawable;
    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 163
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "currentState":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 164
    :cond_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/VendorChannelsActivity;->createRoundBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method public goToChannel(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 80
    const-string v1, "https://telegram.me/"

    .line 81
    .local v1, "link":Ljava/lang/String;
    const/4 v0, 0x0

    .line 82
    .local v0, "channel":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 111
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v3, 0x1f8

    invoke-virtual {p0, v2, v3}, Lorg/telegram/ui/VendorChannelsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 112
    return-void

    .line 84
    :pswitch_0
    const-string v0, "vilkaru"

    .line 85
    goto :goto_0

    .line 87
    :pswitch_1
    const-string v0, "kepchup"

    .line 88
    goto :goto_0

    .line 90
    :pswitch_2
    const-string v0, "comics_dc"

    .line 91
    goto :goto_0

    .line 93
    :pswitch_3
    const-string v0, "ruschannels"

    .line 94
    goto :goto_0

    .line 96
    :pswitch_4
    const-string v0, "neoru"

    .line 97
    goto :goto_0

    .line 99
    :pswitch_5
    const-string v0, "music_rus"

    .line 100
    goto :goto_0

    .line 102
    :pswitch_6
    const-string v0, "evill_genius"

    .line 103
    goto :goto_0

    .line 105
    :pswitch_7
    const-string v0, "my_spb"

    .line 106
    goto :goto_0

    .line 108
    :pswitch_8
    const-string v0, "mskcity"

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 47
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 48
    invoke-virtual {p0}, Lorg/telegram/ui/VendorChannelsActivity;->finish()V

    .line 49
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v2, 0x7f03079d

    invoke-virtual {p0, v2}, Lorg/telegram/ui/VendorChannelsActivity;->setContentView(I)V

    .line 58
    invoke-virtual {p0}, Lorg/telegram/ui/VendorChannelsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 59
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 60
    const v2, 0x7f070750

    invoke-virtual {p0, v2}, Lorg/telegram/ui/VendorChannelsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 62
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    .line 63
    const v2, 0x7f0200b6

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 67
    :cond_0
    :try_start_0
    sput-object p0, Lorg/telegram/ui/VendorChannelsActivity;->ctx:Landroid/content/Context;

    .line 68
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/VendorChannelsActivity;->itemList:Ljava/util/ArrayList;

    .line 69
    const v2, 0x7f0c0062

    invoke-virtual {p0, v2}, Lorg/telegram/ui/VendorChannelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lorg/telegram/ui/VendorChannelsActivity;->lvUserList:Landroid/widget/ListView;

    .line 70
    iget-object v2, p0, Lorg/telegram/ui/VendorChannelsActivity;->lvUserList:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 71
    invoke-virtual {p0}, Lorg/telegram/ui/VendorChannelsActivity;->prepareArrayList()V

    .line 72
    const-string v2, "TGM"

    const-string v3, "onCreate: prepareArray"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, "th":Ljava/lang/Throwable;
    const-string v2, "TGM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 117
    iput-object v0, p0, Lorg/telegram/ui/VendorChannelsActivity;->lvUserList:Landroid/widget/ListView;

    .line 118
    iput-object v0, p0, Lorg/telegram/ui/VendorChannelsActivity;->adapter:Lorg/telegram/ui/Adapters/UserItemsAdapter;

    .line 119
    iput-object v0, p0, Lorg/telegram/ui/VendorChannelsActivity;->itemList:Ljava/util/ArrayList;

    .line 120
    iput-object v0, p0, Lorg/telegram/ui/VendorChannelsActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    .line 121
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 122
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p3}, Lorg/telegram/ui/VendorChannelsActivity;->goToChannel(I)V

    .line 127
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 196
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 201
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 198
    :pswitch_0
    invoke-virtual {p0}, Lorg/telegram/ui/VendorChannelsActivity;->onBackPressed()V

    .line 199
    const/4 v0, 0x1

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public prepareArrayList()V
    .locals 3

    .prologue
    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/VendorChannelsActivity;->itemList:Ljava/util/ArrayList;

    .line 132
    const v0, 0x7f020300

    invoke-virtual {p0, v0}, Lorg/telegram/ui/VendorChannelsActivity;->drawableToBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "@vilkaru"

    const-string v2, "\u0421\u0430\u043c\u044b\u0435 \u043d\u043e\u0432\u044b\u0435 \u0438 \u0432\u043a\u0443\u0441\u043d\u044b\u0435 \u0440\u0435\u0446\u0435\u043f\u0442\u044b \u0442\u043e\u043b\u044c\u043a\u043e \u0443 \u043d\u0430\u0441"

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/VendorChannelsActivity;->AddObjectToList(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const v0, 0x7f020298

    invoke-virtual {p0, v0}, Lorg/telegram/ui/VendorChannelsActivity;->drawableToBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "@kepchup"

    const-string v2, "\u042e\u043c\u043e\u0440 \u0438 \u043e\u043f\u0442\u0438\u043c\u0438\u0437\u043c, \u043a\u0430\u043a \u0441\u0442\u0438\u043b\u044c \u0436\u0438\u0437\u043d\u0438!"

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/VendorChannelsActivity;->AddObjectToList(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const v0, 0x7f020299

    invoke-virtual {p0, v0}, Lorg/telegram/ui/VendorChannelsActivity;->drawableToBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "@comics_dc"

    const-string v2, "\u041a\u0438\u043d\u043e\u0432\u0441\u0435\u043b\u0435\u043d\u043d\u0430\u044f \u0441\u0443\u043f\u0435\u0440\u0433\u0435\u0440\u043e\u0435\u0432"

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/VendorChannelsActivity;->AddObjectToList(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const v0, 0x7f02029A

    invoke-virtual {p0, v0}, Lorg/telegram/ui/VendorChannelsActivity;->drawableToBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "@ruschannels"

    const-string v2, "\u041a\u0430\u0442\u0430\u043b\u043e\u0433 \u0438\u043d\u0442\u0435\u0440\u0435\u0441\u043d\u0435\u0439\u0448\u0438\u0445 \u0440\u0443\u0441\u0441\u043a\u043e\u044f\u0437\u044b\u0447\u043d\u044b\u0445 \u043a\u0430\u043d\u0430\u043b\u043e\u0432 Telegram"

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/VendorChannelsActivity;->AddObjectToList(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const v0, 0x7f02029B

    invoke-virtual {p0, v0}, Lorg/telegram/ui/VendorChannelsActivity;->drawableToBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "@neoru"

    const-string v2, "\u041d\u0435\u043e\u0440\u0438\u0442\u043e\u0440\u0438\u043a\u0430"

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/VendorChannelsActivity;->AddObjectToList(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const v0, 0x7f02029C

    invoke-virtual {p0, v0}, Lorg/telegram/ui/VendorChannelsActivity;->drawableToBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "@music_rus"

    const-string v2, "\u041b\u0443\u0447\u0448\u0430\u044f \u043c\u0443\u0437\u044b\u043a\u0430"

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/VendorChannelsActivity;->AddObjectToList(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const v0, 0x7f02029D

    invoke-virtual {p0, v0}, Lorg/telegram/ui/VendorChannelsActivity;->drawableToBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "@evill_genius"

    const-string v2, "\u0417\u043b\u043e\u0439 \u0433\u0435\u043d\u0438\u0439"

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/VendorChannelsActivity;->AddObjectToList(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const v0, 0x7f02029E

    invoke-virtual {p0, v0}, Lorg/telegram/ui/VendorChannelsActivity;->drawableToBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "@my_spb"

    const-string v2, "\u041a\u0430\u043d\u0430\u043b \u043e \u0431\u043b\u0438\u0436\u0430\u0439\u0448\u0438\u0445 \u0441\u043e\u0431\u044b\u0442\u0438\u044f\u0445 \u0432 \u0421\u0430\u043d\u043a\u0442-\u041f\u0435\u0442\u0435\u0440\u0431\u0443\u0440\u0433\u0435"

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/VendorChannelsActivity;->AddObjectToList(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const v0, 0x7f02029F

    invoke-virtual {p0, v0}, Lorg/telegram/ui/VendorChannelsActivity;->drawableToBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "@mskcity"

    const-string v2, "\u041a\u0430\u043d\u0430\u043b \u043e \u0431\u043b\u0438\u0436\u0430\u0439\u0448\u0438\u0445 \u0441\u043e\u0431\u044b\u0442\u0438\u044f\u0445 \u0432 \u041c\u043e\u0441\u043a\u0432\u0435"

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/VendorChannelsActivity;->AddObjectToList(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v0, Lorg/telegram/ui/Adapters/UserItemsAdapter;

    iget-object v1, p0, Lorg/telegram/ui/VendorChannelsActivity;->itemList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Adapters/UserItemsAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lorg/telegram/ui/VendorChannelsActivity;->adapter:Lorg/telegram/ui/Adapters/UserItemsAdapter;

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/VendorChannelsActivity;->lvUserList:Landroid/widget/ListView;

    iget-object v1, p0, Lorg/telegram/ui/VendorChannelsActivity;->adapter:Lorg/telegram/ui/Adapters/UserItemsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 144
    const-string v0, "TGM"

    const-string v1, "prepareArrayLits: setAdapters"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method

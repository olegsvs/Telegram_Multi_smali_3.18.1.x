.class public Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ThemePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ThemePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DialogsAdapter"
.end annotation


# instance fields
.field private dialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Cells/DialogCell$CustomDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ThemePreviewActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V
    .locals 10
    .param p1, "this$0"    # Lorg/telegram/ui/ThemePreviewActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 429
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 430
    iput-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->mContext:Landroid/content/Context;

    .line 431
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    .line 433
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 434
    .local v1, "date":I
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 435
    .local v0, "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    const-string/jumbo v2, "Eva Summer"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 436
    const-string/jumbo v2, "Reminds me of a Chinese prove..."

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 437
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 438
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 439
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 440
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 441
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    .line 442
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 443
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 444
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 445
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:Z

    .line 446
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    .end local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 449
    .restart local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    const-string/jumbo v2, "Alexandra Smith"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 450
    const-string/jumbo v2, "Reminds me of a Chinese prove..."

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 451
    iput v7, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 452
    iput v8, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 453
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 454
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 455
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    .line 456
    add-int/lit16 v2, v1, -0xe10

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 457
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 458
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 459
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:Z

    .line 460
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    .end local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 463
    .restart local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    const-string/jumbo v2, "Make Apple"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 464
    const-string/jumbo v2, "\ud83e\udd37\u200d\u2642\ufe0f Sticker"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 465
    iput v8, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 466
    iput v9, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 467
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 468
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 469
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    .line 470
    add-int/lit16 v2, v1, -0x1c20

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 471
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 472
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 473
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:Z

    .line 474
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    .end local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 477
    .restart local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    const-string/jumbo v2, "Paul Newman"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 478
    const-string/jumbo v2, "Any ideas?"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 479
    iput v9, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 480
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 481
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 482
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 483
    iput v8, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    .line 484
    add-int/lit16 v2, v1, -0x2a30

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 485
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 486
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 487
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:Z

    .line 488
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    .end local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 491
    .restart local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    const-string/jumbo v2, "Old Pirates"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 492
    const-string/jumbo v2, "Yo-ho-ho!"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 493
    const/4 v2, 0x4

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 494
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 495
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 496
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 497
    iput v7, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    .line 498
    add-int/lit16 v2, v1, -0x3840

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 499
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 500
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 501
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:Z

    .line 502
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    .end local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 505
    .restart local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    const-string/jumbo v2, "Kate Bright"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 506
    const-string/jumbo v2, "Hola!"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 507
    const/4 v2, 0x5

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 508
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 509
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 510
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 511
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    .line 512
    add-int/lit16 v2, v1, -0x4650

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 513
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 514
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 515
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:Z

    .line 516
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    .end local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 519
    .restart local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    const-string/jumbo v2, "Nick K"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 520
    const-string/jumbo v2, "These are not the droids you are looking for"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 521
    const/4 v2, 0x6

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 522
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 523
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 524
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 525
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    .line 526
    add-int/lit16 v2, v1, -0x5460

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 527
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 528
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 529
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:Z

    .line 530
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    .end local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 533
    .restart local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    const-string/jumbo v2, "Adler Toberg"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 534
    const-string/jumbo v2, "Did someone say peanut butter?"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 535
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 536
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 537
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 538
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 539
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    .line 540
    add-int/lit16 v2, v1, -0x6270

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 541
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 542
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 543
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:Z

    .line 544
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 580
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 581
    const/4 v0, 0x1

    .line 583
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v0, 0x1

    .line 554
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "i"    # I

    .prologue
    .line 571
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    if-nez v1, :cond_0

    .line 572
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/DialogCell;

    .line 573
    .local v0, "cell":Lorg/telegram/ui/Cells/DialogCell;
    invoke-virtual {p0}, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    .line 574
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/DialogCell;->setDialog(Lorg/telegram/ui/Cells/DialogCell$CustomDialog;)V

    .line 576
    .end local v0    # "cell":Lorg/telegram/ui/Cells/DialogCell;
    :cond_0
    return-void

    .line 573
    .restart local v0    # "cell":Lorg/telegram/ui/Cells/DialogCell;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 559
    const/4 v0, 0x0

    .line 560
    .local v0, "view":Landroid/view/View;
    if-nez p2, :cond_1

    .line 561
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/DialogCell;-><init>(Landroid/content/Context;)V

    .line 565
    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 562
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 563
    new-instance v0, Lorg/telegram/ui/Cells/LoadingCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;)V

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0
.end method

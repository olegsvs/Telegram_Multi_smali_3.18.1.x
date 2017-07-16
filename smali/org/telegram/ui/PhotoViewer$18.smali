.class Lorg/telegram/ui/PhotoViewer$18;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 1930
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 1933
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$7000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$7100(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1935
    const/4 v0, 0x0

    .line 1936
    .local v0, "videoEditedInfo":Lorg/telegram/messenger/VideoEditedInfo;
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$7200(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 1937
    new-instance v0, Lorg/telegram/messenger/VideoEditedInfo;

    .end local v0    # "videoEditedInfo":Lorg/telegram/messenger/VideoEditedInfo;
    invoke-direct {v0}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    .line 1938
    .restart local v0    # "videoEditedInfo":Lorg/telegram/messenger/VideoEditedInfo;
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$7300(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 1939
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$7400(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 1940
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$7500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    iput v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    .line 1941
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$7600(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    iput v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    .line 1942
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$7700(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    iput v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    .line 1943
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$7800(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    iput v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    .line 1944
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$7900(Lorg/telegram/ui/PhotoViewer;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    .line 1945
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$8000(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    .line 1946
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$8100(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    .line 1948
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$8200(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$8200(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$6500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_4

    .line 1949
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$7600(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    iput v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    .line 1950
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$7700(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    iput v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    .line 1951
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$8400(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    .line 1962
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$7000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$5300(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    invoke-interface {v1, v2, v0}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;)V

    .line 1963
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1, v5}, Lorg/telegram/ui/PhotoViewer;->access$7102(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 1964
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v1, v4, v4}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    .line 1966
    .end local v0    # "videoEditedInfo":Lorg/telegram/messenger/VideoEditedInfo;
    :cond_2
    return-void

    .line 1951
    .restart local v0    # "videoEditedInfo":Lorg/telegram/messenger/VideoEditedInfo;
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$8500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    goto :goto_0

    .line 1953
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$8400(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1954
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2, v5}, Lorg/telegram/ui/PhotoViewer;->access$6502(Lorg/telegram/ui/PhotoViewer;I)I

    .line 1955
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$8600(Lorg/telegram/ui/PhotoViewer;)V

    .line 1957
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$8700(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    iput v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    .line 1958
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$8800(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    iput v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    .line 1959
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$8400(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_2
    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$7800(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    goto :goto_2
.end method

.class public Lorg/telegram/messenger/audioinfo/m4a/MP4Box;
.super Ljava/lang/Object;
.source "MP4Box.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/telegram/messenger/audioinfo/util/PositionInputStream;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final ASCII:Ljava/lang/String; = "ISO8859_1"


# instance fields
.field private child:Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

.field protected final data:Ljava/io/DataInput;

.field private final input:Lorg/telegram/messenger/audioinfo/util/PositionInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private final parent:Lorg/telegram/messenger/audioinfo/m4a/MP4Box;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/audioinfo/m4a/MP4Box",
            "<*>;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/audioinfo/util/PositionInputStream;Lorg/telegram/messenger/audioinfo/m4a/MP4Box;Ljava/lang/String;)V
    .locals 1
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lorg/telegram/messenger/audioinfo/m4a/MP4Box",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/audioinfo/m4a/MP4Box;, "Lorg/telegram/messenger/audioinfo/m4a/MP4Box<TI;>;"
    .local p1, "input":Lorg/telegram/messenger/audioinfo/util/PositionInputStream;, "TI;"
    .local p2, "parent":Lorg/telegram/messenger/audioinfo/m4a/MP4Box;, "Lorg/telegram/messenger/audioinfo/m4a/MP4Box<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->input:Lorg/telegram/messenger/audioinfo/util/PositionInputStream;

    iput-object p2, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->parent:Lorg/telegram/messenger/audioinfo/m4a/MP4Box;

    iput-object p3, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->type:Ljava/lang/String;

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->data:Ljava/io/DataInput;

    return-void
.end method


# virtual methods
.method protected getChild()Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    .locals 1

    .prologue
    .local p0, "this":Lorg/telegram/messenger/audioinfo/m4a/MP4Box;, "Lorg/telegram/messenger/audioinfo/m4a/MP4Box<TI;>;"
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->child:Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    return-object v0
.end method

.method public getInput()Lorg/telegram/messenger/audioinfo/util/PositionInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/audioinfo/m4a/MP4Box;, "Lorg/telegram/messenger/audioinfo/m4a/MP4Box<TI;>;"
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->input:Lorg/telegram/messenger/audioinfo/util/PositionInputStream;

    return-object v0
.end method

.method public getParent()Lorg/telegram/messenger/audioinfo/m4a/MP4Box;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/telegram/messenger/audioinfo/m4a/MP4Box",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/audioinfo/m4a/MP4Box;, "Lorg/telegram/messenger/audioinfo/m4a/MP4Box<TI;>;"
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->parent:Lorg/telegram/messenger/audioinfo/m4a/MP4Box;

    return-object v0
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .local p0, "this":Lorg/telegram/messenger/audioinfo/m4a/MP4Box;, "Lorg/telegram/messenger/audioinfo/m4a/MP4Box<TI;>;"
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->input:Lorg/telegram/messenger/audioinfo/util/PositionInputStream;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->getPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .local p0, "this":Lorg/telegram/messenger/audioinfo/m4a/MP4Box;, "Lorg/telegram/messenger/audioinfo/m4a/MP4Box<TI;>;"
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->type:Ljava/lang/String;

    return-object v0
.end method

.method public nextChild()Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/audioinfo/m4a/MP4Box;, "Lorg/telegram/messenger/audioinfo/m4a/MP4Box<TI;>;"
    const-wide/16 v2, 0x10

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->child:Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->child:Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip()V

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->data:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    move-result v6

    .local v6, "atomLength":I
    const/4 v1, 0x4

    new-array v8, v1, [B

    .local v8, "typeBytes":[B
    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->data:Ljava/io/DataInput;

    invoke-interface {v1, v8}, Ljava/io/DataInput;->readFully([B)V

    new-instance v7, Ljava/lang/String;

    const-string/jumbo v1, "ISO8859_1"

    invoke-direct {v7, v8, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .local v7, "atomType":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne v6, v1, :cond_1

    new-instance v0, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->input:Lorg/telegram/messenger/audioinfo/util/PositionInputStream;

    iget-object v4, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->data:Ljava/io/DataInput;

    invoke-interface {v4}, Ljava/io/DataInput;->readLong()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;-><init>(Ljava/io/InputStream;JJ)V

    .local v0, "atomInput":Lorg/telegram/messenger/audioinfo/util/RangeInputStream;
    :goto_0
    new-instance v1, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    invoke-direct {v1, v0, p0, v7}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;-><init>(Lorg/telegram/messenger/audioinfo/util/RangeInputStream;Lorg/telegram/messenger/audioinfo/m4a/MP4Box;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->child:Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    return-object v1

    .end local v0    # "atomInput":Lorg/telegram/messenger/audioinfo/util/RangeInputStream;
    :cond_1
    new-instance v0, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->input:Lorg/telegram/messenger/audioinfo/util/PositionInputStream;

    const-wide/16 v2, 0x8

    add-int/lit8 v4, v6, -0x8

    int-to-long v4, v4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;-><init>(Ljava/io/InputStream;JJ)V

    .restart local v0    # "atomInput":Lorg/telegram/messenger/audioinfo/util/RangeInputStream;
    goto :goto_0
.end method

.method public nextChild(Ljava/lang/String;)Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    .locals 4
    .param p1, "expectedTypeExpression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/audioinfo/m4a/MP4Box;, "Lorg/telegram/messenger/audioinfo/m4a/MP4Box<TI;>;"
    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->nextChild()Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v0

    .local v0, "atom":Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "atom type mismatch, expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
